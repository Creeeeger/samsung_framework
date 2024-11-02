package com.android.systemui.shade.transition;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.MathUtils;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.ScrimController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.util.LargeScreenUtils;
import java.io.PrintWriter;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScrimShadeTransitionController {
    public Integer currentPanelState;
    public final FeatureFlags featureFlags;
    public final HeadsUpManager headsUpManager;
    public boolean inSplitShade;
    public ShadeExpansionChangeEvent lastExpansionEvent;
    public Float lastExpansionFraction;
    public final Resources resources;
    public final ScrimController scrimController;
    public int splitShadeScrimTransitionDistance;
    public final SysuiStatusBarStateController statusBarStateController;

    public ScrimShadeTransitionController(ConfigurationController configurationController, DumpManager dumpManager, ScrimController scrimController, Resources resources, SysuiStatusBarStateController sysuiStatusBarStateController, HeadsUpManager headsUpManager, FeatureFlags featureFlags) {
        this.scrimController = scrimController;
        this.resources = resources;
        this.statusBarStateController = sysuiStatusBarStateController;
        this.headsUpManager = headsUpManager;
        this.featureFlags = featureFlags;
        this.inSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(resources);
        this.splitShadeScrimTransitionDistance = resources.getDimensionPixelSize(R.dimen.split_shade_scrim_transition_distance);
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.shade.transition.ScrimShadeTransitionController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                ScrimShadeTransitionController scrimShadeTransitionController = ScrimShadeTransitionController.this;
                Resources resources2 = scrimShadeTransitionController.resources;
                scrimShadeTransitionController.inSplitShade = LargeScreenUtils.shouldUseSplitNotificationShade(resources2);
                scrimShadeTransitionController.splitShadeScrimTransitionDistance = resources2.getDimensionPixelSize(R.dimen.split_shade_scrim_transition_distance);
            }
        });
        DumpManager.registerDumpable$default(dumpManager, "ScrimShadeTransitionController", new Dumpable() { // from class: com.android.systemui.shade.transition.ScrimShadeTransitionController.2
            @Override // com.android.systemui.Dumpable
            public final void dump(PrintWriter printWriter, String[] strArr) {
                boolean z;
                ScrimShadeTransitionController scrimShadeTransitionController = ScrimShadeTransitionController.this;
                boolean z2 = scrimShadeTransitionController.inSplitShade;
                if (((StatusBarStateControllerImpl) scrimShadeTransitionController.statusBarStateController).mUpcomingState == 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i = scrimShadeTransitionController.splitShadeScrimTransitionDistance;
                Integer num = scrimShadeTransitionController.currentPanelState;
                Float f = scrimShadeTransitionController.lastExpansionFraction;
                ShadeExpansionChangeEvent shadeExpansionChangeEvent = scrimShadeTransitionController.lastExpansionEvent;
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("\n                ScrimShadeTransitionController:\n                  Resources:\n                    inSplitShade: ", z2, "\n                    isScreenUnlocked: ", z, "\n                    splitShadeScrimTransitionDistance: ");
                m.append(i);
                m.append("\n                  State:\n                    currentPanelState: ");
                m.append(num);
                m.append("\n                    lastExpansionFraction: ");
                m.append(f);
                m.append("\n                    lastExpansionEvent: ");
                m.append(shadeExpansionChangeEvent);
                m.append("\n            ");
                printWriter.println(StringsKt__IndentKt.trimIndent(m.toString()));
            }
        });
    }

    public final void onStateChanged() {
        float f;
        boolean z;
        ShadeExpansionChangeEvent shadeExpansionChangeEvent = this.lastExpansionEvent;
        if (shadeExpansionChangeEvent == null) {
            return;
        }
        Integer num = this.currentPanelState;
        boolean z2 = false;
        if (this.inSplitShade) {
            if (((StatusBarStateControllerImpl) this.statusBarStateController).mUpcomingState == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z && num != null && num.intValue() == 1 && !this.headsUpManager.isTrackingHeadsUp()) {
                if (!((FeatureFlagsRelease) this.featureFlags).isEnabled(Flags.LARGE_SHADE_GRANULAR_ALPHA_INTERPOLATION)) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            f = MathUtils.constrain(shadeExpansionChangeEvent.dragDownPxAmount / this.splitShadeScrimTransitionDistance, 0.0f, 1.0f);
        } else {
            f = shadeExpansionChangeEvent.fraction;
        }
        ScrimController scrimController = this.scrimController;
        scrimController.getClass();
        if (!Float.isNaN(f)) {
            scrimController.mRawPanelExpansionFraction = f;
            scrimController.calculateAndUpdatePanelExpansion();
            this.lastExpansionFraction = Float.valueOf(f);
            return;
        }
        throw new IllegalArgumentException("rawPanelExpansionFraction should not be NaN");
    }
}
