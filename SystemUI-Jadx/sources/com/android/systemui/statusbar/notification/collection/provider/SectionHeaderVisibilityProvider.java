package com.android.systemui.statusbar.notification.collection.provider;

import android.content.Context;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SectionHeaderVisibilityProvider {
    public final boolean neverShowSectionHeaders;
    public boolean sectionHeadersVisible = true;

    public SectionHeaderVisibilityProvider(Context context) {
        this.neverShowSectionHeaders = context.getResources().getBoolean(R.bool.config_notification_never_show_section_headers);
    }
}
