package com.android.server.dreams;

import android.os.Binder;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class DreamShellCommand extends ShellCommand {
    public final DreamManagerService mService;

    public DreamShellCommand(DreamManagerService dreamManagerService) {
        this.mService = dreamManagerService;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050 A[Catch: SecurityException -> 0x0058, TRY_LEAVE, TryCatch #0 {SecurityException -> 0x0058, blocks: (B:3:0x0018, B:11:0x0043, B:14:0x0048, B:16:0x0050, B:18:0x0028, B:21:0x0033), top: B:2:0x0018 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "onCommand:"
            r0.append(r1)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "DreamShellCommand"
            android.util.Slog.d(r1, r0)
            r0 = -1
            int r1 = r5.hashCode()     // Catch: java.lang.SecurityException -> L58
            r2 = -183711126(0xfffffffff50cca6a, float:-1.7847339E32)
            r3 = 1
            if (r1 == r2) goto L33
            r2 = 1473640970(0x57d5fa0a, float:4.70539773E14)
            if (r1 == r2) goto L28
            goto L3e
        L28:
            java.lang.String r1 = "start-dreaming"
            boolean r1 = r5.equals(r1)     // Catch: java.lang.SecurityException -> L58
            if (r1 == 0) goto L3e
            r1 = 0
            goto L3f
        L33:
            java.lang.String r1 = "stop-dreaming"
            boolean r1 = r5.equals(r1)     // Catch: java.lang.SecurityException -> L58
            if (r1 == 0) goto L3e
            r1 = r3
            goto L3f
        L3e:
            r1 = r0
        L3f:
            if (r1 == 0) goto L50
            if (r1 == r3) goto L48
            int r4 = super.handleDefaultCommands(r5)     // Catch: java.lang.SecurityException -> L58
            return r4
        L48:
            r4.enforceCallerIsRoot()     // Catch: java.lang.SecurityException -> L58
            int r4 = r4.stopDreaming()     // Catch: java.lang.SecurityException -> L58
            return r4
        L50:
            r4.enforceCallerIsRoot()     // Catch: java.lang.SecurityException -> L58
            int r4 = r4.startDreaming()     // Catch: java.lang.SecurityException -> L58
            return r4
        L58:
            r5 = move-exception
            java.io.PrintWriter r4 = r4.getOutPrintWriter()
            r4.println(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.dreams.DreamShellCommand.onCommand(java.lang.String):int");
    }

    public final int startDreaming() {
        this.mService.requestStartDreamFromShell();
        return 0;
    }

    public final int stopDreaming() {
        this.mService.requestStopDreamFromShell();
        return 0;
    }

    public final void enforceCallerIsRoot() {
        if (Binder.getCallingUid() != 0) {
            throw new SecurityException("Must be root to call Dream shell commands");
        }
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Dream manager (dreams) commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("      Print this help text.");
        outPrintWriter.println("  start-dreaming");
        outPrintWriter.println("      Start the currently configured dream.");
        outPrintWriter.println("  stop-dreaming");
        outPrintWriter.println("      Stops any active dream");
    }
}
