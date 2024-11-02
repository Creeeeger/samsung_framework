package com.android.systemui.statusbar.notification.dagger;

import com.android.systemui.R;
import com.android.systemui.statusbar.notification.dagger.SectionHeaderControllerSubcomponent;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationSectionHeadersModule_ProvidesSilentHeaderSubcomponentFactory implements Provider {
    public final Provider builderProvider;

    public NotificationSectionHeadersModule_ProvidesSilentHeaderSubcomponentFactory(Provider provider) {
        this.builderProvider = provider;
    }

    public static SectionHeaderControllerSubcomponent providesSilentHeaderSubcomponent(Provider provider) {
        int i = NotificationSectionHeadersModule.$r8$clinit;
        SectionHeaderControllerSubcomponent build = ((SectionHeaderControllerSubcomponent.Builder) provider.get()).nodeLabel("silent header").headerText(R.string.notification_section_header_gentle).clickIntentAction("android.settings.NOTIFICATION_SETTINGS").build();
        Preconditions.checkNotNullFromProvides(build);
        return build;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesSilentHeaderSubcomponent(this.builderProvider);
    }
}
