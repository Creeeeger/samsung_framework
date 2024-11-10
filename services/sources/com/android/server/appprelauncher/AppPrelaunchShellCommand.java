package com.android.server.appprelauncher;

import android.app.ActivityManager;
import android.content.pm.PackageManagerInternal;
import android.os.ShellCommand;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.LocalServices;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class AppPrelaunchShellCommand extends ShellCommand {
    public final AppPrelaunchService mService;

    public AppPrelaunchShellCommand(AppPrelaunchService appPrelaunchService) {
        this.mService = appPrelaunchService;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[Catch: Exception -> 0x0042, TRY_LEAVE, TryCatch #0 {Exception -> 0x0042, blocks: (B:7:0x0008, B:15:0x0033, B:17:0x0038, B:19:0x003d, B:21:0x0018, B:24:0x0023), top: B:6:0x0008 }] */
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
            r0 = -1
            int r1 = r5.hashCode()     // Catch: java.lang.Exception -> L42
            r2 = -1125838826(0xffffffffbce51016, float:-0.027961772)
            r3 = 1
            if (r1 == r2) goto L23
            r2 = 3291998(0x323b5e, float:4.613072E-39)
            if (r1 == r2) goto L18
            goto L2e
        L18:
            java.lang.String r1 = "kill"
            boolean r1 = r5.equals(r1)     // Catch: java.lang.Exception -> L42
            if (r1 == 0) goto L2e
            r1 = r3
            goto L2f
        L23:
            java.lang.String r1 = "prelaunch"
            boolean r1 = r5.equals(r1)     // Catch: java.lang.Exception -> L42
            if (r1 == 0) goto L2e
            r1 = 0
            goto L2f
        L2e:
            r1 = r0
        L2f:
            if (r1 == 0) goto L3d
            if (r1 == r3) goto L38
            int r4 = r4.handleDefaultCommands(r5)     // Catch: java.lang.Exception -> L42
            return r4
        L38:
            int r4 = r4.kill()     // Catch: java.lang.Exception -> L42
            return r4
        L3d:
            int r4 = r4.prelaunch()     // Catch: java.lang.Exception -> L42
            return r4
        L42:
            r5 = move-exception
            java.io.PrintWriter r4 = r4.getErrPrintWriter()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to use prelauncher: "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            r4.println(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.appprelauncher.AppPrelaunchShellCommand.onCommand(java.lang.String):int");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("AppPrelauncher (prelauncher) commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help message.");
        outPrintWriter.println("");
        outPrintWriter.println("  prelaunch PACKAGE [--uid UID] [--stage STAGE] [--debug]");
        outPrintWriter.println("    Runs PACKAGE for UID in background until STAGE if specified");
        outPrintWriter.println("  kill PACKAGE [--uid UID]");
        outPrintWriter.println("    Kills PACKAGE for UID if it is still prelaunched");
        outPrintWriter.println("");
    }

    /* loaded from: classes.dex */
    public class Args {
        public String packageName;
        public int stage;
        public int uid;

        public Args() {
            this.stage = 40;
            this.uid = -1;
        }
    }

    public final Args parseOptions() {
        Args args = new Args();
        while (true) {
            String nextArg = getNextArg();
            if (nextArg == null) {
                return args;
            }
            if (nextArg.equals("--stage")) {
                args.stage = Integer.parseInt(getNextArgRequired());
            } else if (nextArg.equals("--uid")) {
                args.uid = Integer.parseInt(getNextArgRequired());
            } else {
                if (args.packageName != null) {
                    throw new IllegalArgumentException("Unknown option '" + nextArg + "'");
                }
                args.packageName = nextArg;
            }
        }
    }

    public final Args prepareArgs() {
        Args parseOptions = parseOptions();
        String str = parseOptions.packageName;
        if (str == null) {
            throw new IllegalArgumentException("Package name is not specified");
        }
        if (parseOptions.uid == -1) {
            parseOptions.uid = getUid(str);
        }
        return parseOptions;
    }

    public final int getUid(String str) {
        int packageUid = ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackageUid(str, 0L, ActivityManager.getCurrentUser());
        if (packageUid != -1) {
            return packageUid;
        }
        throw new IllegalArgumentException("Package '" + str + "' not found for userId " + ActivityManager.getCurrentUser());
    }

    public int prelaunch() {
        try {
            Args prepareArgs = prepareArgs();
            getOutPrintWriter().println(prepareArgs.packageName + XmlUtils.STRING_ARRAY_SEPARATOR + prepareArgs.uid + ", " + prepareArgs.stage);
            if (this.mService.prelaunchAppTillStage(prepareArgs.packageName, prepareArgs.uid, prepareArgs.stage)) {
                return 0;
            }
            getErrPrintWriter().println("Error: could not prelaunch " + prepareArgs.packageName);
            return 1;
        } catch (IllegalArgumentException e) {
            getErrPrintWriter().println("Error: cannot parse arguments (" + e + ")");
            return 1;
        }
    }

    public int kill() {
        try {
            Args prepareArgs = prepareArgs();
            PrintWriter outPrintWriter = getOutPrintWriter();
            outPrintWriter.println("Killing " + prepareArgs.packageName + XmlUtils.STRING_ARRAY_SEPARATOR + prepareArgs.uid);
            if (!this.mService.killApp(prepareArgs.uid, "Killed from shell")) {
                getErrPrintWriter().println("Error: app " + prepareArgs.packageName + XmlUtils.STRING_ARRAY_SEPARATOR + prepareArgs.uid + " was not killed");
                return 1;
            }
            outPrintWriter.println("Success");
            return 0;
        } catch (IllegalArgumentException e) {
            getErrPrintWriter().println("Error: cannot parse arguments (" + e + ")");
            return 1;
        }
    }
}
