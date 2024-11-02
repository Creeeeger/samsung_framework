package com.android.systemui.keyguard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.Trace;
import android.view.Choreographer;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.ViewRootImpl;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.keyguard.KeyguardViewController;
import com.android.systemui.LsRune;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl;
import com.android.systemui.keyguard.KeyguardSurfaceController;
import com.android.systemui.keyguard.KeyguardUnlockAnimationController;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeStateListener;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.samsung.android.os.SemPerfManager;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecLegacyUnlockAnimationControllerImpl extends KeyguardUnlockAnimationController {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ValueAnimator alphaAnimator;
    public KeyguardViewMediatorHelperImpl$setupLocked$5 callback;
    public AnimatorSet cannedAnimatorSet;
    public final Lazy centralSurfacesLazy;
    public final Context context;
    public SurfaceControl curLeash;
    public float curLeashAlpha;
    public float curLeashHeight;
    public float curLeashScale;
    public float curLeashWidth;
    public SurfaceControl.Transaction curTransaction;
    public boolean forceEnded;
    public int frameUpdatedCount;
    public final InteractionJankMonitor jankMonitor;
    public JankMonitorContext jankMonitorContext;
    public final Lazy keyguardSurfaceControllerLazy;
    public final KeyguardViewController keyguardViewController;
    public final Lazy keyguardViewMediatorLazy;
    public final Executor mainExecutor;
    public final Lazy panelExpansionStateManagerLazy;
    public final KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1 panelStateListener;
    public float reqLeashAlpha;
    public float reqLeashScale;
    public final ValueAnimator scaleAnimator;
    public final SettingsHelper settingsHelper;
    public int skipFrameCount;
    public final Matrix surfaceBehindMatrix;
    public IRemoteAnimationFinishedCallback surfaceBehindRemoteAnimationFinishedCallback;
    public final float[] tmpFloat9;
    public String traceTag;
    public final Executor unlockAnimationExecutor;
    public final KeyguardWallpaperController wallpaperController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class JankMonitorContext extends ContextWrapper {
        public final Handler handler;

        public JankMonitorContext(Context context, Handler handler) {
            super(context);
            this.handler = handler;
        }

        public final Handler getMainThreadHandler() {
            return this.handler;
        }
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1] */
    public KeyguardSecLegacyUnlockAnimationControllerImpl(Context context, Executor executor, Executor executor2, KeyguardStateController keyguardStateController, Lazy lazy, KeyguardViewController keyguardViewController, FeatureFlags featureFlags, Lazy lazy2, SysuiStatusBarStateController sysuiStatusBarStateController, NotificationShadeWindowController notificationShadeWindowController, InteractionJankMonitor interactionJankMonitor, Lazy lazy3, Lazy lazy4, Lazy lazy5, PowerManager powerManager, WallpaperManager wallpaperManager, SettingsHelper settingsHelper, KeyguardWallpaperController keyguardWallpaperController) {
        super(context, keyguardStateController, lazy, keyguardViewController, featureFlags, lazy2, sysuiStatusBarStateController, notificationShadeWindowController, powerManager, wallpaperManager);
        this.context = context;
        this.mainExecutor = executor;
        this.unlockAnimationExecutor = executor2;
        this.keyguardViewMediatorLazy = lazy;
        this.keyguardViewController = keyguardViewController;
        this.jankMonitor = interactionJankMonitor;
        this.centralSurfacesLazy = lazy3;
        this.keyguardSurfaceControllerLazy = lazy4;
        this.panelExpansionStateManagerLazy = lazy5;
        this.settingsHelper = settingsHelper;
        this.wallpaperController = keyguardWallpaperController;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.5f);
        this.scaleAnimator = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.alphaAnimator = ofFloat2;
        this.surfaceBehindMatrix = new Matrix();
        this.tmpFloat9 = new float[9];
        this.panelStateListener = new ShadeStateListener() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$panelStateListener$1
            @Override // com.android.systemui.shade.ShadeStateListener
            public final void onPanelStateChanged(int i) {
                boolean z;
                int i2 = KeyguardSecLegacyUnlockAnimationControllerImpl.$r8$clinit;
                final KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                keyguardSecLegacyUnlockAnimationControllerImpl.getClass();
                if (i != 0) {
                    Log.d("KeyguardUnlock", "onPanelStateChanged " + i);
                    keyguardSecLegacyUnlockAnimationControllerImpl.unlockAnimationExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$onPanelStateChanged$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl2 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                            keyguardSecLegacyUnlockAnimationControllerImpl2.forceEnded = true;
                            AnimatorSet animatorSet = keyguardSecLegacyUnlockAnimationControllerImpl2.cannedAnimatorSet;
                            if (animatorSet != null) {
                                animatorSet.end();
                            }
                        }
                    });
                    KeyguardSurfaceControllerImpl keyguardSurfaceControllerImpl = (KeyguardSurfaceControllerImpl) ((KeyguardSurfaceController) keyguardSecLegacyUnlockAnimationControllerImpl.keyguardSurfaceControllerLazy.get());
                    if (((ViewRootImpl) keyguardSurfaceControllerImpl.viewRootImpl$delegate.getValue()).getView().getVisibility() == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    keyguardSurfaceControllerImpl.internalRestoreKeyguardSurfaceIfVisible(z);
                    keyguardSecLegacyUnlockAnimationControllerImpl.keyguardViewController.getViewRootImpl().getView().post(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$onPanelStateChanged$2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShadeExpansionStateManager shadeExpansionStateManager = (ShadeExpansionStateManager) KeyguardSecLegacyUnlockAnimationControllerImpl.this.panelExpansionStateManagerLazy.get();
                            shadeExpansionStateManager.stateListeners.remove(KeyguardSecLegacyUnlockAnimationControllerImpl.this.panelStateListener);
                        }
                    });
                }
            }
        };
        this.reqLeashAlpha = -1.0f;
        this.reqLeashScale = -1.0f;
        this.curLeashAlpha = -1.0f;
        this.curLeashScale = -1.0f;
        ofFloat.setInterpolator(KeyguardSecLegacyUnlockAnimationControllerImplKt.CUSTOM_INTERPOLATOR);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$1$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SurfaceControl surfaceControl = keyguardSecLegacyUnlockAnimationControllerImpl.curLeash;
                if (surfaceControl != null && keyguardSecLegacyUnlockAnimationControllerImpl.curTransaction != null) {
                    if (!surfaceControl.isValid()) {
                        Log.w("KeyguardUnlock", "invalid leash");
                    } else {
                        keyguardSecLegacyUnlockAnimationControllerImpl.reqLeashScale = 1.5f - MathUtils.clamp(floatValue, 0.0f, 0.5f);
                    }
                } else {
                    Log.w("KeyguardUnlock", "updateLeashScale " + surfaceControl + " " + keyguardSecLegacyUnlockAnimationControllerImpl.curTransaction);
                }
                KeyguardSecLegacyUnlockAnimationControllerImpl.this.applyTransaction();
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$1$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                Log.d("KeyguardUnlock", "onAnimationCancel");
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                int i = keyguardSecLegacyUnlockAnimationControllerImpl.frameUpdatedCount;
                int i2 = keyguardSecLegacyUnlockAnimationControllerImpl.skipFrameCount;
                boolean z = keyguardSecLegacyUnlockAnimationControllerImpl.forceEnded;
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onAnimationEnd frameUpdatedCount=", i, " skip=", i2, " forceEnded=");
                m.append(z);
                Log.d("KeyguardUnlock", m.toString());
                final KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl2 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                keyguardSecLegacyUnlockAnimationControllerImpl2.getClass();
                Choreographer.getInstance().postCallback(1, new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$onFinished$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardSecLegacyUnlockAnimationControllerImpl.this.jankMonitor.end(29);
                        SurfaceControl.Transaction transaction = KeyguardSecLegacyUnlockAnimationControllerImpl.this.curTransaction;
                        if (transaction != null) {
                            transaction.close();
                        }
                        final KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl3 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                        keyguardSecLegacyUnlockAnimationControllerImpl3.curTransaction = null;
                        keyguardSecLegacyUnlockAnimationControllerImpl3.curLeash = null;
                        keyguardSecLegacyUnlockAnimationControllerImpl3.mainExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$onFinished$1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback = KeyguardSecLegacyUnlockAnimationControllerImpl.this.surfaceBehindRemoteAnimationFinishedCallback;
                                    if (iRemoteAnimationFinishedCallback != null) {
                                        iRemoteAnimationFinishedCallback.onAnimationFinished();
                                    }
                                    Log.d("KeyguardUnlock", "IRemoteAnimationFinishedCallback#onAnimationFinished");
                                } catch (RemoteException e) {
                                    e.printStackTrace();
                                }
                                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl4 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                                keyguardSecLegacyUnlockAnimationControllerImpl4.surfaceBehindRemoteAnimationFinishedCallback = null;
                                ShadeExpansionStateManager shadeExpansionStateManager = (ShadeExpansionStateManager) keyguardSecLegacyUnlockAnimationControllerImpl4.panelExpansionStateManagerLazy.get();
                                shadeExpansionStateManager.stateListeners.remove(KeyguardSecLegacyUnlockAnimationControllerImpl.this.panelStateListener);
                            }
                        });
                    }
                }, null);
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator, boolean z) {
                Integer num;
                ArrayList<Animator> childAnimations;
                SurfaceControl surfaceControl;
                ArrayList<Animator> childAnimations2;
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                int i = KeyguardSecLegacyUnlockAnimationControllerImpl.$r8$clinit;
                AnimatorSet animatorSet = keyguardSecLegacyUnlockAnimationControllerImpl.cannedAnimatorSet;
                Integer num2 = null;
                if (animatorSet != null && (childAnimations2 = animatorSet.getChildAnimations()) != null) {
                    num = Integer.valueOf(childAnimations2.size());
                } else {
                    num = null;
                }
                Log.d("KeyguardUnlock", "onAnimationStart " + num);
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl2 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                SurfaceControl surfaceControl2 = keyguardSecLegacyUnlockAnimationControllerImpl2.keyguardViewController.getViewRootImpl().getSurfaceControl();
                if (keyguardSecLegacyUnlockAnimationControllerImpl2.curTransaction != null && surfaceControl2.isValid()) {
                    long j = surfaceControl2.mNativeObject;
                    if (LsRune.SECURITY_BOUNCER_WINDOW) {
                        surfaceControl = ((CentralSurfacesImpl) ((CentralSurfaces) keyguardSecLegacyUnlockAnimationControllerImpl2.centralSurfacesLazy.get())).mBouncerContainer.getViewRootImpl().getSurfaceControl();
                    } else {
                        surfaceControl = null;
                    }
                    SurfaceControl.Transaction transaction = keyguardSecLegacyUnlockAnimationControllerImpl2.curTransaction;
                    if (transaction != null) {
                        if (surfaceControl2.isValid()) {
                            try {
                                transaction.setAlpha(surfaceControl2, 0.01f);
                            } catch (NullPointerException e) {
                                e.printStackTrace();
                                Log.d("KeyguardUnlock", "previousSurface : " + surfaceControl2 + ", id : " + Long.toHexString(j) + ", currentSurface : " + keyguardSecLegacyUnlockAnimationControllerImpl2.keyguardViewController.getViewRootImpl().getSurfaceControl() + ", id : " + Long.toHexString(keyguardSecLegacyUnlockAnimationControllerImpl2.keyguardViewController.getViewRootImpl().getSurfaceControl().mNativeObject));
                            }
                        }
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            transaction.setAlpha(surfaceControl, 0.0f);
                        }
                        transaction.apply();
                    }
                    if (((KeyguardViewMediator) keyguardSecLegacyUnlockAnimationControllerImpl2.keyguardViewMediatorLazy.get()).getViewMediatorCallback().isScreenOn()) {
                        keyguardSecLegacyUnlockAnimationControllerImpl2.wallpaperController.hideLockOnlyLiveWallpaperImmediately();
                    }
                }
                AnimatorSet animatorSet2 = keyguardSecLegacyUnlockAnimationControllerImpl2.cannedAnimatorSet;
                if (animatorSet2 != null && (childAnimations = animatorSet2.getChildAnimations()) != null) {
                    num2 = Integer.valueOf(childAnimations.size());
                }
                if (num2 != null && num2.intValue() == 1) {
                    keyguardSecLegacyUnlockAnimationControllerImpl2.updateLeashAlpha(1.0f);
                    keyguardSecLegacyUnlockAnimationControllerImpl2.applyTransaction();
                }
            }
        });
        ofFloat2.setInterpolator(KeyguardSecLegacyUnlockAnimationControllerImplKt.SINE_IN_OUT_33);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$2$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                float floatValue = (((Float) valueAnimator.getAnimatedValue()).floatValue() / 2) + 0.5f;
                int i = KeyguardSecLegacyUnlockAnimationControllerImpl.$r8$clinit;
                keyguardSecLegacyUnlockAnimationControllerImpl.updateLeashAlpha(floatValue);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void applyTransaction() {
        /*
            r8 = this;
            android.view.SurfaceControl$Transaction r0 = r8.curTransaction
            if (r0 == 0) goto La5
            float r1 = r8.reqLeashAlpha
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r3 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r4 = 0
            r5 = 1
            if (r3 != 0) goto L10
            r3 = r5
            goto L11
        L10:
            r3 = r4
        L11:
            java.lang.String r6 = "%.2f"
            if (r3 != 0) goto L45
            float r3 = r8.curLeashAlpha
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 != 0) goto L1d
            r3 = r5
            goto L1e
        L1d:
            r3 = r4
        L1e:
            if (r3 != 0) goto L45
            java.lang.Float r1 = java.lang.Float.valueOf(r1)
            java.lang.Object[] r1 = new java.lang.Object[]{r1}
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r1, r5)
            java.lang.String r1 = java.lang.String.format(r6, r1)
            java.lang.String r3 = "setAlpha "
            java.lang.String r1 = r3.concat(r1)
            com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$1 r3 = new com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$1
            r3.<init>()
            r8.trace(r3, r1)
            float r1 = r8.reqLeashAlpha
            r8.curLeashAlpha = r1
            r1 = r5
            goto L46
        L45:
            r1 = r4
        L46:
            float r3 = r8.reqLeashScale
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 != 0) goto L4e
            r2 = r5
            goto L4f
        L4e:
            r2 = r4
        L4f:
            if (r2 != 0) goto L8b
            float r2 = r8.curLeashScale
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 != 0) goto L59
            r2 = r5
            goto L5a
        L59:
            r2 = r4
        L5a:
            if (r2 != 0) goto L8b
            android.graphics.Matrix r2 = r8.surfaceBehindMatrix
            float r4 = r8.curLeashWidth
            float r7 = r8.curLeashHeight
            r2.setScale(r3, r3, r4, r7)
            float r2 = r8.reqLeashScale
            java.lang.Float r2 = java.lang.Float.valueOf(r2)
            java.lang.Object[] r2 = new java.lang.Object[]{r2}
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r2, r5)
            java.lang.String r2 = java.lang.String.format(r6, r2)
            java.lang.String r3 = "setMatrix "
            java.lang.String r2 = r3.concat(r2)
            com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2 r3 = new com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2
            r3.<init>()
            r8.trace(r3, r2)
            float r2 = r8.reqLeashScale
            r8.curLeashScale = r2
            r4 = r5
        L8b:
            if (r1 != 0) goto L96
            if (r4 == 0) goto L90
            goto L96
        L90:
            int r0 = r8.skipFrameCount
            int r0 = r0 + r5
            r8.skipFrameCount = r0
            goto La5
        L96:
            com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$3 r1 = new com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$3
            r1.<init>()
            java.lang.String r0 = "apply"
            r8.trace(r1, r0)
            int r0 = r8.frameUpdatedCount
            int r0 = r0 + r5
            r8.frameUpdatedCount = r0
        La5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl.applyTransaction():void");
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController
    public final long getUnlockAnimationDuration() {
        return this.settingsHelper.getTransitionAnimationScale() * ((float) 250);
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController
    public final void notifyFinishedKeyguardExitAnimation(boolean z) {
        Log.d("KeyguardUnlock", "notifyFinishedKeyguardExitAnimation");
        this.surfaceBehindRemoteAnimationTargets = null;
        super.notifyFinishedKeyguardExitAnimation(z);
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController
    public final void notifyStartSurfaceBehindRemoteAnimation(RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, long j, boolean z) {
        this.surfaceBehindRemoteAnimationTargets = remoteAnimationTargetArr;
        this.surfaceBehindRemoteAnimationStartTime = j;
        playCannedUnlockAnimation();
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((KeyguardUnlockAnimationController.KeyguardUnlockAnimationListener) it.next()).onUnlockAnimationStarted(true, true);
        }
        finishKeyguardExitRemoteAnimationIfReachThreshold();
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController
    public final void playCannedUnlockAnimation() {
        final RemoteAnimationTarget remoteAnimationTarget;
        this.playingCannedUnlockAnimation = false;
        RemoteAnimationTarget[] remoteAnimationTargetArr = this.surfaceBehindRemoteAnimationTargets;
        if (remoteAnimationTargetArr != null) {
            remoteAnimationTarget = remoteAnimationTargetArr[0];
        } else {
            remoteAnimationTarget = null;
        }
        KeyguardViewMediatorHelperImpl$setupLocked$5 keyguardViewMediatorHelperImpl$setupLocked$5 = this.callback;
        if (keyguardViewMediatorHelperImpl$setupLocked$5 != null) {
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = keyguardViewMediatorHelperImpl$setupLocked$5.this$0;
            this.surfaceBehindRemoteAnimationFinishedCallback = (IRemoteAnimationFinishedCallback) keyguardViewMediatorHelperImpl.getViewMediatorProvider().getSurfaceBehindRemoteAnimationFinishedCallback.invoke();
            keyguardViewMediatorHelperImpl.getViewMediatorProvider().resetSurfaceBehindRemoteAnimationFinishedCallback.invoke();
        }
        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) this.keyguardViewMediatorLazy.get();
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = keyguardViewMediator.mHelper;
        String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
        keyguardViewMediatorHelperImpl2.getViewMediatorProvider().adjustStatusBarLocked.invoke();
        keyguardViewMediator.exitKeyguardAndFinishSurfaceBehindRemoteAnimation(false);
        KeyguardSurfaceController.DefaultImpls.setKeyguardSurfaceAppearAmount$default((KeyguardSurfaceController) this.keyguardSurfaceControllerLazy.get());
        ShadeExpansionStateManager shadeExpansionStateManager = (ShadeExpansionStateManager) this.panelExpansionStateManagerLazy.get();
        shadeExpansionStateManager.stateListeners.add(this.panelStateListener);
        this.unlockAnimationExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$3
            @Override // java.lang.Runnable
            public final void run() {
                String str2;
                ActivityManager.RunningTaskInfo runningTaskInfo;
                ComponentName componentName;
                SemPerfManager.sendCommandToSsrm("TASK_BOOST", Process.myTid() + "/300");
                AnimatorSet animatorSet = KeyguardSecLegacyUnlockAnimationControllerImpl.this.cannedAnimatorSet;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                AnimatorSet animatorSet2 = new AnimatorSet();
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl2 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                RemoteAnimationTarget remoteAnimationTarget2 = remoteAnimationTarget;
                animatorSet2.setDuration(keyguardSecLegacyUnlockAnimationControllerImpl2.getUnlockAnimationDuration());
                KeyguardSecLegacyUnlockAnimationControllerImpl.JankMonitorContext jankMonitorContext = null;
                if (remoteAnimationTarget2 != null && (runningTaskInfo = remoteAnimationTarget2.taskInfo) != null && (componentName = runningTaskInfo.topActivity) != null) {
                    str2 = componentName.getClassName();
                } else {
                    str2 = null;
                }
                if (Intrinsics.areEqual(str2, "com.sec.android.app.launcher.Launcher")) {
                    animatorSet2.playTogether(keyguardSecLegacyUnlockAnimationControllerImpl2.alphaAnimator, keyguardSecLegacyUnlockAnimationControllerImpl2.scaleAnimator);
                } else {
                    animatorSet2.play(keyguardSecLegacyUnlockAnimationControllerImpl2.scaleAnimator);
                }
                keyguardSecLegacyUnlockAnimationControllerImpl.cannedAnimatorSet = animatorSet2;
                KeyguardSecLegacyUnlockAnimationControllerImpl.this.curTransaction = new SurfaceControl.Transaction();
                RemoteAnimationTarget remoteAnimationTarget3 = remoteAnimationTarget;
                if (remoteAnimationTarget3 != null) {
                    KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl3 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                    SurfaceControl surfaceControl = remoteAnimationTarget3.leash;
                    keyguardSecLegacyUnlockAnimationControllerImpl3.curLeash = surfaceControl;
                    keyguardSecLegacyUnlockAnimationControllerImpl3.traceTag = surfaceControl.toString();
                    Rect rect = remoteAnimationTarget3.screenSpaceBounds;
                    keyguardSecLegacyUnlockAnimationControllerImpl3.curLeashWidth = rect.width() / 2.0f;
                    keyguardSecLegacyUnlockAnimationControllerImpl3.curLeashHeight = rect.height() / 2.0f;
                }
                KeyguardSecLegacyUnlockAnimationControllerImpl keyguardSecLegacyUnlockAnimationControllerImpl4 = KeyguardSecLegacyUnlockAnimationControllerImpl.this;
                keyguardSecLegacyUnlockAnimationControllerImpl4.skipFrameCount = 0;
                keyguardSecLegacyUnlockAnimationControllerImpl4.frameUpdatedCount = 0;
                keyguardSecLegacyUnlockAnimationControllerImpl4.forceEnded = false;
                keyguardSecLegacyUnlockAnimationControllerImpl4.reqLeashAlpha = -1.0f;
                keyguardSecLegacyUnlockAnimationControllerImpl4.reqLeashScale = -1.0f;
                keyguardSecLegacyUnlockAnimationControllerImpl4.curLeashAlpha = -1.0f;
                keyguardSecLegacyUnlockAnimationControllerImpl4.curLeashScale = -1.0f;
                InteractionJankMonitor interactionJankMonitor = keyguardSecLegacyUnlockAnimationControllerImpl4.jankMonitor;
                KeyguardSecLegacyUnlockAnimationControllerImpl.JankMonitorContext jankMonitorContext2 = keyguardSecLegacyUnlockAnimationControllerImpl4.jankMonitorContext;
                if (jankMonitorContext2 == null) {
                    Looper myLooper = Looper.myLooper();
                    if (myLooper != null) {
                        jankMonitorContext = new KeyguardSecLegacyUnlockAnimationControllerImpl.JankMonitorContext(keyguardSecLegacyUnlockAnimationControllerImpl4.context, new Handler(myLooper));
                        keyguardSecLegacyUnlockAnimationControllerImpl4.jankMonitorContext = jankMonitorContext;
                    }
                } else {
                    jankMonitorContext = jankMonitorContext2;
                }
                interactionJankMonitor.begin(InteractionJankMonitor.Configuration.Builder.withSurface(29, jankMonitorContext, keyguardSecLegacyUnlockAnimationControllerImpl4.curLeash).setTag("KeyguardUnlock"));
                AnimatorSet animatorSet3 = KeyguardSecLegacyUnlockAnimationControllerImpl.this.cannedAnimatorSet;
                if (animatorSet3 != null) {
                    animatorSet3.start();
                }
            }
        });
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController
    public final void setCallback(KeyguardViewMediatorHelperImpl$setupLocked$5 keyguardViewMediatorHelperImpl$setupLocked$5) {
        this.callback = keyguardViewMediatorHelperImpl$setupLocked$5;
    }

    public final void trace(Runnable runnable, String str) {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(this.traceTag, "#", str);
        if (m.length() > 127) {
            m = m.substring(0, 126);
        }
        Trace.beginSection(m);
        runnable.run();
        Trace.endSection();
    }

    public final void updateLeashAlpha(float f) {
        SurfaceControl surfaceControl = this.curLeash;
        if (surfaceControl != null && this.curTransaction != null) {
            Intrinsics.checkNotNull(surfaceControl);
            if (!surfaceControl.isValid()) {
                Log.w("KeyguardUnlock", "invalid leash");
                return;
            } else {
                this.reqLeashAlpha = f;
                return;
            }
        }
        Log.w("KeyguardUnlock", "updateLeashAlpha " + surfaceControl + " " + this.curTransaction);
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController, com.android.systemui.statusbar.policy.KeyguardStateController.Callback
    public final void onKeyguardDismissAmountChanged() {
    }

    @Override // com.android.systemui.keyguard.KeyguardUnlockAnimationController
    public final void setSurfaceBehindAppearAmount(float f, boolean z) {
    }
}
