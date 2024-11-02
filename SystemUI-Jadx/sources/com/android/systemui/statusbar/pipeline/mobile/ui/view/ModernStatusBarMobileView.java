package com.android.systemui.statusbar.pipeline.mobile.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.pipeline.mobile.ui.MobileViewLogger;
import com.android.systemui.statusbar.pipeline.mobile.ui.binder.MobileIconBinder;
import com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.LocationBasedMobileViewModel;
import com.android.systemui.statusbar.pipeline.shared.ui.view.ModernStatusBarView;
import com.android.systemui.statusbar.policy.ConfigurationController;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ModernStatusBarMobileView extends ModernStatusBarView {
    public static final Companion Companion = new Companion(null);
    public int subId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ModernStatusBarMobileView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.subId = -1;
    }

    public static final ModernStatusBarMobileView constructAndBind(Context context, final MobileViewLogger mobileViewLogger, String str, final LocationBasedMobileViewModel locationBasedMobileViewModel, final ConfigurationController configurationController) {
        Companion.getClass();
        final ModernStatusBarMobileView modernStatusBarMobileView = (ModernStatusBarMobileView) LayoutInflater.from(context).inflate(R.layout.status_bar_mobile_signal_group_new, (ViewGroup) null);
        modernStatusBarMobileView.subId = locationBasedMobileViewModel.getSubscriptionId();
        modernStatusBarMobileView.initView(str, new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.view.ModernStatusBarMobileView$Companion$constructAndBind$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MobileIconBinder.bind(ModernStatusBarMobileView.this, locationBasedMobileViewModel, mobileViewLogger, configurationController);
            }
        });
        mobileViewLogger.logNewViewBinding(modernStatusBarMobileView, locationBasedMobileViewModel);
        return modernStatusBarMobileView;
    }

    @Override // android.view.View
    public final String toString() {
        String str = this.slot;
        if (str == null) {
            str = null;
        }
        int i = this.subId;
        boolean isCollecting = getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().isCollecting();
        String visibleStateString = StatusBarIconView.getVisibleStateString(this.iconVisibleState);
        String frameLayout = super.toString();
        StringBuilder m = CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("ModernStatusBarMobileView(slot='", str, "', subId=", i, ", isCollecting=");
        m.append(isCollecting);
        m.append(", visibleState=");
        m.append(visibleStateString);
        m.append("); viewString=");
        m.append(frameLayout);
        return m.toString();
    }
}
