package com.android.systemui.statusbar.phone.dagger;

import android.view.ViewStub;
import com.android.systemui.R;
import com.android.systemui.shade.NotificationPanelView;
import com.android.systemui.statusbar.phone.KeyguardBottomAreaView;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarViewModule_ProvidesKeyguardBottomAreaViewFactory implements Provider {
    public final Provider layoutInflaterProvider;
    public final Provider npvProvider;

    public StatusBarViewModule_ProvidesKeyguardBottomAreaViewFactory(Provider provider, Provider provider2) {
        this.npvProvider = provider;
        this.layoutInflaterProvider = provider2;
    }

    public static KeyguardBottomAreaView providesKeyguardBottomAreaView(NotificationPanelView notificationPanelView) {
        ViewStub viewStub = (ViewStub) notificationPanelView.findViewById(R.id.keyguard_bottom_area_switcher);
        viewStub.setLayoutResource(R.layout.keyguard_sec_bottom_area);
        KeyguardBottomAreaView keyguardBottomAreaView = (KeyguardBottomAreaView) viewStub.inflate();
        keyguardBottomAreaView.setVisibility(8);
        return keyguardBottomAreaView;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        NotificationPanelView notificationPanelView = (NotificationPanelView) this.npvProvider.get();
        return providesKeyguardBottomAreaView(notificationPanelView);
    }
}
