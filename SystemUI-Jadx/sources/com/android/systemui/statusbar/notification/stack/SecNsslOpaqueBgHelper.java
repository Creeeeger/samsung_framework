package com.android.systemui.statusbar.notification.stack;

import android.content.Context;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.util.SecPanelOpaqueBgHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecNsslOpaqueBgHelper extends SecPanelOpaqueBgHelper {
    public final Context mContext;
    public boolean mQsExpandedImmediate;

    public SecNsslOpaqueBgHelper(Context context) {
        this.mContext = context;
    }

    public final boolean needOpaqueBg() {
        if (NotiRune.NOTI_STYLE_TABLET_BG && ((StatusBarStateController) Dependency.get(StatusBarStateController.class)).getState() != 1 && !this.mQsExpandedImmediate) {
            return true;
        }
        return false;
    }
}
