package com.android.systemui.shade.transition;

import android.content.Context;
import android.content.res.Configuration;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.LargeScreenUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LargeScreenShadeInterpolatorImpl implements LargeScreenShadeInterpolator {
    public final Context context;
    public boolean inSplitShade;
    public final LargeScreenPortraitShadeInterpolator portraitShadeInterpolator;
    public final SplitShadeInterpolator splitShadeInterpolator;

    public LargeScreenShadeInterpolatorImpl(ConfigurationController configurationController, Context context, SplitShadeInterpolator splitShadeInterpolator, LargeScreenPortraitShadeInterpolator largeScreenPortraitShadeInterpolator) {
        this.context = context;
        this.splitShadeInterpolator = splitShadeInterpolator;
        this.portraitShadeInterpolator = largeScreenPortraitShadeInterpolator;
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.shade.transition.LargeScreenShadeInterpolatorImpl.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                LargeScreenShadeInterpolatorImpl largeScreenShadeInterpolatorImpl = LargeScreenShadeInterpolatorImpl.this;
                largeScreenShadeInterpolatorImpl.inSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(largeScreenShadeInterpolatorImpl.context.getResources());
            }
        });
        this.inSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(context.getResources());
    }

    @Override // com.android.systemui.shade.transition.LargeScreenShadeInterpolator
    public final float getBehindScrimAlpha(float f) {
        LargeScreenShadeInterpolator largeScreenShadeInterpolator;
        if (this.inSplitShade) {
            largeScreenShadeInterpolator = this.splitShadeInterpolator;
        } else {
            largeScreenShadeInterpolator = this.portraitShadeInterpolator;
        }
        return largeScreenShadeInterpolator.getBehindScrimAlpha(f);
    }

    @Override // com.android.systemui.shade.transition.LargeScreenShadeInterpolator
    public final float getNotificationContentAlpha(float f) {
        LargeScreenShadeInterpolator largeScreenShadeInterpolator;
        if (this.inSplitShade) {
            largeScreenShadeInterpolator = this.splitShadeInterpolator;
        } else {
            largeScreenShadeInterpolator = this.portraitShadeInterpolator;
        }
        return largeScreenShadeInterpolator.getNotificationContentAlpha(f);
    }

    @Override // com.android.systemui.shade.transition.LargeScreenShadeInterpolator
    public final float getNotificationScrimAlpha(float f) {
        LargeScreenShadeInterpolator largeScreenShadeInterpolator;
        if (this.inSplitShade) {
            largeScreenShadeInterpolator = this.splitShadeInterpolator;
        } else {
            largeScreenShadeInterpolator = this.portraitShadeInterpolator;
        }
        return largeScreenShadeInterpolator.getNotificationScrimAlpha(f);
    }
}
