//===-- RISCVSubtarget.h - Define Subtarget for the RISC-V ------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file declares the RISC-V specific subclass of TargetSubtargetInfo.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_RISCV_RISCVSUBTARGET_H
#define LLVM_LIB_TARGET_RISCV_RISCVSUBTARGET_H

#include "MCTargetDesc/RISCVBaseInfo.h"
#include "RISCVFrameLowering.h"
#include "RISCVISelLowering.h"
#include "RISCVInstrInfo.h"
#include "llvm/CodeGen/GlobalISel/CallLowering.h"
#include "llvm/CodeGen/GlobalISel/InstructionSelector.h"
#include "llvm/CodeGen/GlobalISel/LegalizerInfo.h"
#include "llvm/CodeGen/RegisterBankInfo.h"
#include "llvm/CodeGen/SelectionDAGTargetInfo.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Target/TargetMachine.h"
#include <bitset>

#define GET_SUBTARGETINFO_HEADER
#include "RISCVGenSubtargetInfo.inc"

namespace llvm {
class StringRef;

namespace RISCVTuneInfoTable {

struct RISCVTuneInfo {
  const char *Name;
  uint8_t PrefFunctionAlignment;
  uint8_t PrefLoopAlignment;

  // Information needed by LoopDataPrefetch.
  uint16_t CacheLineSize;
  uint16_t PrefetchDistance;
  uint16_t MinPrefetchStride;
  unsigned MaxPrefetchIterationsAhead;

  unsigned MinimumJumpTableEntries;
};

#define GET_RISCVTuneInfoTable_DECL
#include "RISCVGenSearchableTables.inc"
} // namespace RISCVTuneInfoTable

class RISCVSubtarget : public RISCVGenSubtargetInfo {
public:
  // clang-format off
  enum RISCVProcFamilyEnum : uint8_t {
    Others,
    SiFive7,
    VentanaVeyron,
  };
  // clang-format on
private:
  virtual void anchor();

  RISCVProcFamilyEnum RISCVProcFamily = Others;

#define GET_SUBTARGETINFO_MACRO(ATTRIBUTE, DEFAULT, GETTER) \
  bool ATTRIBUTE = DEFAULT;
#include "RISCVGenSubtargetInfo.inc"

  unsigned ZvlLen = 0;
  unsigned RVVVectorBitsMin;
  unsigned RVVVectorBitsMax;
  uint8_t MaxInterleaveFactor = 2;
  RISCVABI::ABI TargetABI = RISCVABI::ABI_Unknown;
  std::bitset<RISCV::NUM_TARGET_REGS> UserReservedRegister;
  const RISCVTuneInfoTable::RISCVTuneInfo *TuneInfo;

  RISCVFrameLowering FrameLowering;
  RISCVInstrInfo InstrInfo;
  RISCVRegisterInfo RegInfo;
  RISCVTargetLowering TLInfo;
  SelectionDAGTargetInfo TSInfo;

  /// Initializes using the passed in CPU and feature strings so that we can
  /// use initializer lists for subtarget initialization.
  RISCVSubtarget &initializeSubtargetDependencies(const Triple &TT,
                                                  StringRef CPU,
                                                  StringRef TuneCPU,
                                                  StringRef FS,
                                                  StringRef ABIName);

public:
  // Initializes the data members to match that of the specified triple.
  RISCVSubtarget(const Triple &TT, StringRef CPU, StringRef TuneCPU,
                 StringRef FS, StringRef ABIName, unsigned RVVVectorBitsMin,
                 unsigned RVVVectorLMULMax, const TargetMachine &TM);

  // Parses features string setting specified subtarget options. The
  // definition of this function is auto-generated by tblgen.
  void ParseSubtargetFeatures(StringRef CPU, StringRef TuneCPU, StringRef FS);

  const RISCVFrameLowering *getFrameLowering() const override {
    return &FrameLowering;
  }
  const RISCVInstrInfo *getInstrInfo() const override { return &InstrInfo; }
  const RISCVRegisterInfo *getRegisterInfo() const override {
    return &RegInfo;
  }
  const RISCVTargetLowering *getTargetLowering() const override {
    return &TLInfo;
  }
  const SelectionDAGTargetInfo *getSelectionDAGInfo() const override {
    return &TSInfo;
  }
  bool enableMachineScheduler() const override { return true; }

  bool enablePostRAScheduler() const override {
    return getSchedModel().PostRAScheduler || UsePostRAScheduler;
  }

  Align getPrefFunctionAlignment() const {
    return Align(TuneInfo->PrefFunctionAlignment);
  }
  Align getPrefLoopAlignment() const {
    return Align(TuneInfo->PrefLoopAlignment);
  }

  /// Returns RISC-V processor family.
  /// Avoid this function! CPU specifics should be kept local to this class
  /// and preferably modeled with SubtargetFeatures or properties in
  /// initializeProperties().
  RISCVProcFamilyEnum getProcFamily() const { return RISCVProcFamily; }

#define GET_SUBTARGETINFO_MACRO(ATTRIBUTE, DEFAULT, GETTER) \
  bool GETTER() const { return ATTRIBUTE; }
#include "RISCVGenSubtargetInfo.inc"

  bool hasStdExtCOrZca() const { return HasStdExtC || HasStdExtZca; }
  bool hasStdExtZvl() const { return ZvlLen != 0; }
  bool hasStdExtFOrZfinx() const { return HasStdExtF || HasStdExtZfinx; }
  bool hasStdExtDOrZdinx() const { return HasStdExtD || HasStdExtZdinx; }
  bool hasStdExtZfhOrZhinx() const { return HasStdExtZfh || HasStdExtZhinx; }
  bool hasStdExtZfhminOrZhinxmin() const {
    return HasStdExtZfhmin || HasStdExtZhinxmin;
  }
  bool hasHalfFPLoadStoreMove() const {
    return HasStdExtZfhmin || HasStdExtZfbfmin;
  }

