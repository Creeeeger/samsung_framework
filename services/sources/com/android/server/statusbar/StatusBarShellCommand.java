package com.android.server.statusbar;

import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.service.quicksettings.TileService;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class StatusBarShellCommand extends ShellCommand {
    public static final IBinder sToken = new StatusBarShellCommandToken();
    public final Context mContext;
    public final StatusBarManagerService mInterface;

    public StatusBarShellCommand(StatusBarManagerService statusBarManagerService, Context context) {
        this.mInterface = statusBarManagerService;
        this.mContext = context;
    }

    public int onCommand(String str) {
        char c = 1;
        if (str == null) {
            onHelp();
            return 1;
        }
        try {
            switch (str.hashCode()) {
                case -1282000806:
                    if (str.equals("add-tile")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1239176554:
                    if (str.equals("get-status-icons")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -1067396926:
                    if (str.equals("tracing")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -1052548778:
                    if (str.equals("send-disable-flag")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -919868578:
                    if (str.equals("run-gc")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -823073837:
                    if (str.equals("click-tile")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -632085587:
                    if (str.equals("collapse")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -339726761:
                    if (str.equals("remove-tile")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1499:
                    if (str.equals("-h")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 3095028:
                    if (str.equals("dump")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 3198785:
                    if (str.equals("help")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 901899220:
                    if (str.equals("disable-for-setup")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1612300298:
                    if (str.equals("check-support")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1629310709:
                    if (str.equals("expand-notifications")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1672031734:
                    if (str.equals("expand-settings")) {
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
                    return runExpandNotifications();
                case 1:
                    return runExpandSettings();
                case 2:
                    return runCollapse();
                case 3:
                    return runAddTile();
                case 4:
                    return runRemoveTile();
                case 5:
                    return runClickTile();
                case 6:
                    getOutPrintWriter().println(String.valueOf(TileService.isQuickSettingsSupported()));
                    return 0;
                case 7:
                    return runGetStatusIcons();
                case '\b':
                    return runDisableForSetup();
                case '\t':
                    return runSendDisableFlag();
                case '\n':
                    return runTracing();
                case 11:
                    return runGc();
                case '\f':
                case '\r':
                    onHelp();
                    return 0;
                case 14:
                    return super.handleDefaultCommands(str);
                default:
                    return runPassArgsToStatusBar();
            }
        } catch (RemoteException e) {
            getOutPrintWriter().println("Remote exception: " + e);
            return -1;
        }
    }

    public final int runAddTile() {
        this.mInterface.addTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    public final int runRemoveTile() {
        this.mInterface.remTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    public final int runClickTile() {
        this.mInterface.clickTile(ComponentName.unflattenFromString(getNextArgRequired()));
        return 0;
    }

    public final int runCollapse() {
        this.mInterface.collapsePanels();
        return 0;
    }

    public final int runExpandSettings() {
        this.mInterface.expandSettingsPanel(null);
        return 0;
    }

    public final int runExpandNotifications() {
        this.mInterface.expandNotificationsPanel();
        return 0;
    }

    public final int runGetStatusIcons() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        for (String str : this.mInterface.getStatusBarIcons()) {
            outPrintWriter.println(str);
        }
        return 0;
    }

    public final int runDisableForSetup() {
        String nextArgRequired = getNextArgRequired();
        String packageName = this.mContext.getPackageName();
        if (Boolean.parseBoolean(nextArgRequired)) {
            StatusBarManagerService statusBarManagerService = this.mInterface;
            IBinder iBinder = sToken;
            statusBarManagerService.disable(61145088, iBinder, packageName);
            this.mInterface.disable2(0, iBinder, packageName);
        } else {
            StatusBarManagerService statusBarManagerService2 = this.mInterface;
            IBinder iBinder2 = sToken;
            statusBarManagerService2.disable(0, iBinder2, packageName);
            this.mInterface.disable2(0, iBinder2, packageName);
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0077, code lost:
    
        if (r2.equals("system-icons") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int runSendDisableFlag() {
        /*
            r7 = this;
            android.content.Context r0 = r7.mContext
            java.lang.String r0 = r0.getPackageName()
            android.app.StatusBarManager$DisableInfo r1 = new android.app.StatusBarManager$DisableInfo
            r1.<init>()
            java.lang.String r2 = r7.getNextArg()
        Lf:
            r3 = 0
            if (r2 == 0) goto La3
            int r4 = r2.hashCode()
            r5 = 1
            r6 = -1
            switch(r4) {
                case -1786496516: goto L70;
                case -906336856: goto L64;
                case -755976775: goto L58;
                case 3208415: goto L4d;
                case 94755854: goto L42;
                case 1011652819: goto L36;
                case 1082295672: goto L2a;
                case 1368216504: goto L1e;
                default: goto L1b;
            }
        L1b:
            r3 = r6
            goto L7a
        L1e:
            java.lang.String r3 = "notification-icons"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L28
            goto L1b
        L28:
            r3 = 7
            goto L7a
        L2a:
            java.lang.String r3 = "recents"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L34
            goto L1b
        L34:
            r3 = 6
            goto L7a
        L36:
            java.lang.String r3 = "statusbar-expansion"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L40
            goto L1b
        L40:
            r3 = 5
            goto L7a
        L42:
            java.lang.String r3 = "clock"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L4b
            goto L1b
        L4b:
            r3 = 4
            goto L7a
        L4d:
            java.lang.String r3 = "home"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L56
            goto L1b
        L56:
            r3 = 3
            goto L7a
        L58:
            java.lang.String r3 = "notification-alerts"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L62
            goto L1b
        L62:
            r3 = 2
            goto L7a
        L64:
            java.lang.String r3 = "search"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L6e
            goto L1b
        L6e:
            r3 = r5
            goto L7a
        L70:
            java.lang.String r4 = "system-icons"
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto L7a
            goto L1b
        L7a:
            switch(r3) {
                case 0: goto L9a;
                case 1: goto L96;
                case 2: goto L92;
                case 3: goto L8e;
                case 4: goto L8a;
                case 5: goto L86;
                case 6: goto L82;
                case 7: goto L7e;
                default: goto L7d;
            }
        L7d:
            goto L9d
        L7e:
            r1.setNotificationIconsDisabled(r5)
            goto L9d
        L82:
            r1.setRecentsDisabled(r5)
            goto L9d
        L86:
            r1.setStatusBarExpansionDisabled(r5)
            goto L9d
        L8a:
            r1.setClockDisabled(r5)
            goto L9d
        L8e:
            r1.setNagivationHomeDisabled(r5)
            goto L9d
        L92:
            r1.setNotificationPeekingDisabled(r5)
            goto L9d
        L96:
            r1.setSearchDisabled(r5)
            goto L9d
        L9a:
            r1.setSystemIconsDisabled(r5)
        L9d:
            java.lang.String r2 = r7.getNextArg()
            goto Lf
        La3:
            android.util.Pair r1 = r1.toFlags()
            com.android.server.statusbar.StatusBarManagerService r2 = r7.mInterface
            java.lang.Object r4 = r1.first
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            android.os.IBinder r5 = com.android.server.statusbar.StatusBarShellCommand.sToken
            r2.disable(r4, r5, r0)
            com.android.server.statusbar.StatusBarManagerService r7 = r7.mInterface
            java.lang.Object r1 = r1.second
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r7.disable2(r1, r5, r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.statusbar.StatusBarShellCommand.runSendDisableFlag():int");
    }

    public final int runPassArgsToStatusBar() {
        this.mInterface.passThroughShellCommand(getAllArgs(), getOutFileDescriptor());
        return 0;
    }

    public final int runTracing() {
        String nextArg = getNextArg();
        nextArg.hashCode();
        if (nextArg.equals("stop")) {
            this.mInterface.stopTracing();
            return 0;
        }
        if (!nextArg.equals("start")) {
            return 0;
        }
        this.mInterface.startTracing();
        return 0;
    }

    public final int runGc() {
        this.mInterface.runGcForTest();
        return 0;
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Status bar commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("");
        outPrintWriter.println("  expand-notifications");
        outPrintWriter.println("    Open the notifications panel.");
        outPrintWriter.println("");
        outPrintWriter.println("  expand-settings");
        outPrintWriter.println("    Open the notifications panel and expand quick settings if present.");
        outPrintWriter.println("");
        outPrintWriter.println("  collapse");
        outPrintWriter.println("    Collapse the notifications and settings panel.");
        outPrintWriter.println("");
        outPrintWriter.println("  add-tile COMPONENT");
        outPrintWriter.println("    Add a TileService of the specified component");
        outPrintWriter.println("");
        outPrintWriter.println("  remove-tile COMPONENT");
        outPrintWriter.println("    Remove a TileService of the specified component");
        outPrintWriter.println("");
        outPrintWriter.println("  click-tile COMPONENT");
        outPrintWriter.println("    Click on a TileService of the specified component");
        outPrintWriter.println("");
        outPrintWriter.println("  check-support");
        outPrintWriter.println("    Check if this device supports QS + APIs");
        outPrintWriter.println("");
        outPrintWriter.println("  get-status-icons");
        outPrintWriter.println("    Print the list of status bar icons and the order they appear in");
        outPrintWriter.println("");
        outPrintWriter.println("  disable-for-setup DISABLE");
        outPrintWriter.println("    If true, disable status bar components unsuitable for device setup");
        outPrintWriter.println("");
        outPrintWriter.println("  send-disable-flag FLAG...");
        outPrintWriter.println("    Send zero or more disable flags (parsed individually) to StatusBarManager");
        outPrintWriter.println("    Valid options:");
        outPrintWriter.println("        <blank>             - equivalent to \"none\"");
        outPrintWriter.println("        none                - re-enables all components");
        outPrintWriter.println("        search              - disable search");
        outPrintWriter.println("        home                - disable naviagation home");
        outPrintWriter.println("        recents             - disable recents/overview");
        outPrintWriter.println("        notification-peek   - disable notification peeking");
        outPrintWriter.println("        statusbar-expansion - disable status bar expansion");
        outPrintWriter.println("        system-icons        - disable system icons appearing in status bar");
        outPrintWriter.println("        clock               - disable clock appearing in status bar");
        outPrintWriter.println("        notification-icons  - disable notification icons from status bar");
        outPrintWriter.println("");
        outPrintWriter.println("  tracing (start | stop)");
        outPrintWriter.println("    Start or stop SystemUI tracing");
        outPrintWriter.println("");
        outPrintWriter.println("  NOTE: any command not listed here will be passed through to IStatusBar");
        outPrintWriter.println("");
        outPrintWriter.println("  Commands implemented in SystemUI:");
        outPrintWriter.flush();
        this.mInterface.passThroughShellCommand(new String[0], getOutFileDescriptor());
    }

    /* loaded from: classes3.dex */
    public final class StatusBarShellCommandToken extends Binder {
        public StatusBarShellCommandToken() {
        }
    }
}
