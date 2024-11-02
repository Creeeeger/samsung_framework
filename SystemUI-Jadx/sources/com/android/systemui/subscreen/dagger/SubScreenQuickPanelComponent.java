package com.android.systemui.subscreen.dagger;

import com.android.systemui.statusbar.phone.SubScreenQuickPanelHeaderController;
import com.android.systemui.subscreen.SubScreenQuickPanelWindowView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface SubScreenQuickPanelComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        SubScreenQuickPanelComponent create(SubScreenQuickPanelWindowView subScreenQuickPanelWindowView);
    }

    SubScreenQuickPanelHeaderController getSubScreenQuickPanelHeaderController();
}
