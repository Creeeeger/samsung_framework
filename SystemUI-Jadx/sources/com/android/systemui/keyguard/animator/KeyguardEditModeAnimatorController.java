package com.android.systemui.keyguard.animator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.SecRotationWatcher;
import com.android.systemui.Dependency;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntConsumer;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardEditModeAnimatorController extends ViewAnimationController {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final List alphaViews;
    public AnimatorSet animatorSet;
    public AnimatorSet cancelAnimatorSet;
    public final KeyguardEditModeController keyguardEditModeController;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final KeyguardWallpaper keyguardWallpaper;
    public StandaloneCoroutine longPressJob;
    public final List noScaleViews;
    public final List scaleViews;
    public final SettingsHelper settingsHelper;
    public Job startActivityJob;
    public AnimatorSet touchDownAnimatorSet;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public KeyguardEditModeAnimatorController(KeyguardTouchAnimator keyguardTouchAnimator, KeyguardEditModeController keyguardEditModeController, KeyguardWallpaper keyguardWallpaper, KeyguardUpdateMonitor keyguardUpdateMonitor, SecRotationWatcher secRotationWatcher, SettingsHelper settingsHelper) {
        super(keyguardTouchAnimator);
        this.keyguardEditModeController = keyguardEditModeController;
        this.keyguardWallpaper = keyguardWallpaper;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.settingsHelper = settingsHelper;
        this.animatorSet = new AnimatorSet();
        this.touchDownAnimatorSet = new AnimatorSet();
        this.alphaViews = CollectionsKt__CollectionsKt.listOf(7, 8, 9, 10, 3, 6, 2);
        this.scaleViews = CollectionsKt__CollectionsKt.listOf(7, 1, 8, 9, 10, 3, 6, 2, 4, 5);
        this.noScaleViews = CollectionsKt__CollectionsKt.listOf(0, 11);
        secRotationWatcher.addCallback(new IntConsumer() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController.1
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                KeyguardEditModeAnimatorController keyguardEditModeAnimatorController = KeyguardEditModeAnimatorController.this;
                int i2 = KeyguardEditModeAnimatorController.$r8$clinit;
                KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("rotation ", i, " ", keyguardEditModeAnimatorController.isEditMode(), "KeyguardEditModeAnimatorController");
                if (((KeyguardEditModeControllerImpl) KeyguardEditModeAnimatorController.this.keyguardEditModeController).getVIRunning()) {
                    ((KeyguardEditModeControllerImpl) KeyguardEditModeAnimatorController.this.keyguardEditModeController).cancel();
                    KeyguardEditModeAnimatorController keyguardEditModeAnimatorController2 = KeyguardEditModeAnimatorController.this;
                    ((KeyguardEditModeControllerImpl) keyguardEditModeAnimatorController2.keyguardEditModeController).isEditMode = false;
                    keyguardEditModeAnimatorController2.resetViews();
                }
            }
        });
        ((KeyguardEditModeControllerImpl) keyguardEditModeController).isAnimationRunning = new Function0() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(KeyguardEditModeAnimatorController.this.animatorSet.isRunning());
            }
        };
        ((KeyguardEditModeControllerImpl) keyguardEditModeController).isTouchDownAnimationRunning = new Function0() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController.3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(KeyguardEditModeAnimatorController.this.touchDownAnimatorSet.isRunning());
            }
        };
        ((KeyguardEditModeControllerImpl) keyguardEditModeController).startCancelAnimationFunction = new Function0() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController.4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KeyguardEditModeAnimatorController keyguardEditModeAnimatorController = KeyguardEditModeAnimatorController.this;
                int i = KeyguardEditModeAnimatorController.$r8$clinit;
                keyguardEditModeAnimatorController.startCancelAnimation();
                return Unit.INSTANCE;
            }
        };
        ((SecPanelExpansionStateNotifier) Dependency.get(SecPanelExpansionStateNotifier.class)).registerTicket(new SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController.5
            @Override // com.android.systemui.shade.SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket
            public final String getName() {
                return "KeyguardEditModeAnimatorController";
            }

            @Override // com.android.systemui.shade.SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket
            public final void onSecPanelExpansionStateChanged(int i, boolean z) {
                if (z) {
                    int i2 = KeyguardEditModeAnimatorController.$r8$clinit;
                    KeyguardEditModeAnimatorController.this.startCancelAnimation();
                }
            }
        });
        this.cancelAnimatorSet = new AnimatorSet();
    }

    public final void animate(boolean z) {
        ViewGroup viewGroup;
        String str;
        if (this.animatorSet.isRunning()) {
            this.animatorSet.cancel();
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController$initAnimatorSet$1$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                Log.d("KeyguardEditModeAnimatorController", "onAnimationCancel ");
                KeyguardEditModeAnimatorController keyguardEditModeAnimatorController = KeyguardEditModeAnimatorController.this;
                int i = KeyguardEditModeAnimatorController.$r8$clinit;
                if (keyguardEditModeAnimatorController.isEditMode()) {
                    ((KeyguardEditModeControllerImpl) KeyguardEditModeAnimatorController.this.keyguardEditModeController).isEditMode = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                KeyguardEditModeAnimatorController keyguardEditModeAnimatorController = KeyguardEditModeAnimatorController.this;
                int i = KeyguardEditModeAnimatorController.$r8$clinit;
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onAnimationEnd EM=", keyguardEditModeAnimatorController.isEditMode(), "KeyguardEditModeAnimatorController");
                if (KeyguardEditModeAnimatorController.this.isEditMode()) {
                    KeyguardEditModeAnimatorController keyguardEditModeAnimatorController2 = KeyguardEditModeAnimatorController.this;
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    keyguardEditModeAnimatorController2.startActivityJob = BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(MainDispatcherLoader.dispatcher), null, null, new KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1(KeyguardEditModeAnimatorController.this, null), 3);
                } else {
                    KeyguardEditModeAnimatorController.this.keyguardUpdateMonitor.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_STARTED_LOCK_EDIT_MODE_FINISHED);
                    ((KeyguardEditModeControllerImpl) KeyguardEditModeAnimatorController.this.keyguardEditModeController).cancel();
                    KeyguardEditModeAnimatorController.this.resetViews();
                }
            }
        });
        this.animatorSet = animatorSet;
        View parentView = getParentView();
        ViewGroup viewGroup2 = (ViewGroup) parentView;
        viewGroup2.setClipToPadding(false);
        viewGroup2.setClipChildren(false);
        ViewParent parent = viewGroup2.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup.setClipToPadding(false);
            viewGroup.setClipChildren(false);
        }
        viewGroup2.setPivotX(((Number) getEditModePivot().getFirst()).floatValue());
        viewGroup2.setPivotY(((Number) getEditModePivot().getSecond()).floatValue());
        KeyguardEditModeController keyguardEditModeController = this.keyguardEditModeController;
        if (z) {
            setViewScaleAnimation(this.animatorSet, parentView, ((KeyguardEditModeControllerImpl) keyguardEditModeController).previewScale, 500L, 0L);
        } else {
            viewGroup2.setScaleX(((KeyguardEditModeControllerImpl) keyguardEditModeController).previewScale);
            viewGroup2.setScaleY(((KeyguardEditModeControllerImpl) keyguardEditModeController).previewScale);
            setViewScaleAnimation(this.animatorSet, parentView, 1.0f, 500L, 100L);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.noScaleViews) {
            if (hasView(((Number) obj).intValue())) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = getView(((Number) it.next()).intValue());
            view.setPivotX(((Number) getEditModePivot().getFirst()).floatValue());
            view.setPivotY(((Number) getEditModePivot().getSecond()).floatValue());
            if (z) {
                setViewScaleAnimation(this.animatorSet, view, 1.0f / ((KeyguardEditModeControllerImpl) keyguardEditModeController).previewScale, 500L, 0L);
            } else {
                view.setScaleX(1.0f / ((KeyguardEditModeControllerImpl) keyguardEditModeController).previewScale);
                view.setScaleY(1.0f / ((KeyguardEditModeControllerImpl) keyguardEditModeController).previewScale);
                setViewScaleAnimation(this.animatorSet, view, 1.0f, 500L, 100L);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : this.alphaViews) {
            if (hasView(((Number) obj2).intValue())) {
                arrayList2.add(obj2);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            if (z) {
                setViewAlphaAnimation(this.animatorSet, getView(intValue), 0.0f, 150L, 0L);
            } else {
                View view2 = getView(intValue);
                view2.setAlpha(0.0f);
                setViewAlphaAnimation(this.animatorSet, view2, 1.0f, 300L, 300L);
            }
        }
        if (z) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : this.scaleViews) {
                if (hasView(((Number) obj3).intValue())) {
                    arrayList3.add(obj3);
                }
            }
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                setViewScaleAnimation(this.animatorSet, getView(((Number) it3.next()).intValue()), 1.0f, 500L, 0L);
            }
        }
        this.animatorSet.start();
        ((KeyguardEditModeControllerImpl) keyguardEditModeController).startAnimation(z);
        if (z) {
            getParentView().performHapticFeedback(0);
        }
        String str2 = SystemUIAnalytics.sCurrentScreenID;
        if (z) {
            str = "1";
        } else {
            str = "2";
        }
        SystemUIAnalytics.sendEventLog(str2, "1011E", str);
    }

    public final void cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        boolean z;
        boolean z2;
        Log.d("KeyguardEditModeAnimatorController", "cancel()");
        KeyguardWallpaperController keyguardWallpaperController = (KeyguardWallpaperController) this.keyguardWallpaper;
        keyguardWallpaperController.setThumbnailVisibility(4);
        StandaloneCoroutine standaloneCoroutine = this.longPressJob;
        boolean z3 = false;
        if (standaloneCoroutine != null && standaloneCoroutine.isActive()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.d("KeyguardEditModeAnimatorController", "longPressJob?.cancel");
            StandaloneCoroutine standaloneCoroutine2 = this.longPressJob;
            if (standaloneCoroutine2 != null) {
                standaloneCoroutine2.cancel(null);
            }
        }
        if (this.touchDownAnimatorSet.isRunning()) {
            this.touchDownAnimatorSet.cancel();
        }
        if (this.animatorSet.isRunning()) {
            Log.d("KeyguardEditModeAnimatorController", "cancel : isAnimationRunning");
            this.animatorSet.cancel();
        }
        if (isEditMode()) {
            Job job = this.startActivityJob;
            if (job != null && job.isActive()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                startCancelAnimation();
            }
        }
        if (!isKeyguardState()) {
            Job job2 = this.startActivityJob;
            if (job2 != null && job2.isActive()) {
                z3 = true;
            }
            if (z3) {
                Log.d("KeyguardEditModeAnimatorController", "startActivityJob?.cancel");
                Job job3 = this.startActivityJob;
                if (job3 != null) {
                    job3.cancel(null);
                }
            }
        }
        SystemUIWallpaperBase systemUIWallpaperBase = keyguardWallpaperController.mWallpaperView;
        if (systemUIWallpaperBase != null) {
            systemUIWallpaperBase.updateDrawState(true);
        }
    }

    public final Pair getEditModePivot() {
        KeyguardEditModeControllerImpl keyguardEditModeControllerImpl = (KeyguardEditModeControllerImpl) this.keyguardEditModeController;
        Rect bounds = keyguardEditModeControllerImpl.windowManager.getCurrentWindowMetrics().getBounds();
        return new Pair(Float.valueOf(bounds.right / 2), Float.valueOf((bounds.bottom * keyguardEditModeControllerImpl.previewTopMargin) / (1.0f - keyguardEditModeControllerImpl.previewScale)));
    }

    public final boolean isEditMode() {
        return ((KeyguardEditModeControllerImpl) this.keyguardEditModeController).isEditMode;
    }

    public final boolean isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        if (!isEditMode() && !this.animatorSet.isRunning()) {
            Log.d("KeyguardEditModeAnimatorController", "long pressed false");
            return false;
        }
        Log.d("KeyguardEditModeAnimatorController", "long pressed");
        return true;
    }

    public final boolean isNotSupportedAnimation() {
        boolean z;
        boolean z2;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.keyguardUpdateMonitor;
        if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser())) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        if (this.settingsHelper.mItemLists.get("remove_animations").getIntValue() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f0, code lost:
    
        if (r1.isActive() == true) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void resetViews() {
        /*
            r6 = this;
            java.lang.String r0 = "KeyguardEditModeAnimatorController"
            java.lang.String r1 = "resetViews"
            android.util.Log.d(r0, r1)
            android.view.View r1 = r6.getParentView()
            r2 = 1065353216(0x3f800000, float:1.0)
            r1.setScaleX(r2)
            r1.setScaleY(r2)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.List r3 = r6.noScaleViews
            java.util.Iterator r3 = r3.iterator()
        L1f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r3.next()
            r5 = r4
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            boolean r5 = r6.hasView(r5)
            if (r5 == 0) goto L1f
            r1.add(r4)
            goto L1f
        L3a:
            java.util.Iterator r1 = r1.iterator()
        L3e:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L59
            java.lang.Object r3 = r1.next()
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            android.view.View r3 = r6.getView(r3)
            r3.setScaleX(r2)
            r3.setScaleY(r2)
            goto L3e
        L59:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.List r3 = r6.alphaViews
            java.util.Iterator r3 = r3.iterator()
        L64:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L7f
            java.lang.Object r4 = r3.next()
            r5 = r4
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            boolean r5 = r6.hasView(r5)
            if (r5 == 0) goto L64
            r1.add(r4)
            goto L64
        L7f:
            java.util.Iterator r1 = r1.iterator()
        L83:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L9b
            java.lang.Object r3 = r1.next()
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            android.view.View r3 = r6.getView(r3)
            r3.setAlpha(r2)
            goto L83
        L9b:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.List r3 = r6.scaleViews
            java.util.Iterator r3 = r3.iterator()
        La6:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto Lc1
            java.lang.Object r4 = r3.next()
            r5 = r4
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            boolean r5 = r6.hasView(r5)
            if (r5 == 0) goto La6
            r1.add(r4)
            goto La6
        Lc1:
            java.util.Iterator r1 = r1.iterator()
        Lc5:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Le0
            java.lang.Object r3 = r1.next()
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            android.view.View r3 = r6.getView(r3)
            r3.setScaleX(r2)
            r3.setScaleY(r2)
            goto Lc5
        Le0:
            com.android.systemui.keyguard.KeyguardEditModeController r1 = r6.keyguardEditModeController
            com.android.systemui.keyguard.KeyguardEditModeControllerImpl r1 = (com.android.systemui.keyguard.KeyguardEditModeControllerImpl) r1
            r1.cancel()
            kotlinx.coroutines.Job r1 = r6.startActivityJob
            if (r1 == 0) goto Lf3
            boolean r1 = r1.isActive()
            r2 = 1
            if (r1 != r2) goto Lf3
            goto Lf4
        Lf3:
            r2 = 0
        Lf4:
            if (r2 == 0) goto L104
            java.lang.String r1 = "startActivityJob?.cancel"
            android.util.Log.d(r0, r1)
            kotlinx.coroutines.Job r6 = r6.startActivityJob
            if (r6 == 0) goto L104
            r0 = 0
            r6.cancel(r0)
        L104:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController.resetViews():void");
    }

    public final void startCancelAnimation() {
        boolean z;
        Log.d("KeyguardEditModeAnimatorController", "startCancelAnimation");
        if (!isKeyguardState()) {
            Log.d("KeyguardEditModeAnimatorController", "startCancelAnimation : is not keyguard state");
            resetViews();
            if (this.touchDownAnimatorSet.isRunning()) {
                this.touchDownAnimatorSet.cancel();
                return;
            }
            return;
        }
        if (getParentView().getScaleX() == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            KeyguardEditModeControllerImpl keyguardEditModeControllerImpl = (KeyguardEditModeControllerImpl) this.keyguardEditModeController;
            keyguardEditModeControllerImpl.cancel();
            keyguardEditModeControllerImpl.isEditMode = false;
            return;
        }
        if (this.cancelAnimatorSet.isRunning()) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        ViewAnimationController.setViewAnimation(animatorSet, getParentView(), 1.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.alphaViews) {
            if (hasView(((Number) obj).intValue())) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(getView(((Number) it.next()).intValue()), (Property<View, Float>) View.ALPHA, 1.0f);
            ofFloat.setInterpolator(this.alphaPathInterpolator);
            Unit unit = Unit.INSTANCE;
            animatorSet.playTogether(ofFloat);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : this.noScaleViews) {
            if (hasView(((Number) obj2).intValue())) {
                arrayList2.add(obj2);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ViewAnimationController.setViewAnimation(animatorSet, getView(((Number) it2.next()).intValue()), 1.0f, 1.0f);
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController$startCancelAnimation$2$5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ((KeyguardEditModeControllerImpl) KeyguardEditModeAnimatorController.this.keyguardEditModeController).cancel();
                ((KeyguardEditModeControllerImpl) KeyguardEditModeAnimatorController.this.keyguardEditModeController).isEditMode = false;
            }
        });
        animatorSet.setDuration(200L);
        animatorSet.start();
        this.cancelAnimatorSet = animatorSet;
    }
}
