package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.MathUtils;
import android.view.animation.PathInterpolator;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.ScrimController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import java.io.PrintWriter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitShadeLockScreenOverScroller implements LockScreenShadeOverScroller {
    public static final PathInterpolator RELEASE_OVER_SCROLL_INTERPOLATOR;
    public final Context context;
    public float expansionDragDownAmount;
    public int maxOverScrollAmount;
    public final Function0 nsslControllerProvider;
    public int previousOverscrollAmount;
    public final Function0 qSProvider;
    public Animator releaseOverScrollAnimator;
    public long releaseOverScrollDuration;
    public final ScrimController scrimController;
    public final SysuiStatusBarStateController statusBarStateController;
    public int transitionToFullShadeDistance;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        SplitShadeLockScreenOverScroller create(Function0 function0, Function0 function02);
    }

    static {
        new Companion(null);
        RELEASE_OVER_SCROLL_INTERPOLATOR = new PathInterpolator(0.17f, 0.0f, 0.0f, 1.0f);
    }

    public SplitShadeLockScreenOverScroller(ConfigurationController configurationController, DumpManager dumpManager, Context context, ScrimController scrimController, SysuiStatusBarStateController sysuiStatusBarStateController, Function0 function0, Function0 function02) {
        this.context = context;
        this.scrimController = scrimController;
        this.statusBarStateController = sysuiStatusBarStateController;
        this.qSProvider = function0;
        this.nsslControllerProvider = function02;
        updateResources();
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.SplitShadeLockScreenOverScroller.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                PathInterpolator pathInterpolator = SplitShadeLockScreenOverScroller.RELEASE_OVER_SCROLL_INTERPOLATOR;
                SplitShadeLockScreenOverScroller.this.updateResources();
            }
        });
        dumpManager.registerCriticalDumpable("SplitShadeLockscreenOverScroller", new Dumpable() { // from class: com.android.systemui.statusbar.SplitShadeLockScreenOverScroller.2
            @Override // com.android.systemui.Dumpable
            public final void dump(PrintWriter printWriter, String[] strArr) {
                SplitShadeLockScreenOverScroller splitShadeLockScreenOverScroller = SplitShadeLockScreenOverScroller.this;
                int i = splitShadeLockScreenOverScroller.transitionToFullShadeDistance;
                int i2 = splitShadeLockScreenOverScroller.maxOverScrollAmount;
                long j = splitShadeLockScreenOverScroller.releaseOverScrollDuration;
                int i3 = splitShadeLockScreenOverScroller.previousOverscrollAmount;
                float f = splitShadeLockScreenOverScroller.expansionDragDownAmount;
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("\n            SplitShadeLockScreenOverScroller:\n                Resources:\n                    transitionToFullShadeDistance: ", i, "\n                    maxOverScrollAmount: ", i2, "\n                    releaseOverScrollDuration: ");
                m.append(j);
                m.append("\n                State:\n                    previousOverscrollAmount: ");
                m.append(i3);
                m.append("\n                    expansionDragDownAmount: ");
                m.append(f);
                m.append("\n            ");
                printWriter.println(StringsKt__IndentKt.trimIndent(m.toString()));
            }
        });
    }

    public final void finishAnimations$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        Animator animator = this.releaseOverScrollAnimator;
        if (animator != null) {
            animator.end();
        }
        this.releaseOverScrollAnimator = null;
    }

    @Override // com.android.systemui.statusbar.LockScreenShadeOverScroller
    public final void setExpansionDragDownAmount(float f) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        if (this.expansionDragDownAmount == f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        this.expansionDragDownAmount = f;
        SysuiStatusBarStateController sysuiStatusBarStateController = this.statusBarStateController;
        if (((StatusBarStateControllerImpl) sysuiStatusBarStateController).mState == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            Function0 function0 = this.nsslControllerProvider;
            float height = ((NotificationStackScrollLayoutController) function0.invoke()).getHeight();
            int overshootInterpolation = (int) (Interpolators.getOvershootInterpolation(MathUtils.saturate(f / height), this.transitionToFullShadeDistance / height) * this.maxOverScrollAmount);
            ((QS) this.qSProvider.invoke()).setOverScrollAmount(overshootInterpolation);
            this.scrimController.mNotificationsScrim.setTranslationY(overshootInterpolation);
            ((NotificationStackScrollLayoutController) function0.invoke()).setOverScrollAmount(overshootInterpolation);
            this.previousOverscrollAmount = overshootInterpolation;
            return;
        }
        if (((StatusBarStateControllerImpl) sysuiStatusBarStateController).mState == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3 || this.previousOverscrollAmount == 0) {
            z4 = false;
        }
        if (z4) {
            ValueAnimator ofInt = ValueAnimator.ofInt(this.previousOverscrollAmount, 0);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.SplitShadeLockScreenOverScroller$releaseOverScroll$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    SplitShadeLockScreenOverScroller splitShadeLockScreenOverScroller = SplitShadeLockScreenOverScroller.this;
                    PathInterpolator pathInterpolator = SplitShadeLockScreenOverScroller.RELEASE_OVER_SCROLL_INTERPOLATOR;
                    ((QS) splitShadeLockScreenOverScroller.qSProvider.invoke()).setOverScrollAmount(intValue);
                    SplitShadeLockScreenOverScroller.this.scrimController.mNotificationsScrim.setTranslationY(intValue);
                    ((NotificationStackScrollLayoutController) SplitShadeLockScreenOverScroller.this.nsslControllerProvider.invoke()).setOverScrollAmount(intValue);
                }
            });
            ofInt.setInterpolator(RELEASE_OVER_SCROLL_INTERPOLATOR);
            ofInt.setDuration(this.releaseOverScrollDuration);
            ofInt.start();
            this.releaseOverScrollAnimator = ofInt;
            this.previousOverscrollAmount = 0;
        }
    }

    public final void updateResources() {
        Resources resources = this.context.getResources();
        this.transitionToFullShadeDistance = resources.getDimensionPixelSize(R.dimen.lockscreen_shade_full_transition_distance);
        this.maxOverScrollAmount = resources.getDimensionPixelSize(R.dimen.lockscreen_shade_max_over_scroll_amount);
        this.releaseOverScrollDuration = resources.getInteger(R.integer.lockscreen_shade_over_scroll_release_duration);
    }
}
