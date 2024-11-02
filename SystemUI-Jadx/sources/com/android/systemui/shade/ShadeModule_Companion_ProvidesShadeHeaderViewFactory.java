package com.android.systemui.shade;

import android.view.ViewStub;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.android.systemui.R;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeModule_Companion_ProvidesShadeHeaderViewFactory implements Provider {
    public final Provider notificationShadeWindowViewProvider;

    public ShadeModule_Companion_ProvidesShadeHeaderViewFactory(Provider provider) {
        this.notificationShadeWindowViewProvider = provider;
    }

    public static MotionLayout providesShadeHeaderView(NotificationShadeWindowView notificationShadeWindowView) {
        ShadeModule.Companion.getClass();
        ViewStub viewStub = (ViewStub) notificationShadeWindowView.findViewById(R.id.qs_header_stub);
        viewStub.setLayoutResource(R.layout.combined_qs_header);
        return (MotionLayout) viewStub.inflate();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesShadeHeaderView((NotificationShadeWindowView) this.notificationShadeWindowViewProvider.get());
    }
}
