package com.android.wm.shell.windowdecor;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiTaskingHelpController {
    public static boolean FREEFORM_HANDLER_HELP_POPUP_ENABLED = false;
    public static boolean SPLIT_HANDLER_HELP_POPUP_ENABLED = false;
    public final Context mContext;
    public final int mWindowingMode;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MultiTaskingHelpController(android.content.Context r3, int r4) {
        /*
            r2 = this;
            r2.<init>()
            r2.mContext = r3
            r2.mWindowingMode = r4
            r2 = 6
            r0 = 1
            r1 = 0
            if (r4 != r2) goto L1e
            android.content.ContentResolver r2 = r3.getContentResolver()
            java.lang.String r3 = "multi_split_quick_options_help_count"
            int r2 = android.provider.Settings.Global.getInt(r2, r3, r1)
            if (r2 >= r0) goto L19
            goto L1a
        L19:
            r0 = r1
        L1a:
            com.android.wm.shell.windowdecor.MultiTaskingHelpController.SPLIT_HANDLER_HELP_POPUP_ENABLED = r0
        L1c:
            r1 = r2
            goto L32
        L1e:
            r2 = 5
            if (r4 != r2) goto L32
            android.content.ContentResolver r2 = r3.getContentResolver()
            java.lang.String r3 = "freeform_handler_help_popup_count"
            int r2 = android.provider.Settings.Global.getInt(r2, r3, r1)
            if (r2 >= r0) goto L2e
            goto L2f
        L2e:
            r0 = r1
        L2f:
            com.android.wm.shell.windowdecor.MultiTaskingHelpController.FREEFORM_HANDLER_HELP_POPUP_ENABLED = r0
            goto L1c
        L32:
            boolean r2 = com.samsung.android.rune.CoreRune.SAFE_DEBUG
            if (r2 == 0) goto L51
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "MultiTaskingHelpController: windowingMode="
            r2.<init>(r3)
            r2.append(r4)
            java.lang.String r3 = " count = "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "MultiTaskingHelpController"
            android.util.Slog.d(r3, r2)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultiTaskingHelpController.<init>(android.content.Context, int):void");
    }
}
