package com.android.server.aod;

import android.content.Context;
import android.content.Intent;
import android.os.ShellCommand;
import android.os.UserHandle;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class AODManagerShellCommand extends ShellCommand {
    public Context mContext;

    public final String infoToString(int i) {
        switch (i) {
            case 8:
                return "tap to show(8)";
            case 9:
                return "press(9)";
            case 10:
                return "long pres(10)";
            case 11:
                return "double tap(11)";
            default:
                return "";
        }
    }

    public AODManagerShellCommand(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050 A[Catch: Exception -> 0x0054, TRY_LEAVE, TryCatch #0 {Exception -> 0x0054, blocks: (B:7:0x0008, B:15:0x0033, B:17:0x004c, B:18:0x0050, B:19:0x0019, B:22:0x0023), top: B:6:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L7
            int r5 = r5.handleDefaultCommands(r6)
            return r5
        L7:
            r0 = -1
            int r1 = r6.hashCode()     // Catch: java.lang.Exception -> L54
            r2 = 115153(0x1c1d1, float:1.61364E-40)
            r3 = 0
            r4 = 1
            if (r1 == r2) goto L23
            r2 = 3198785(0x30cf41, float:4.482453E-39)
            if (r1 == r2) goto L19
            goto L2e
        L19:
            java.lang.String r1 = "help"
            boolean r1 = r6.equals(r1)     // Catch: java.lang.Exception -> L54
            if (r1 == 0) goto L2e
            r1 = r4
            goto L2f
        L23:
            java.lang.String r1 = "tsp"
            boolean r1 = r6.equals(r1)     // Catch: java.lang.Exception -> L54
            if (r1 == 0) goto L2e
            r1 = r3
            goto L2f
        L2e:
            r1 = r0
        L2f:
            if (r1 == 0) goto L50
            if (r1 == r4) goto L4c
            java.io.PrintWriter r1 = r5.getErrPrintWriter()     // Catch: java.lang.Exception -> L54
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L54
            r2.<init>()     // Catch: java.lang.Exception -> L54
            java.lang.String r4 = "Unknown command: "
            r2.append(r4)     // Catch: java.lang.Exception -> L54
            r2.append(r6)     // Catch: java.lang.Exception -> L54
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L54
            r1.println(r2)     // Catch: java.lang.Exception -> L54
            goto L53
        L4c:
            r5.onHelp()     // Catch: java.lang.Exception -> L54
            goto L53
        L50:
            r5.runTspEvent()     // Catch: java.lang.Exception -> L54
        L53:
            return r3
        L54:
            r1 = move-exception
            java.io.PrintWriter r2 = r5.getErrPrintWriter()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Error while executing command: "
            r3.append(r4)
            r3.append(r6)
            java.lang.String r6 = r3.toString()
            r2.println(r6)
            java.io.PrintWriter r5 = r5.getErrPrintWriter()
            r1.printStackTrace(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.aod.AODManagerShellCommand.onCommand(java.lang.String):int");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        try {
            outPrintWriter.println("aod service commands:");
            outPrintWriter.println("");
            outPrintWriter.println("NOTE: when aod is shown, the command should should be executed, and -user USER_ID is optional argument.");
            outPrintWriter.println("  help");
            outPrintWriter.println("    Prints this help text.");
            outPrintWriter.println("");
            outPrintWriter.println("  tsp [ACTION_INFO] [-x X_POSITION] [-y Y_POSITION] [-user USER_ID]");
            outPrintWriter.println("    Send tsp event with the below arguments.");
            outPrintWriter.println("      ACTION_INFO");
            outPrintWriter.println("          8  : tap to show");
            outPrintWriter.println("          9  : press");
            outPrintWriter.println("          10 : long press");
            outPrintWriter.println("          11 : double tap");
            outPrintWriter.println("      X_POSITION : x position with integer value");
            outPrintWriter.println("      Y_POSITION : x position with integer value");
            outPrintWriter.println("      USER_ID : user id (optional argument");
            outPrintWriter.println("");
            outPrintWriter.close();
        } catch (Throwable th) {
            if (outPrintWriter != null) {
                try {
                    outPrintWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final void runTspEvent() {
        int parseInt = Integer.parseInt(getNextArgRequired());
        UserHandle userHandle = UserHandle.CURRENT;
        switch (parseInt) {
            case 8:
            case 9:
            case 10:
            case 11:
                int i = 0;
                int i2 = 0;
                while (true) {
                    String nextOption = getNextOption();
                    if (nextOption != null) {
                        if ("-x".equals(nextOption)) {
                            i = Integer.parseInt(getNextArgRequired());
                        } else if ("-y".equals(nextOption)) {
                            i2 = Integer.parseInt(getNextArgRequired());
                        } else if ("-user".equals(nextOption)) {
                            userHandle = new UserHandle(Integer.parseInt(getNextArgRequired()));
                        } else {
                            getErrPrintWriter().println("Unknown option: " + nextOption);
                            throw new IllegalArgumentException();
                        }
                    } else {
                        getOutPrintWriter().println("aod service commands: runTspEvent : info: " + infoToString(parseInt) + " , x: " + i + " , y: " + i2 + " , userId: " + userHandle.toString());
                        Intent intent = new Intent("com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE");
                        intent.putExtra("info", parseInt);
                        intent.putExtra("location", new float[]{(float) i, (float) i2});
                        intent.addFlags(32);
                        this.mContext.sendBroadcastAsUser(intent, userHandle, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER");
                        return;
                    }
                }
            default:
                getErrPrintWriter().println("Unknown ACTION_INFO: " + parseInt);
                throw new IllegalArgumentException();
        }
    }
}
