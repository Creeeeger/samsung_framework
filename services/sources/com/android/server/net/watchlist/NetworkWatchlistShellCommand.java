package com.android.server.net.watchlist;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.ShellCommand;
import android.provider.Settings;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class NetworkWatchlistShellCommand extends ShellCommand {
    public final Context mContext;
    public final NetworkWatchlistService mService;

    public NetworkWatchlistShellCommand(NetworkWatchlistService networkWatchlistService, Context context) {
        this.mContext = context;
        this.mService = networkWatchlistService;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[Catch: Exception -> 0x0045, TRY_LEAVE, TryCatch #0 {Exception -> 0x0045, blocks: (B:7:0x000c, B:15:0x0036, B:17:0x003b, B:19:0x0040, B:21:0x001c, B:24:0x0026), top: B:6:0x000c }] */
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
            java.io.PrintWriter r0 = r5.getOutPrintWriter()
            r1 = -1
            int r2 = r6.hashCode()     // Catch: java.lang.Exception -> L45
            r3 = 1757613042(0x68c30bf2, float:7.3686545E24)
            r4 = 1
            if (r2 == r3) goto L26
            r3 = 1854202282(0x6e84e1aa, float:2.0562416E28)
            if (r2 == r3) goto L1c
            goto L31
        L1c:
            java.lang.String r2 = "force-generate-report"
            boolean r2 = r6.equals(r2)     // Catch: java.lang.Exception -> L45
            if (r2 == 0) goto L31
            r2 = r4
            goto L32
        L26:
            java.lang.String r2 = "set-test-config"
            boolean r2 = r6.equals(r2)     // Catch: java.lang.Exception -> L45
            if (r2 == 0) goto L31
            r2 = 0
            goto L32
        L31:
            r2 = r1
        L32:
            if (r2 == 0) goto L40
            if (r2 == r4) goto L3b
            int r5 = r5.handleDefaultCommands(r6)     // Catch: java.lang.Exception -> L45
            return r5
        L3b:
            int r5 = r5.runForceGenerateReport()     // Catch: java.lang.Exception -> L45
            return r5
        L40:
            int r5 = r5.runSetTestConfig()     // Catch: java.lang.Exception -> L45
            return r5
        L45:
            r5 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r2 = "Exception: "
            r6.append(r2)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            r0.println(r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.net.watchlist.NetworkWatchlistShellCommand.onCommand(java.lang.String):int");
    }

    public final int runSetTestConfig() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        try {
            String nextArgRequired = getNextArgRequired();
            ParcelFileDescriptor openFileForSystem = openFileForSystem(nextArgRequired, "r");
            if (openFileForSystem == null) {
                outPrintWriter.println("Error: can't open input file " + nextArgRequired);
                return -1;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(openFileForSystem);
            try {
                WatchlistConfig.getInstance().setTestMode(autoCloseInputStream);
                autoCloseInputStream.close();
                outPrintWriter.println("Success!");
                return 0;
            } finally {
            }
        } catch (Exception e) {
            outPrintWriter.println("Error: " + e.toString());
            return -1;
        }
    }

    public final int runForceGenerateReport() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (WatchlistConfig.getInstance().isConfigSecure()) {
                outPrintWriter.println("Error: Cannot force generate report under production config");
                return -1;
            }
            Settings.Global.putLong(this.mContext.getContentResolver(), "network_watchlist_last_report_time", 0L);
            this.mService.forceReportWatchlistForTest(System.currentTimeMillis());
            outPrintWriter.println("Success!");
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return 0;
        } catch (Exception e) {
            outPrintWriter.println("Error: " + e);
            return -1;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Network watchlist manager commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("  set-test-config your_watchlist_config.xml");
        outPrintWriter.println("    Set network watchlist test config file.");
        outPrintWriter.println("  force-generate-report");
        outPrintWriter.println("    Force generate watchlist test report.");
    }
}
