package com.android.systemui.keyguard.animator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.Toast;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.configuration.DATA;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FullScreenViewController extends ViewAnimationController {
    public AnimatorSet fullScreenAnimatorSet;
    public final List fullScreenViews;
    public boolean isFullScreenModeShown;
    public boolean isFullscreenModeEnabled;
    public final FullScreenViewController$longPressCallback$1 longPressCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class CustomAnimatorListenerAdapter extends AnimatorListenerAdapter {
        public boolean isCancelled;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.isCancelled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.isCancelled = false;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r12v14, types: [com.android.systemui.keyguard.animator.FullScreenViewController$longPressCallback$1] */
    public FullScreenViewController(KeyguardTouchAnimator keyguardTouchAnimator) {
        super(keyguardTouchAnimator);
        this.fullScreenViews = CollectionsKt__CollectionsKt.listOf(1, 2, 3, 4, 5, 6, 0, 7, 8, 9, 10);
        this.longPressCallback = new Runnable() { // from class: com.android.systemui.keyguard.animator.FullScreenViewController$longPressCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                FullScreenViewController.this.setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(true);
            }
        };
        this.fullScreenAnimatorSet = new AnimatorSet();
    }

    public final void setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(final boolean z) {
        Interpolator interpolator;
        long j;
        float f;
        View view;
        boolean z2;
        float f2;
        this.isFullscreenModeEnabled = z;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setFullScreenMode enabled=", z, "KeyguardTouchAnimator");
        if (this.fullScreenAnimatorSet.isRunning()) {
            this.fullScreenAnimatorSet.cancel();
        }
        if (!isKeyguardState()) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        if (z) {
            interpolator = this.SINE_OUT_33;
        } else {
            interpolator = this.SINE_IN_33;
        }
        animatorSet.setInterpolator(interpolator);
        if (z) {
            j = 150;
        } else {
            j = 300;
        }
        animatorSet.setDuration(j);
        this.fullScreenAnimatorSet = animatorSet;
        animatorSet.addListener(new CustomAnimatorListenerAdapter() { // from class: com.android.systemui.keyguard.animator.FullScreenViewController$setFullScreenMode$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (z && !this.isCancelled) {
                    this.isFullScreenModeShown = true;
                }
            }
        });
        float f3 = 1.0f;
        if (z) {
            f = 0.95f;
        } else {
            f = 1.0f;
        }
        if (z) {
            f3 = 0.0f;
        }
        String str = null;
        if (hasView(0)) {
            view = getView(0);
        } else {
            view = null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.fullScreenViews) {
            if (hasView(((Number) obj).intValue())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(getView(((Number) it.next()).intValue()));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        while (true) {
            z2 = true;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((View) next).getVisibility() != 0) {
                z2 = false;
            }
            if (z2) {
                arrayList3.add(next);
            }
        }
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            View view2 = (View) it3.next();
            if (Intrinsics.areEqual(view, view2) && z) {
                f2 = -1.0f;
            } else {
                f2 = f;
            }
            ViewAnimationController.setViewAnimation(animatorSet, view2, f2, f3);
        }
        animatorSet.start();
        KeyguardTouchAnimator keyguardTouchAnimator = this.keyguardTouchAnimator;
        KeyguardTouchLoggingInjector keyguardTouchLoggingInjector = keyguardTouchAnimator.loggingInjector;
        keyguardTouchLoggingInjector.getClass();
        if (z) {
            keyguardTouchLoggingInjector.mFullscreenModeStartTime = System.currentTimeMillis();
        } else {
            long currentTimeMillis = System.currentTimeMillis() - keyguardTouchLoggingInjector.mFullscreenModeStartTime;
            if (currentTimeMillis < 1000) {
                str = "1";
            } else if (currentTimeMillis < 2000) {
                str = "2";
            } else if (currentTimeMillis < 4000) {
                str = DATA.DM_FIELD_INDEX.PUBLIC_USER_ID;
            } else if (currentTimeMillis < 7000) {
                str = "4";
            } else if (currentTimeMillis < 10000) {
                str = DATA.DM_FIELD_INDEX.LBO_PCSCF_ADDRESS_TYPE;
            } else if (currentTimeMillis >= 10000) {
                str = DATA.DM_FIELD_INDEX.AMR_AUDIO_BITRATE;
            }
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "1011", str);
        }
        KeyguardTouchSecurityInjector keyguardTouchSecurityInjector = keyguardTouchAnimator.securityInjector;
        keyguardTouchSecurityInjector.getClass();
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardTouchSecurityInjector.mKeyguardUpdateMonitor;
            if (keyguardUpdateMonitor.isFingerprintOptionEnabled()) {
                if (z) {
                    Log.d("KeyguardFingerprint", "onFullScreenModeChanged is true. FP will be stop!");
                    keyguardUpdateMonitor.stopListeningForFingerprint();
                } else {
                    Log.d("KeyguardFingerprint", "onFullScreenModeChanged is false. FP will be start!");
                    keyguardUpdateMonitor.updateFingerprintListeningState(2);
                }
            }
        }
        Context context = getParentView().getContext();
        boolean z3 = this.isFullscreenModeEnabled;
        if (((KeyguardEditModeControllerImpl) keyguardTouchAnimator.keyguardEditModeController).settingsHelper.isSupportTouchAndHoldToEdit()) {
            if (!DeviceType.isTablet() && (!LsRune.LOCKUI_SUB_DISPLAY_LOCK || context.getResources().getConfiguration().semDisplayDeviceType != 0)) {
                z2 = false;
            }
            if (!z2 && z3 && context.getResources().getConfiguration().orientation == 2) {
                Toast.makeText(context, context.getResources().getString(R.string.switch_to_portrait_mode_to_edit_the_lock_screen_toast_message), 0).show();
            }
        }
    }
}
