package com.android.systemui.screenshot;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.android.systemui.R;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActionIntentCreator {
    public static final ActionIntentCreator INSTANCE = new ActionIntentCreator();

    private ActionIntentCreator() {
    }

    public static Intent createEditIntent(Context context, Uri uri) {
        boolean z;
        Intent intent = new Intent("android.intent.action.EDIT");
        String string = context.getString(R.string.config_screenshotEditor);
        if (string != null) {
            if (string.length() > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                intent.setComponent(ComponentName.unflattenFromString(string));
            }
        }
        return intent.setDataAndType(uri, "image/png").addFlags(1).addFlags(2).addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).addFlags(32768);
    }

    public static Intent createShareIntent(Uri uri, String str, String str2) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setDataAndType(uri, "image/png");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.setClipData(new ClipData(new ClipDescription("content", new String[]{"text/plain"}), new ClipData.Item(uri)));
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        intent.addFlags(1);
        intent.addFlags(2);
        return Intent.createChooser(intent, null).addFlags(32768).addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).addFlags(1);
    }
}
