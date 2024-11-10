package com.android.server.webkit;

import android.os.ShellCommand;
import android.webkit.IWebViewUpdateService;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class WebViewUpdateServiceShellCommand extends ShellCommand {
    public final IWebViewUpdateService mInterface;

    public WebViewUpdateServiceShellCommand(IWebViewUpdateService iWebViewUpdateService) {
        this.mInterface = iWebViewUpdateService;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0058 A[Catch: RemoteException -> 0x005d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x005d, blocks: (B:7:0x000c, B:18:0x0049, B:20:0x004e, B:22:0x0053, B:24:0x0058, B:26:0x0023, B:29:0x002d, B:32:0x0038), top: B:6:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L7
            int r7 = r7.handleDefaultCommands(r8)
            return r7
        L7:
            java.io.PrintWriter r0 = r7.getOutPrintWriter()
            r1 = -1
            int r2 = r8.hashCode()     // Catch: android.os.RemoteException -> L5d
            r3 = -1857752288(0xffffffff9144f320, float:-1.5536592E-28)
            r4 = 0
            r5 = 2
            r6 = 1
            if (r2 == r3) goto L38
            r3 = -1381305903(0xffffffffadaaf1d1, float:-1.943415E-11)
            if (r2 == r3) goto L2d
            r3 = 436183515(0x19ffa1db, float:2.6431755E-23)
            if (r2 == r3) goto L23
            goto L42
        L23:
            java.lang.String r2 = "disable-multiprocess"
            boolean r2 = r8.equals(r2)     // Catch: android.os.RemoteException -> L5d
            if (r2 == 0) goto L42
            r2 = r5
            goto L43
        L2d:
            java.lang.String r2 = "set-webview-implementation"
            boolean r2 = r8.equals(r2)     // Catch: android.os.RemoteException -> L5d
            if (r2 == 0) goto L42
            r2 = r4
            goto L43
        L38:
            java.lang.String r2 = "enable-multiprocess"
            boolean r2 = r8.equals(r2)     // Catch: android.os.RemoteException -> L5d
            if (r2 == 0) goto L42
            r2 = r6
            goto L43
        L42:
            r2 = r1
        L43:
            if (r2 == 0) goto L58
            if (r2 == r6) goto L53
            if (r2 == r5) goto L4e
            int r7 = r7.handleDefaultCommands(r8)     // Catch: android.os.RemoteException -> L5d
            return r7
        L4e:
            int r7 = r7.enableMultiProcess(r4)     // Catch: android.os.RemoteException -> L5d
            return r7
        L53:
            int r7 = r7.enableMultiProcess(r6)     // Catch: android.os.RemoteException -> L5d
            return r7
        L58:
            int r7 = r7.setWebViewImplementation()     // Catch: android.os.RemoteException -> L5d
            return r7
        L5d:
            r7 = move-exception
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r2 = "Remote exception: "
            r8.append(r2)
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            r0.println(r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.webkit.WebViewUpdateServiceShellCommand.onCommand(java.lang.String):int");
    }

    public final int setWebViewImplementation() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        String nextArg = getNextArg();
        if (nextArg == null) {
            outPrintWriter.println("Failed to switch, no PACKAGE provided.");
            outPrintWriter.println("");
            helpSetWebViewImplementation();
            return 1;
        }
        String changeProviderAndSetting = this.mInterface.changeProviderAndSetting(nextArg);
        if (nextArg.equals(changeProviderAndSetting)) {
            outPrintWriter.println("Success");
            return 0;
        }
        outPrintWriter.println(String.format("Failed to switch to %s, the WebView implementation is now provided by %s.", nextArg, changeProviderAndSetting));
        return 1;
    }

    public final int enableMultiProcess(boolean z) {
        PrintWriter outPrintWriter = getOutPrintWriter();
        this.mInterface.enableMultiProcess(z);
        outPrintWriter.println("Success");
        return 0;
    }

    public void helpSetWebViewImplementation() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("  set-webview-implementation PACKAGE");
        outPrintWriter.println("    Set the WebView implementation to the specified package.");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("WebView updater commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("");
        helpSetWebViewImplementation();
        outPrintWriter.println("  enable-multiprocess");
        outPrintWriter.println("    Enable multi-process mode for WebView");
        outPrintWriter.println("  disable-multiprocess");
        outPrintWriter.println("    Disable multi-process mode for WebView");
        outPrintWriter.println();
    }
}
