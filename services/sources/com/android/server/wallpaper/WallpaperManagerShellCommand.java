package com.android.server.wallpaper;

import android.os.RemoteException;
import android.os.ShellCommand;
import android.util.Log;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class WallpaperManagerShellCommand extends ShellCommand {
    public final WallpaperManagerService mService;

    public WallpaperManagerShellCommand(WallpaperManagerService wallpaperManagerService) {
        this.mService = wallpaperManagerService;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0039, code lost:
    
        if (r5.equals("dim-with-uid") == false) goto L8;
     */
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
            int r1 = r5.hashCode()
            r2 = 0
            r3 = -1
            switch(r1) {
                case -1462105208: goto L3c;
                case -296046994: goto L33;
                case 1499: goto L28;
                case 3198785: goto L1d;
                case 309630996: goto L12;
                default: goto L10;
            }
        L10:
            r0 = r3
            goto L47
        L12:
            java.lang.String r0 = "get-dim-amount"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L1b
            goto L10
        L1b:
            r0 = 4
            goto L47
        L1d:
            java.lang.String r0 = "help"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L26
            goto L10
        L26:
            r0 = 3
            goto L47
        L28:
            java.lang.String r0 = "-h"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L31
            goto L10
        L31:
            r0 = 2
            goto L47
        L33:
            java.lang.String r1 = "dim-with-uid"
            boolean r1 = r5.equals(r1)
            if (r1 != 0) goto L47
            goto L10
        L3c:
            java.lang.String r0 = "set-dim-amount"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L46
            goto L10
        L46:
            r0 = r2
        L47:
            switch(r0) {
                case 0: goto L5d;
                case 1: goto L58;
                case 2: goto L54;
                case 3: goto L54;
                case 4: goto L4f;
                default: goto L4a;
            }
        L4a:
            int r4 = r4.handleDefaultCommands(r5)
            return r4
        L4f:
            int r4 = r4.getWallpaperDimAmount()
            return r4
        L54:
            r4.onHelp()
            return r2
        L58:
            int r4 = r4.setDimmingWithUid()
            return r4
        L5d:
            int r4 = r4.setWallpaperDimAmount()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wallpaper.WallpaperManagerShellCommand.onCommand(java.lang.String):int");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Wallpaper manager commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println();
        outPrintWriter.println("  set-dim-amount DIMMING");
        outPrintWriter.println("    Sets the current dimming value to DIMMING (a number between 0 and 1).");
        outPrintWriter.println();
        outPrintWriter.println("  dim-with-uid UID DIMMING");
        outPrintWriter.println("    Sets the wallpaper dim amount to DIMMING as if an app with uid, UID, called it.");
        outPrintWriter.println();
        outPrintWriter.println("  get-dim-amount");
        outPrintWriter.println("    Get the current wallpaper dim amount.");
    }

    public final int setWallpaperDimAmount() {
        float parseFloat = Float.parseFloat(getNextArgRequired());
        try {
            this.mService.setWallpaperDimAmount(parseFloat);
        } catch (RemoteException unused) {
            Log.e("WallpaperManagerShellCommand", "Can't set wallpaper dim amount");
        }
        getOutPrintWriter().println("Dimming the wallpaper to: " + parseFloat);
        return 0;
    }

    public final int getWallpaperDimAmount() {
        float wallpaperDimAmount = this.mService.getWallpaperDimAmount();
        getOutPrintWriter().println("The current wallpaper dim amount is: " + wallpaperDimAmount);
        return 0;
    }

    public final int setDimmingWithUid() {
        int parseInt = Integer.parseInt(getNextArgRequired());
        float parseFloat = Float.parseFloat(getNextArgRequired());
        this.mService.setWallpaperDimAmountForUid(parseInt, parseFloat);
        getOutPrintWriter().println("Dimming the wallpaper for UID: " + parseInt + " to: " + parseFloat);
        return 0;
    }
}
