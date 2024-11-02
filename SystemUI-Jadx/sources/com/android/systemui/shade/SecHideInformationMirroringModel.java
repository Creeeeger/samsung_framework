package com.android.systemui.shade;

import com.android.systemui.Dependency;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecHideInformationMirroringModel {
    public final SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);

    public final boolean shouldHideInformation() {
        if (this.settingsHelper.mItemLists.get("smart_view_show_notification_on").getIntValue() == 0) {
            return true;
        }
        return false;
    }
}
