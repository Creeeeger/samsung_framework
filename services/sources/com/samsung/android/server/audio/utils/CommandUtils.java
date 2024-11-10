package com.samsung.android.server.audio.utils;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
public abstract class CommandUtils {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
    
        if (r6 == 1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0079, code lost:
    
        android.media.AudioSystem.setParameters(r13[2]);
        r12.println("  Success to set [" + r13[2] + "]");
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016c A[Catch: IndexOutOfBoundsException | NumberFormatException -> 0x018c, IndexOutOfBoundsException | NumberFormatException -> 0x018c, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException -> 0x018c, blocks: (B:3:0x0001, B:6:0x0015, B:6:0x0015, B:14:0x004f, B:14:0x004f, B:19:0x0054, B:19:0x0054, B:20:0x0059, B:20:0x0059, B:28:0x0079, B:28:0x0079, B:29:0x009a, B:29:0x009a, B:31:0x00a8, B:31:0x00a8, B:32:0x00c4, B:32:0x00c4, B:33:0x0064, B:33:0x0064, B:36:0x006c, B:36:0x006c, B:39:0x00e5, B:39:0x00e5, B:48:0x0107, B:48:0x0107, B:49:0x010d, B:49:0x010d, B:55:0x0140, B:55:0x0140, B:56:0x0146, B:56:0x0146, B:57:0x0111, B:57:0x0111, B:60:0x011b, B:60:0x011b, B:63:0x0125, B:63:0x0125, B:66:0x012f, B:66:0x012f, B:69:0x016c, B:69:0x016c, B:70:0x00f0, B:70:0x00f0, B:73:0x00f8, B:73:0x00f8, B:76:0x001d, B:76:0x001d, B:79:0x0025, B:79:0x0025, B:82:0x002f, B:82:0x002f), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean handleCustomCommand(java.io.PrintWriter r12, java.lang.String[] r13, android.content.Context r14, java.util.function.Function r15) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.server.audio.utils.CommandUtils.handleCustomCommand(java.io.PrintWriter, java.lang.String[], android.content.Context, java.util.function.Function):boolean");
    }

    public static void executePanel(Context context, String str) {
        Intent intent = new Intent();
        intent.setFlags(268435456);
        intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.panel.SettingsPanelActivity"));
        if ("mediapanel".equals(str)) {
            intent.setAction("com.android.settings.panel.action.MEDIA_OUTPUT");
        } else if ("volumepanel".equals(str)) {
            intent.setAction("android.settings.panel.action.VOLUME");
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }
}
