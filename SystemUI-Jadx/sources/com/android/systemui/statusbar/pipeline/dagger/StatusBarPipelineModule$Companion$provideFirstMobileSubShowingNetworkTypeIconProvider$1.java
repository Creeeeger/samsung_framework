package com.android.systemui.statusbar.pipeline.dagger;

import com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarPipelineModule$Companion$provideFirstMobileSubShowingNetworkTypeIconProvider$1 implements Supplier {
    public final /* synthetic */ MobileIconsViewModel $mobileIconsViewModel;

    public StatusBarPipelineModule$Companion$provideFirstMobileSubShowingNetworkTypeIconProvider$1(MobileIconsViewModel mobileIconsViewModel) {
        this.$mobileIconsViewModel = mobileIconsViewModel;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.$mobileIconsViewModel.firstMobileSubShowingNetworkTypeIcon;
    }
}
