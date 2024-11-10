package com.android.server.desktopmode;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.os.Binder;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class Shell extends ShellCommand {
    public HardwareManager mHwManager;
    public MultiResolutionManager mMultiResolutionManager;
    public ContentResolver mResolver;
    public UiManager mUiManager;

    public Shell(ContentResolver contentResolver, MultiResolutionManager multiResolutionManager, UiManager uiManager, HardwareManager hardwareManager) {
        this.mResolver = contentResolver;
        this.mMultiResolutionManager = multiResolutionManager;
        this.mUiManager = uiManager;
        this.mHwManager = hardwareManager;
    }

    public int onCommand(String str) {
        int multiResolutionManagerCommand;
        if (str == null) {
            return handleDefaultCommands((String) null);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        char c = 65535;
        switch (str.hashCode()) {
            case -1600030548:
                if (str.equals("resolution")) {
                    c = 0;
                    break;
                }
                break;
            case -1048840585:
                if (str.equals("newdex")) {
                    c = 1;
                    break;
                }
                break;
            case -868304044:
                if (str.equals("toggle")) {
                    c = 2;
                    break;
                }
                break;
            case 3551:
                if (str.equals("on")) {
                    c = 3;
                    break;
                }
                break;
            case 3732:
                if (str.equals("ui")) {
                    c = 4;
                    break;
                }
                break;
            case 109935:
                if (str.equals("off")) {
                    c = 5;
                    break;
                }
                break;
            case 1434631203:
                if (str.equals("settings")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                multiResolutionManagerCommand = multiResolutionManagerCommand();
                break;
            case 1:
                multiResolutionManagerCommand = enableNewDex();
                break;
            case 2:
            case 3:
            case 5:
                multiResolutionManagerCommand = this.mHwManager.command(getOutPrintWriter(), str);
                break;
            case 4:
                multiResolutionManagerCommand = uiManagerCommand();
                break;
            case 6:
                multiResolutionManagerCommand = desktopModeSettingsCommand();
                break;
            default:
                multiResolutionManagerCommand = handleDefaultCommands(str);
                break;
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
        return multiResolutionManagerCommand;
    }

    public final int enableNewDex() {
        String nextArg = getNextArg();
        if (nextArg == null) {
            return -1;
        }
        DesktopModeSettings.setSettingsOrThrowException(this.mResolver, "enable_new_dex_home", nextArg);
        return 0;
    }

    public final int uiManagerCommand() {
        char c;
        try {
            String nextArg = getNextArg();
            if (nextArg == null) {
                uiManagerPrintUsage();
                return -1;
            }
            String nextArg2 = getNextArg();
            String nextArg3 = getNextArg();
            if (getNextArg() != null) {
                uiManagerPrintUsage();
                return -1;
            }
            switch (nextArg.hashCode()) {
                case -2118182298:
                    if (nextArg.equals("dismissOverlay")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -1528850031:
                    if (nextArg.equals("startActivity")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1066651761:
                    if (nextArg.equals("removeNotification")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -869293886:
                    if (nextArg.equals("finishActivity")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -788388728:
                    if (nextArg.equals("showNotification")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -703128941:
                    if (nextArg.equals("showOverlay")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -256832398:
                    if (nextArg.equals("dismissDialog")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 343003813:
                    if (nextArg.equals("showDialog")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    this.mUiManager.showDialog(Integer.parseInt(nextArg2), Integer.parseInt(nextArg3), null);
                    return 0;
                case 1:
                    this.mUiManager.dismissDialog(Integer.parseInt(nextArg2), Integer.parseInt(nextArg3));
                    return 0;
                case 2:
                    if (nextArg3 != null) {
                        uiManagerPrintUsage();
                        return -1;
                    }
                    this.mUiManager.showNotification(Integer.parseInt(nextArg2));
                    return 0;
                case 3:
                    this.mUiManager.showOverlay(Integer.parseInt(nextArg2), Integer.parseInt(nextArg3));
                    return 0;
                case 4:
                    this.mUiManager.startActivity(Integer.parseInt(nextArg2), Integer.parseInt(nextArg3), null);
                    return 0;
                case 5:
                    this.mUiManager.dismissOverlay(Integer.parseInt(nextArg2), Integer.parseInt(nextArg3));
                    return 0;
                case 6:
                    if (nextArg3 != null) {
                        uiManagerPrintUsage();
                        return -1;
                    }
                    this.mUiManager.removeNotification(Integer.parseInt(nextArg2));
                    return 0;
                case 7:
                    if (nextArg3 != null) {
                        uiManagerPrintUsage();
                        return -1;
                    }
                    this.mUiManager.finishActivity(Integer.parseInt(nextArg2));
                    return 0;
                default:
                    uiManagerPrintUsage();
                    return 0;
            }
        } catch (IllegalArgumentException unused) {
            uiManagerPrintUsage();
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084 A[Catch: IllegalArgumentException -> 0x00b2, TryCatch #0 {IllegalArgumentException -> 0x00b2, blocks: (B:3:0x0001, B:5:0x000c, B:8:0x001a, B:16:0x0049, B:18:0x004d, B:26:0x007a, B:28:0x007e, B:29:0x0084, B:30:0x005f, B:33:0x006a, B:36:0x008a, B:38:0x00a8, B:40:0x00ac, B:41:0x002e, B:44:0x0039), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008a A[Catch: IllegalArgumentException -> 0x00b2, TryCatch #0 {IllegalArgumentException -> 0x00b2, blocks: (B:3:0x0001, B:5:0x000c, B:8:0x001a, B:16:0x0049, B:18:0x004d, B:26:0x007a, B:28:0x007e, B:29:0x0084, B:30:0x005f, B:33:0x006a, B:36:0x008a, B:38:0x00a8, B:40:0x00ac, B:41:0x002e, B:44:0x0039), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int multiResolutionManagerCommand() {
        /*
            r7 = this;
            r0 = -1
            java.io.PrintWriter r1 = r7.getOutPrintWriter()     // Catch: java.lang.IllegalArgumentException -> Lb2
            java.lang.String r2 = r7.peekNextArg()     // Catch: java.lang.IllegalArgumentException -> Lb2
            r3 = 0
            if (r2 != 0) goto L1a
            com.android.server.desktopmode.MultiResolutionManager r2 = r7.mMultiResolutionManager     // Catch: java.lang.IllegalArgumentException -> Lb2
            com.android.server.desktopmode.MultiResolutionManager$DisplayMetrics r2 = r2.getCustomDisplayMetrics()     // Catch: java.lang.IllegalArgumentException -> Lb2
            r1.println(r2)     // Catch: java.lang.IllegalArgumentException -> Lb2
            r7.multiResolutionManagerPrintUsage()     // Catch: java.lang.IllegalArgumentException -> Lb2
            goto Lb1
        L1a:
            java.lang.String r2 = r7.getNextArg()     // Catch: java.lang.IllegalArgumentException -> Lb2
            int r4 = r2.hashCode()     // Catch: java.lang.IllegalArgumentException -> Lb2
            r5 = -613926062(0xffffffffdb683b52, float:-6.5367418E16)
            r6 = 1
            if (r4 == r5) goto L39
            r5 = 113762(0x1bc62, float:1.59415E-40)
            if (r4 == r5) goto L2e
            goto L44
        L2e:
            java.lang.String r4 = "set"
            boolean r2 = r2.equals(r4)     // Catch: java.lang.IllegalArgumentException -> Lb2
            if (r2 == 0) goto L44
            r2 = r3
            goto L45
        L39:
            java.lang.String r4 = "supportAll"
            boolean r2 = r2.equals(r4)     // Catch: java.lang.IllegalArgumentException -> Lb2
            if (r2 == 0) goto L44
            r2 = r6
            goto L45
        L44:
            r2 = r0
        L45:
            if (r2 == 0) goto L8a
            if (r2 == r6) goto L4d
            r7.multiResolutionManagerPrintUsage()     // Catch: java.lang.IllegalArgumentException -> Lb2
            return r0
        L4d:
            java.lang.String r1 = r7.getNextArgRequired()     // Catch: java.lang.IllegalArgumentException -> Lb2
            int r2 = r1.hashCode()     // Catch: java.lang.IllegalArgumentException -> Lb2
            r4 = 3551(0xddf, float:4.976E-42)
            if (r2 == r4) goto L6a
            r4 = 109935(0x1ad6f, float:1.54052E-40)
            if (r2 == r4) goto L5f
            goto L75
        L5f:
            java.lang.String r2 = "off"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.IllegalArgumentException -> Lb2
            if (r1 == 0) goto L75
            r1 = r6
            goto L76
        L6a:
            java.lang.String r2 = "on"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.IllegalArgumentException -> Lb2
            if (r1 == 0) goto L75
            r1 = r3
            goto L76
        L75:
            r1 = r0
        L76:
            if (r1 == 0) goto L84
            if (r1 == r6) goto L7e
            r7.multiResolutionManagerPrintUsage()     // Catch: java.lang.IllegalArgumentException -> Lb2
            return r0
        L7e:
            com.android.server.desktopmode.MultiResolutionManager r1 = r7.mMultiResolutionManager     // Catch: java.lang.IllegalArgumentException -> Lb2
            r1.setSupportAllResolution(r3)     // Catch: java.lang.IllegalArgumentException -> Lb2
            goto Lb1
        L84:
            com.android.server.desktopmode.MultiResolutionManager r1 = r7.mMultiResolutionManager     // Catch: java.lang.IllegalArgumentException -> Lb2
            r1.setSupportAllResolution(r6)     // Catch: java.lang.IllegalArgumentException -> Lb2
            goto Lb1
        L8a:
            java.lang.String r2 = r7.getNextArgRequired()     // Catch: java.lang.IllegalArgumentException -> Lb2
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.IllegalArgumentException -> Lb2
            java.lang.String r4 = r7.getNextArgRequired()     // Catch: java.lang.IllegalArgumentException -> Lb2
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.IllegalArgumentException -> Lb2
            java.lang.String r5 = r7.getNextArgRequired()     // Catch: java.lang.IllegalArgumentException -> Lb2
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.IllegalArgumentException -> Lb2
            java.lang.String r6 = r7.getNextArg()     // Catch: java.lang.IllegalArgumentException -> Lb2
            if (r6 == 0) goto Lac
            r7.multiResolutionManagerPrintUsage()     // Catch: java.lang.IllegalArgumentException -> Lb2
            return r0
        Lac:
            com.android.server.desktopmode.MultiResolutionManager r6 = r7.mMultiResolutionManager     // Catch: java.lang.IllegalArgumentException -> Lb2
            r6.setCustomResolutionFromAdbCommand(r1, r2, r4, r5)     // Catch: java.lang.IllegalArgumentException -> Lb2
        Lb1:
            return r3
        Lb2:
            r7.multiResolutionManagerPrintUsage()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.desktopmode.Shell.multiResolutionManagerCommand():int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int desktopModeSettingsCommand() {
        char c;
        String nextArg = getNextArg();
        if (nextArg == null) {
            desktopModeSettingsPrintUsage();
            return -1;
        }
        PrintWriter outPrintWriter = getOutPrintWriter();
        String nextArg2 = getNextArg();
        String nextArg3 = getNextArg();
        if (getNextArg() != null) {
            desktopModeSettingsPrintUsage();
            return -1;
        }
        switch (nextArg.hashCode()) {
            case -1335458389:
                if (nextArg.equals("delete")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 102230:
                if (nextArg.equals("get")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 111375:
                if (nextArg.equals("put")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3322014:
                if (nextArg.equals("list")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 94746189:
                if (nextArg.equals("clear")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                if (nextArg3 != null) {
                    desktopModeSettingsPrintUsage();
                    return -1;
                }
                DesktopModeSettings.deleteSettingsOrThrowException(this.mResolver, nextArg2);
                return 0;
            case 1:
                if (nextArg3 != null) {
                    desktopModeSettingsPrintUsage();
                    return -1;
                }
                outPrintWriter.println(DesktopModeSettings.getSettingsOrThrowException(this.mResolver, nextArg2, "null"));
                return 0;
            case 2:
                DesktopModeSettings.setSettingsOrThrowException(this.mResolver, nextArg2, nextArg3);
                return 0;
            case 3:
                if (nextArg2 != null) {
                    desktopModeSettingsPrintUsage();
                    return -1;
                }
                Utils.dumpBundle(outPrintWriter, DesktopModeSettings.getAllSettings(this.mResolver));
                if (ActivityManager.getCurrentUser() != 0) {
                    outPrintWriter.println();
                    outPrintWriter.println("System user (0) settings:");
                    Utils.dumpBundle(outPrintWriter, DesktopModeSettings.getAllSettingsAsUser(this.mResolver, 0));
                }
                return 0;
            case 4:
                if (nextArg2 != null) {
                    desktopModeSettingsPrintUsage();
                    return -1;
                }
                DesktopModeSettings.deleteAllSettingsOrThrowException(this.mResolver);
                return 0;
            default:
                desktopModeSettingsPrintUsage();
                return 0;
        }
    }

    public final void uiManagerPrintUsage() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("USAGE: ui showDialog DISPLAYID TYPE");
        outPrintWriter.println("       ui showNotification TYPE");
        outPrintWriter.println("       ui showOverlay WHERE TYPE");
        outPrintWriter.println("       ui startActivity DISPLAYID TYPE");
        outPrintWriter.println("       ui dismissDialog TYPE");
        outPrintWriter.println("       ui dismissOverlay WHERE TYPE");
        outPrintWriter.println("       ui removeNotification TYPE");
        outPrintWriter.println("       ui finishActivity TYPE");
    }

    public final void desktopModeSettingsPrintUsage() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("USAGE: settings get KEY");
        outPrintWriter.println("       settings put KEY VALUE");
        outPrintWriter.println("       settings delete KEY");
        outPrintWriter.println("       settings clear");
        outPrintWriter.println("       settings list");
    }

    public final void multiResolutionManagerPrintUsage() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("USAGE: resolution");
        outPrintWriter.println("       resolution set WIDTH HEIGHT DENSITY");
        outPrintWriter.println("       resolution supportAll [on|off]");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("DesktopModeService commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("");
        outPrintWriter.println("  on");
        outPrintWriter.println("    Enable desktop mode.");
        outPrintWriter.println("");
        outPrintWriter.println("  off");
        outPrintWriter.println("    Disable desktop mode.");
        outPrintWriter.println("");
        outPrintWriter.println("  toggle");
        outPrintWriter.println("    Toggle desktop mode.");
        outPrintWriter.println("");
        outPrintWriter.println("  settings");
        outPrintWriter.println("    Manage desktop mode settings.");
        outPrintWriter.println("");
        outPrintWriter.println("  resolution");
        outPrintWriter.println("    Manage desktop mode resolution.");
        outPrintWriter.println("");
        outPrintWriter.println("  ui");
        outPrintWriter.println("    Manage desktop mode UI elements.");
    }
}
