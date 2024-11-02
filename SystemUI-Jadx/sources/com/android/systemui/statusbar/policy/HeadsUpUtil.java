package com.android.systemui.statusbar.policy;

import android.view.View;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HeadsUpUtil {
    public static void setNeedsHeadsUpDisappearAnimationAfterClick(View view, boolean z) {
        Boolean bool;
        if (!((SettingsHelper) Dependency.get(SettingsHelper.class)).isAnimationRemoved()) {
            if (z) {
                bool = Boolean.TRUE;
            } else {
                bool = null;
            }
            view.setTag(R.id.is_clicked_heads_up_tag, bool);
        }
    }
}
