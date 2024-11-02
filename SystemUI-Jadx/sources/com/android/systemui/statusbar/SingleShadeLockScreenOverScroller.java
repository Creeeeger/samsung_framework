package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.MathUtils;
import com.android.app.animation.Interpolators;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SingleShadeLockScreenOverScroller implements LockScreenShadeOverScroller {
    public final Context context;
    public float expansionDragDownAmount;
    public int maxOverScrollAmount;
    public final NotificationStackScrollLayoutController nsslController;
    public final SysuiStatusBarStateController statusBarStateController;
    public int totalDistanceForFullShadeTransition;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        SingleShadeLockScreenOverScroller create(NotificationStackScrollLayoutController notificationStackScrollLayoutController);
    }

    public SingleShadeLockScreenOverScroller(ConfigurationController configurationController, Context context, SysuiStatusBarStateController sysuiStatusBarStateController, NotificationStackScrollLayoutController notificationStackScrollLayoutController) {
        this.context = context;
        this.statusBarStateController = sysuiStatusBarStateController;
        this.nsslController = notificationStackScrollLayoutController;
        Resources resources = context.getResources();
        this.totalDistanceForFullShadeTransition = resources.getDimensionPixelSize(R.dimen.lockscreen_shade_qs_transition_distance);
        this.maxOverScrollAmount = resources.getDimensionPixelSize(R.dimen.lockscreen_shade_max_over_scroll_amount);
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.SingleShadeLockScreenOverScroller.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                SingleShadeLockScreenOverScroller singleShadeLockScreenOverScroller = SingleShadeLockScreenOverScroller.this;
                Resources resources2 = singleShadeLockScreenOverScroller.context.getResources();
                singleShadeLockScreenOverScroller.totalDistanceForFullShadeTransition = resources2.getDimensionPixelSize(R.dimen.lockscreen_shade_qs_transition_distance);
                singleShadeLockScreenOverScroller.maxOverScrollAmount = resources2.getDimensionPixelSize(R.dimen.lockscreen_shade_max_over_scroll_amount);
            }
        });
    }

    @Override // com.android.systemui.statusbar.LockScreenShadeOverScroller
    public final void setExpansionDragDownAmount(float f) {
        boolean z;
        float f2;
        if (f == this.expansionDragDownAmount) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        this.expansionDragDownAmount = f;
        int i = ((StatusBarStateControllerImpl) this.statusBarStateController).mState;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.nsslController;
        if (i == 1) {
            float height = notificationStackScrollLayoutController.getHeight();
            f2 = Interpolators.getOvershootInterpolation(MathUtils.saturate(this.expansionDragDownAmount / height), this.totalDistanceForFullShadeTransition / height) * this.maxOverScrollAmount;
        } else {
            f2 = 0.0f;
        }
        notificationStackScrollLayoutController.setOverScrollAmount((int) f2);
    }
}
