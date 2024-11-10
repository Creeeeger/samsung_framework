package com.android.server.biometrics.sensors.face;

import android.os.ShellCommand;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class FaceShellCommand extends ShellCommand {
    public final FaceService mService;

    public FaceShellCommand(FaceService faceService) {
        this.mService = faceService;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f A[Catch: Exception -> 0x0054, TRY_LEAVE, TryCatch #0 {Exception -> 0x0054, blocks: (B:8:0x0008, B:16:0x0031, B:18:0x004a, B:20:0x004f, B:22:0x0017, B:25:0x0022), top: B:7:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 1
            if (r5 != 0) goto L7
            r4.onHelp()
            return r0
        L7:
            r1 = -1
            int r2 = r5.hashCode()     // Catch: java.lang.Exception -> L54
            r3 = 3198785(0x30cf41, float:4.482453E-39)
            if (r2 == r3) goto L22
            r3 = 3545755(0x361a9b, float:4.968661E-39)
            if (r2 == r3) goto L17
            goto L2c
        L17:
            java.lang.String r2 = "sync"
            boolean r2 = r5.equals(r2)     // Catch: java.lang.Exception -> L54
            if (r2 == 0) goto L2c
            r2 = r0
            goto L2d
        L22:
            java.lang.String r2 = "help"
            boolean r2 = r5.equals(r2)     // Catch: java.lang.Exception -> L54
            if (r2 == 0) goto L2c
            r2 = 0
            goto L2d
        L2c:
            r2 = r1
        L2d:
            if (r2 == 0) goto L4f
            if (r2 == r0) goto L4a
            java.io.PrintWriter r0 = r4.getOutPrintWriter()     // Catch: java.lang.Exception -> L54
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L54
            r2.<init>()     // Catch: java.lang.Exception -> L54
            java.lang.String r3 = "Unrecognized command: "
            r2.append(r3)     // Catch: java.lang.Exception -> L54
            r2.append(r5)     // Catch: java.lang.Exception -> L54
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Exception -> L54
            r0.println(r5)     // Catch: java.lang.Exception -> L54
            goto L6d
        L4a:
            int r4 = r4.doSync()     // Catch: java.lang.Exception -> L54
            return r4
        L4f:
            int r4 = r4.doHelp()     // Catch: java.lang.Exception -> L54
            return r4
        L54:
            r5 = move-exception
            java.io.PrintWriter r4 = r4.getOutPrintWriter()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Exception: "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r4.println(r5)
        L6d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.biometrics.sensors.face.FaceShellCommand.onCommand(java.lang.String):int");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Face Service commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("      Print this help text.");
        outPrintWriter.println("  sync");
        outPrintWriter.println("      Sync enrollments now (virtualized sensors only).");
    }

    public final int doHelp() {
        onHelp();
        return 0;
    }

    public final int doSync() {
        this.mService.syncEnrollmentsNow();
        return 0;
    }
}
