package com.android.server.content;

import android.content.IContentService;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class ContentShellCommand extends ShellCommand {
    public final IContentService mInterface;

    public ContentShellCommand(IContentService iContentService) {
        this.mInterface = iContentService;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024 A[Catch: RemoteException -> 0x002e, TryCatch #0 {RemoteException -> 0x002e, blocks: (B:7:0x000c, B:12:0x0024, B:14:0x0029, B:16:0x0016), top: B:6:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0029 A[Catch: RemoteException -> 0x002e, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x002e, blocks: (B:7:0x000c, B:12:0x0024, B:14:0x0029, B:16:0x0016), top: B:6:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r5) {
        /*
            r4 = this;
            if (r5 != 0) goto L7
            int r4 = r4.handleDefaultCommands(r5)
            return r4
        L7:
            java.io.PrintWriter r0 = r4.getOutPrintWriter()
            r1 = -1
            int r2 = r5.hashCode()     // Catch: android.os.RemoteException -> L2e
            r3 = -796331115(0xffffffffd088f395, float:-1.83813181E10)
            if (r2 == r3) goto L16
            goto L21
        L16:
            java.lang.String r2 = "reset-today-stats"
            boolean r2 = r5.equals(r2)     // Catch: android.os.RemoteException -> L2e
            if (r2 == 0) goto L21
            r2 = 0
            goto L22
        L21:
            r2 = r1
        L22:
            if (r2 == 0) goto L29
            int r4 = r4.handleDefaultCommands(r5)     // Catch: android.os.RemoteException -> L2e
            return r4
        L29:
            int r4 = r4.runResetTodayStats()     // Catch: android.os.RemoteException -> L2e
            return r4
        L2e:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r2 = "Remote exception: "
            r5.append(r2)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            r0.println(r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.ContentShellCommand.onCommand(java.lang.String):int");
    }

    public final int runResetTodayStats() {
        this.mInterface.resetTodayStats();
        return 0;
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Content service commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("");
        outPrintWriter.println("  reset-today-stats");
        outPrintWriter.println("    Reset 1-day sync stats.");
        outPrintWriter.println();
    }
}
