/*
 * Copyright (C) 2022-2024 Zoe Knox <zoe@pixin.net>
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#import "WindowServer.h"

int main(int argc, const char *argv[]) {
    pthread_t curShellThread;

    NSAutoreleasePool *pool = [NSAutoreleasePool new];

    while(getopt(argc, argv, "Lxv") != -1) {
        switch(optopt) {
            case 'L': // bypass loginwindow, run desktop for current user
                //curShell = DESKTOP;
                break;
            case 'x': // just run the compositor
                //curShell = NONE;
                break;
            case 'v':
                //logLevel = WS_INFO;
                break;
        }
    }
    [pool drain];

    while(access("/var/run/windowserver", F_OK) != 0)
        sleep(1);

#if 0
    signal(SIGHUP, SIG_IGN);
    signal(SIGINT, SIG_IGN);
    signal(SIGQUIT, SIG_IGN);
    signal(SIGPIPE, SIG_IGN);
    signal(SIGALRM, SIG_IGN);
    signal(SIGCHLD, SIG_IGN);
    signal(SIGTTIN, SIG_IGN);
    signal(SIGTTOU, SIG_IGN);
    signal(SIGTSTP, SIG_IGN);
    signal(SIGUSR1, SIG_IGN);
    signal(SIGUSR2, SIG_IGN);
    signal(SIGTHR, SIG_IGN);
    signal(SIGLIBRT, SIG_IGN);
#endif

    //pthread_create(&curShellThread, NULL, launchShell, &curShell);

    //setresgid(videoGID, videoGID, 0);
    //setresuid(nobodyUID, nobodyUID, 0);

    WindowServer *ws = [WindowServer new];
    [ws run];
    ws = nil;

    exit(0);
}
