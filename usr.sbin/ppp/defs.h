/*
 *	    Written by Toshiharu OHNO (tony-o@iij.ad.jp)
 *
 *   Copyright (C) 1993, Internet Initiative Japan, Inc. All rights reserverd.
 *
 * Redistribution and use in source and binary forms are permitted
 * provided that the above copyright notice and this paragraph are
 * duplicated in all such forms and that any documentation,
 * advertising materials, and other materials related to such
 * distribution and use acknowledge that the software was developed
 * by the Internet Initiative Japan.  The name of the
 * IIJ may not be used to endorse or promote products derived
 * from this software without specific prior written permission.
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
 * WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 * $Id: defs.h,v 1.29.2.8 1998/04/03 19:21:19 brian Exp $
 *
 *	TODO:
 */

/* Check the following definitions for your machine environment */
#ifdef __FreeBSD__
# define  MODEM_LIST	"/dev/cuaa1, /dev/cuaa0"	/* name of tty device */
#else
# ifdef __OpenBSD__
#  define MODEM_LIST	"/dev/cua01, /dev/cua00"	/* name of tty device */
# else
#  define MODEM_LIST	"/dev/tty01, /dev/tty00"	/* name of tty device */
# endif
#endif

#define MODEM_SPEED	B38400	/* tty speed */
#define	SERVER_PORT	3000	/* Base server port no. */
#define	MODEM_CTSRTS	1	/* Default (true): use CTS/RTS signals */
#define	RECONNECT_TIMEOUT 3	/* Default timer for carrier loss */
#define	DIAL_TIMEOUT	30	/* Default and Max random time to redial */
#define	DIAL_NEXT_TIMEOUT 3	/* Default Hold time to next number redial */
#define SCRIPT_LEN 512		/* Size of login scripts */
#define LINE_LEN SCRIPT_LEN 	/* Size of login scripts */
#define MAXARGS 40		/* How many args per config line */
#define NCP_IDLE_TIMEOUT 180		/* Drop all links */

#define LINK_MINWEIGHT 20
#define DEF_LQRPERIOD 30	/* LQR frequency */
#define DEF_FSMRETRY 3		/* FSM retry frequency */

#define	CONFFILE 	"ppp.conf"
#define	LINKUPFILE 	"ppp.linkup"
#define	LINKDOWNFILE 	"ppp.linkdown"
#define	SECRETFILE	"ppp.secret"

/*
 *  Definition of working mode
 */
#define MODE_INTER	1	/* Interactive mode */
#define MODE_AUTO	2	/* Auto calling mode */
#define	MODE_DIRECT	4	/* Direct connection mode */
#define	MODE_DEDICATED	8	/* Dedicated line mode */
#define	MODE_DDIAL	16	/* Dedicated dialing line mode */
#define	MODE_ALIAS	32	/* Packet aliasing (masquerading) */
#define MODE_BACKGROUND 64	/* Background mode. */

#define MODE_DAEMON (2|4|8|16|64)
#define MODE_OUTGOING_DAEMON (2|8|16|64)

#define	EX_SIG		-1
#define	EX_NORMAL	0
#define	EX_START	1
#define	EX_SOCK		2
#define	EX_MODEM	3
#define	EX_DIAL		4
#define	EX_DEAD		5
#define	EX_DONE		6
#define	EX_REBOOT	7
#define	EX_ERRDEAD	8
#define	EX_HANGUP	10
#define	EX_TERM		11
#define EX_NODIAL	12
#define EX_NOLOGIN	13

extern int mode;

extern void SetLabel(const char *);
extern const char *GetLabel(void);
extern void randinit(void);
extern int GetShortHost(void);
