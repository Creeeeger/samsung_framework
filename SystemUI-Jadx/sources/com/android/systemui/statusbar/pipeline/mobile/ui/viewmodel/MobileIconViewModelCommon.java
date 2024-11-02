package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import android.view.View;
import com.android.systemui.statusbar.phone.DoubleShadowStatusBarIconDrawable;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface MobileIconViewModelCommon {
    Flow getActivityContainerVisible();

    Flow getActivityIcon();

    Flow getActivityInVisible();

    Flow getActivityOutVisible();

    Flow getAnyChanges();

    Flow getContentDescription();

    Flow getDexStatusBarIcon();

    Flow getIcon();

    Flow getNetworkTypeIcon();

    Flow getRoaming();

    Flow getRoamingIcon();

    DoubleShadowStatusBarIconDrawable getShadowDrawable(View view, int i);

    int getSubscriptionId();

    StateFlow getUpdateDeXStatusBarIconModel();

    StateFlow getVoiceNoServiceIcon();

    StateFlow isVisible();
}