  bool hasConditionalMoveFusion() const {
    // Do we support fusing a branch+mv or branch+c.mv as a conditional move.
    return (hasConditionalCompressedMoveFusion() && hasStdExtCOrZca()) ||
           hasShortForwardBranchOpt();
  }

  bool is64Bit() const { return IsRV64; }
  MVT getXLenVT() const {
    return is64Bit() ? MVT::i64 : MVT::i32;
  }
  unsigned getXLen() const {
    return is64Bit() ? 64 : 32;
  }
  unsigned getFLen() const {
    if (HasStdExtD)
      return 64;

    if (HasStdExtF)
      return 32;

    return 0;
  }
  unsigned getELen() const {
    assert(hasVInstructions() && "Expected V extension");
    return hasVInstructionsI64() ? 64 : 32;
  }
  unsigned getRealMinVLen() const {
    unsigned VLen = getMinRVVVectorSizeInBits();
    return VLen == 0 ? ZvlLen : VLen;
  }
  unsigned getRealMaxVLen() const {
    unsigned VLen = getMaxRVVVectorSizeInBits();
    return VLen == 0 ? 65536 : VLen;
  }
  RISCVABI::ABI getTargetABI() const { return TargetABI; }
  bool isSoftFPABI() const {
    return TargetABI == RISCVABI::ABI_LP64 ||
           TargetABI == RISCVABI::ABI_ILP32 ||
           TargetABI == RISCVABI::ABI_ILP32E;
  }
  bool isRegisterReservedByUser(Register i) const {
    assert(i < RISCV::NUM_TARGET_REGS && "Register out of range");
    return UserReservedRegister[i];
  }

  bool hasMacroFusion() const {
    return hasLUIADDIFusion() || hasAUIPCADDIFusion() || hasZExtHFusion() ||
           hasZExtWFusion() || hasShiftedZExtWFusion() || hasLDADDFusion();
  }

  // Vector codegen related methods.
  bool hasVInstructions() const { return HasStdExtZve32x; }
  bool hasVInstructionsI64() const { return HasStdExtZve64x; }
  bool hasVInstructionsF16Minimal() const { return HasStdExtZvfhmin; }
  bool hasVInstructionsF16() const { return HasStdExtZvfh; }
  bool hasVInstructionsBF16() const { return HasStdExtZvfbfmin; }
  bool hasVInstructionsF32() const { return HasStdExtZve32f; }
  bool hasVInstructionsF64() const { return HasStdExtZve64d; }
  // F16 and F64 both require F32.
  bool hasVInstructionsAnyF() const { return hasVInstructionsF32(); }
  bool hasVInstructionsFullMultiply() const { return HasStdExtV; }
  unsigned getMaxInterleaveFactor() const {
    return hasVInstructions() ? MaxInterleaveFactor : 1;
  }

  // Returns VLEN divided by DLEN. Where DLEN is the datapath width of the
  // vector hardware implementation which may be less than VLEN.
  unsigned getDLenFactor() const {
    if (DLenFactor2)
      return 2;
    return 1;
  }

protected:
  // GlobalISel related APIs.
  std::unique_ptr<CallLowering> CallLoweringInfo;
  std::unique_ptr<InstructionSelector> InstSelector;
  std::unique_ptr<LegalizerInfo> Legalizer;
  std::unique_ptr<RegisterBankInfo> RegBankInfo;

  // Return the known range for the bit length of RVV data registers as set
  // at the command line. A value of 0 means nothing is known about that particular
  // limit beyond what's implied by the architecture.
  // NOTE: Please use getRealMinVLen and getRealMaxVLen instead!
  unsigned getMaxRVVVectorSizeInBits() const;
  unsigned getMinRVVVectorSizeInBits() const;

public:
  const CallLowering *getCallLowering() const override;
  InstructionSelector *getInstructionSelector() const override;
  const LegalizerInfo *getLegalizerInfo() const override;
  const RegisterBankInfo *getRegBankInfo() const override;

  bool isTargetFuchsia() const { return getTargetTriple().isOSFuchsia(); }

  bool useConstantPoolForLargeInts() const;

  // Maximum cost used for building integers, integers will be put into constant
  // pool if exceeded.
  unsigned getMaxBuildIntsCost() const;

  unsigned getMaxLMULForFixedLengthVectors() const;
  bool useRVVForFixedLengthVectors() const;

  bool enableSubRegLiveness() const override;

  void getPostRAMutations(std::vector<std::unique_ptr<ScheduleDAGMutation>>
                              &Mutations) const override;

  bool useAA() const override;

  unsigned getCacheLineSize() const override {
    return TuneInfo->CacheLineSize;
  };
  unsigned getPrefetchDistance() const override {
    return TuneInfo->PrefetchDistance;
  };
  unsigned getMinPrefetchStride(unsigned NumMemAccesses,
                                unsigned NumStridedMemAccesses,
                                unsigned NumPrefetches,
                                bool HasCall) const override {
    return TuneInfo->MinPrefetchStride;
  };
  unsigned getMaxPrefetchIterationsAhead() const override {
    return TuneInfo->MaxPrefetchIterationsAhead;
  };

  unsigned getMinimumJumpTableEntries() const;
};
} // End llvm namespace

#endif
