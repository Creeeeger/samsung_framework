package com.android.systemui.statusbar.phone.fragment.dagger;

import com.android.systemui.R;
import com.android.systemui.statusbar.phone.PhoneStatusBarView;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarFragmentModule_ProvideOperatorFrameNameViewFactory implements Provider {
    public final Provider viewProvider;

    public StatusBarFragmentModule_ProvideOperatorFrameNameViewFactory(Provider provider) {
        this.viewProvider = provider;
    }

    public static Optional provideOperatorFrameNameView(PhoneStatusBarView phoneStatusBarView) {
        Optional ofNullable = Optional.ofNullable(phoneStatusBarView.findViewById(R.id.carrier_logo_wrap_for_hun));
        Preconditions.checkNotNullFromProvides(ofNullable);
        return ofNullable;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideOperatorFrameNameView((PhoneStatusBarView) this.viewProvider.get());
    }
}
