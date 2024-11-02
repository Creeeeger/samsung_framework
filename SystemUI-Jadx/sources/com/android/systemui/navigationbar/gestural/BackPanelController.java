package com.android.systemui.navigationbar.gestural;

import android.content.res.Resources;
import android.graphics.Point;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.util.MathUtils;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.core.animation.Interpolator;
import androidx.core.animation.PathInterpolator;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.internal.util.LatencyTracker;
import com.android.systemui.BasicRune;
import com.android.systemui.navigationbar.gestural.BackPanel;
import com.android.systemui.navigationbar.gestural.BackPanelController;
import com.android.systemui.navigationbar.gestural.EdgePanelParams;
import com.android.systemui.navigationbar.gestural.Step;
import com.android.systemui.plugins.NavigationEdgeBackPlugin;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.ViewController;
import java.io.PrintWriter;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BackPanelController extends ViewController implements NavigationEdgeBackPlugin {
    public NavigationEdgeBackPlugin.BackCallback backCallback;
    public final ConfigurationController configurationController;
    public final BackPanelController$configurationListener$1 configurationListener;
    public GestureState currentState;
    public final Point displaySize;
    public float entryToActiveDelay;
    public final Function0 entryToActiveDelayCalculation;
    public final BackPanelController$failsafeRunnable$1 failsafeRunnable;
    public float fullyStretchedThreshold;
    public long gestureEntryTime;
    public long gestureInactiveTime;
    public boolean hasPassedDragSlop;
    public WindowManager.LayoutParams layoutParams;
    public final Handler mainHandler;
    public int minFlingDistance;
    public final DelayedOnAnimationEndListener onAlphaEndSetGoneStateListener;
    public final DelayedOnAnimationEndListener onEndSetCommittedStateListener;
    public final DelayedOnAnimationEndListener onEndSetGoneStateListener;
    public final EdgePanelParams params;
    public long pastThresholdWhileEntryOrInactiveTime;
    public Interpolator previousPreThresholdWidthInterpolator;
    public GestureState previousState;
    public float previousXTranslation;
    public float previousXTranslationOnActiveOffset;
    public float startX;
    public float startY;
    public float totalTouchDeltaActive;
    public float totalTouchDeltaInactive;
    public float touchDeltaStartX;
    public VelocityTracker velocityTracker;
    public final VibratorHelper vibratorHelper;
    public final ViewConfiguration viewConfiguration;
    public final WindowManager windowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DelayedOnAnimationEndListener implements DynamicAnimation.OnAnimationEndListener {
        public final Handler handler;
        public final Runnable runnable;
        public final long runnableDelay;

        public DelayedOnAnimationEndListener(Handler handler, long j, Runnable runnable) {
            this.handler = handler;
            this.runnableDelay = j;
            this.runnable = runnable;
        }

        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
        public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            dynamicAnimation.removeEndListener(this);
            if (!z) {
                BackPanelController backPanelController = BackPanelController.this;
                backPanelController.getClass();
                this.handler.postDelayed(this.runnable, Math.max(0L, this.runnableDelay - (SystemClock.uptimeMillis() - backPanelController.gestureEntryTime)));
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        public final ConfigurationController configurationController;
        public final LatencyTracker latencyTracker;
        public final Handler mainHandler;
        public final VibratorHelper vibratorHelper;
        public final ViewConfiguration viewConfiguration;
        public final WindowManager windowManager;

        public Factory(WindowManager windowManager, ViewConfiguration viewConfiguration, Handler handler, VibratorHelper vibratorHelper, ConfigurationController configurationController, LatencyTracker latencyTracker) {
            this.windowManager = windowManager;
            this.viewConfiguration = viewConfiguration;
            this.mainHandler = handler;
            this.vibratorHelper = vibratorHelper;
            this.configurationController = configurationController;
            this.latencyTracker = latencyTracker;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum GestureState {
        GONE,
        ENTRY,
        ACTIVE,
        INACTIVE,
        FLUNG,
        COMMITTED,
        CANCELLED
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GestureState.values().length];
            try {
                iArr[GestureState.ENTRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GestureState.INACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GestureState.ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GestureState.GONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GestureState.FLUNG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GestureState.COMMITTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GestureState.CANCELLED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.android.systemui.navigationbar.gestural.BackPanelController$configurationListener$1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.systemui.navigationbar.gestural.BackPanelController$failsafeRunnable$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public BackPanelController(android.content.Context r13, android.view.WindowManager r14, android.view.ViewConfiguration r15, android.os.Handler r16, com.android.systemui.statusbar.VibratorHelper r17, com.android.systemui.statusbar.policy.ConfigurationController r18, com.android.internal.util.LatencyTracker r19) {
        /*
            r12 = this;
            r6 = r12
            r0 = r13
            r1 = r19
            boolean r2 = com.android.systemui.BasicRune.NAVBAR_GESTURE
            if (r2 == 0) goto L16
            com.android.systemui.navigationbar.gestural.SamsungBackPanel r2 = new com.android.systemui.navigationbar.gestural.SamsungBackPanel
            java.lang.Class<com.android.systemui.navigationbar.store.NavBarStore> r3 = com.android.systemui.navigationbar.store.NavBarStore.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.navigationbar.store.NavBarStore r3 = (com.android.systemui.navigationbar.store.NavBarStore) r3
            r2.<init>(r13, r1, r3)
            goto L1b
        L16:
            com.android.systemui.navigationbar.gestural.BackPanel r2 = new com.android.systemui.navigationbar.gestural.BackPanel
            r2.<init>(r13, r1)
        L1b:
            r12.<init>(r2)
            r0 = r14
            r6.windowManager = r0
            r0 = r15
            r6.viewConfiguration = r0
            r7 = r16
            r6.mainHandler = r7
            r0 = r17
            r6.vibratorHelper = r0
            r0 = r18
            r6.configurationController = r0
            com.android.systemui.navigationbar.gestural.EdgePanelParams r8 = new com.android.systemui.navigationbar.gestural.EdgePanelParams
            android.content.res.Resources r0 = r12.getResources()
            r8.<init>(r0)
            r6.params = r8
            com.android.systemui.navigationbar.gestural.BackPanelController$GestureState r0 = com.android.systemui.navigationbar.gestural.BackPanelController.GestureState.GONE
            r6.currentState = r0
            r6.previousState = r0
            android.graphics.Point r0 = new android.graphics.Point
            r0.<init>()
            r6.displaySize = r0
            com.android.systemui.navigationbar.gestural.BackPanelController$entryToActiveDelayCalculation$1 r0 = new com.android.systemui.navigationbar.gestural.BackPanelController$entryToActiveDelayCalculation$1
            r0.<init>()
            r6.entryToActiveDelayCalculation = r0
            com.android.systemui.navigationbar.gestural.BackPanelController$failsafeRunnable$1 r0 = new com.android.systemui.navigationbar.gestural.BackPanelController$failsafeRunnable$1
            r0.<init>()
            r6.failsafeRunnable = r0
            com.android.systemui.navigationbar.gestural.BackPanelController$DelayedOnAnimationEndListener r9 = new com.android.systemui.navigationbar.gestural.BackPanelController$DelayedOnAnimationEndListener
            r10 = 0
            com.android.systemui.navigationbar.gestural.BackPanelController$onEndSetCommittedStateListener$1 r5 = new com.android.systemui.navigationbar.gestural.BackPanelController$onEndSetCommittedStateListener$1
            r5.<init>()
            r3 = 0
            r0 = r9
            r1 = r12
            r2 = r16
            r0.<init>(r2, r3, r5)
            r6.onEndSetCommittedStateListener = r9
            com.android.systemui.navigationbar.gestural.BackPanelController$DelayedOnAnimationEndListener r9 = new com.android.systemui.navigationbar.gestural.BackPanelController$DelayedOnAnimationEndListener
            com.android.systemui.navigationbar.gestural.BackPanelController$onEndSetGoneStateListener$1 r5 = new com.android.systemui.navigationbar.gestural.BackPanelController$onEndSetGoneStateListener$1
            r5.<init>()
            r0 = r9
            r0.<init>(r2, r3, r5)
            r6.onEndSetGoneStateListener = r9
            com.android.systemui.navigationbar.gestural.BackPanelController$DelayedOnAnimationEndListener r9 = new com.android.systemui.navigationbar.gestural.BackPanelController$DelayedOnAnimationEndListener
            com.android.systemui.navigationbar.gestural.BackPanelController$onAlphaEndSetGoneStateListener$1 r5 = new com.android.systemui.navigationbar.gestural.BackPanelController$onAlphaEndSetGoneStateListener$1
            r5.<init>()
            r0 = r9
            r3 = r10
            r0.<init>(r2, r3, r5)
            r6.onAlphaEndSetGoneStateListener = r9
            com.android.systemui.navigationbar.gestural.BackPanelController$configurationListener$1 r0 = new com.android.systemui.navigationbar.gestural.BackPanelController$configurationListener$1
            r0.<init>()
            r6.configurationListener = r0
            androidx.core.animation.PathInterpolator r0 = r8.entryWidthInterpolator
            if (r0 == 0) goto L91
            goto L92
        L91:
            r0 = 0
        L92:
            r6.previousPreThresholdWidthInterpolator = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.BackPanelController.<init>(android.content.Context, android.view.WindowManager, android.view.ViewConfiguration, android.os.Handler, com.android.systemui.statusbar.VibratorHelper, com.android.systemui.statusbar.policy.ConfigurationController, com.android.internal.util.LatencyTracker):void");
    }

    public static boolean isFlungAwayFromEdge$default(BackPanelController backPanelController, float f) {
        float f2;
        float f3;
        boolean z;
        float f4 = backPanelController.touchDeltaStartX;
        if (((BackPanel) backPanelController.mView).isLeftPanel) {
            f2 = f - f4;
        } else {
            f2 = f4 - f;
        }
        if (backPanelController.velocityTracker == null) {
            backPanelController.velocityTracker = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker = backPanelController.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(1000);
            Float valueOf = Float.valueOf(velocityTracker.getXVelocity());
            valueOf.floatValue();
            if (!((BackPanel) backPanelController.mView).isLeftPanel) {
                valueOf = null;
            }
            if (valueOf != null) {
                f3 = valueOf.floatValue();
            } else {
                f3 = velocityTracker.getXVelocity() * (-1);
            }
        } else {
            f3 = 0.0f;
        }
        if (f3 > backPanelController.viewConfiguration.getScaledMinimumFlingVelocity()) {
            z = true;
        } else {
            z = false;
        }
        if (f2 > backPanelController.minFlingDistance && z) {
            return true;
        }
        return false;
    }

    public static boolean isPastThresholdToActive$default(BackPanelController backPanelController, boolean z, final Float f, Function0 function0, int i) {
        boolean z2;
        if ((i & 2) != 0) {
            f = null;
        }
        if ((i & 4) != 0) {
            function0 = new Function0() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$isPastThresholdToActive$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float f2;
                    Float f3 = f;
                    if (f3 != null) {
                        f2 = f3.floatValue();
                    } else {
                        f2 = 0.0f;
                    }
                    return Float.valueOf(f2);
                }
            };
        }
        boolean z3 = true;
        if (backPanelController.pastThresholdWhileEntryOrInactiveTime == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z) {
            backPanelController.pastThresholdWhileEntryOrInactiveTime = 0L;
            return false;
        }
        if (z2) {
            backPanelController.pastThresholdWhileEntryOrInactiveTime = SystemClock.uptimeMillis();
            backPanelController.entryToActiveDelay = ((Number) function0.invoke()).floatValue();
        }
        if (((float) (SystemClock.uptimeMillis() - backPanelController.pastThresholdWhileEntryOrInactiveTime)) <= backPanelController.entryToActiveDelay) {
            z3 = false;
        }
        return z3;
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void dump(PrintWriter printWriter) {
        printWriter.println("BackPanelController:");
        printWriter.println("  currentState=" + this.currentState);
        printWriter.println("  isLeftPanel=" + this.mView + ".isLeftPanel");
    }

    @Override // com.android.systemui.plugins.Plugin
    public final void onDestroy() {
        this.mainHandler.removeCallbacks(this.failsafeRunnable);
        this.windowManager.removeView(this.mView);
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void onMotionEvent(MotionEvent motionEvent) {
        WindowManager.LayoutParams layoutParams;
        WindowManager.LayoutParams layoutParams2;
        VelocityTracker velocityTracker;
        boolean z;
        float f;
        boolean z2;
        boolean z3;
        Float valueOf;
        EdgePanelParams.BackIndicatorDimens entryIndicator;
        Step.Value value;
        float f2;
        Step.Value value2;
        Interpolator interpolator;
        float f3;
        float f4;
        Step.Value value3;
        EdgePanelParams.BackIndicatorDimens backIndicatorDimens;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        VelocityTracker velocityTracker2;
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker3 = this.velocityTracker;
        Intrinsics.checkNotNull(velocityTracker3);
        velocityTracker3.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        EdgePanelParams edgePanelParams = this.params;
        Handler handler = this.mainHandler;
        boolean z12 = false;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        updateArrowState(GestureState.GONE, false);
                        if (!Intrinsics.areEqual(this.velocityTracker, null) && (velocityTracker2 = this.velocityTracker) != null) {
                            velocityTracker2.recycle();
                        }
                        this.velocityTracker = null;
                        return;
                    }
                    return;
                }
                float x = motionEvent.getX();
                float f5 = this.startX;
                boolean z13 = this.hasPassedDragSlop;
                ViewConfiguration viewConfiguration = this.viewConfiguration;
                if (z13) {
                    z = true;
                } else {
                    if (Math.abs(x - f5) > viewConfiguration.getScaledEdgeSlop()) {
                        updateArrowState(GestureState.ENTRY, false);
                        View view = this.mView;
                        WindowManager.LayoutParams layoutParams3 = this.layoutParams;
                        if (layoutParams3 == null) {
                            layoutParams3 = null;
                        }
                        this.windowManager.updateViewLayout(view, layoutParams3);
                        BackPanel backPanel = (BackPanel) this.mView;
                        backPanel.latencyTracker.onActionStart(15);
                        backPanel.trackingBackArrowLatency = true;
                        this.hasPassedDragSlop = true;
                    }
                    z = this.hasPassedDragSlop;
                }
                if (z) {
                    float x2 = motionEvent.getX();
                    float y = motionEvent.getY() - this.startY;
                    float abs = Math.abs(y);
                    if (((BackPanel) this.mView).isLeftPanel) {
                        f = x2 - this.startX;
                    } else {
                        f = this.startX - x2;
                    }
                    float max = Math.max(0.0f, f);
                    float f6 = max - this.previousXTranslation;
                    this.previousXTranslation = max;
                    if (Math.abs(f6) > 0.0f) {
                        if (Math.signum(f6) == Math.signum(this.totalTouchDeltaActive)) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        ClosedFloatRange closedFloatRange = edgePanelParams.dynamicTriggerThresholdRange;
                        if (closedFloatRange == null) {
                            closedFloatRange = null;
                        }
                        Float valueOf2 = Float.valueOf(this.totalTouchDeltaActive);
                        closedFloatRange.getClass();
                        float floatValue = valueOf2.floatValue();
                        if (floatValue >= closedFloatRange._start && floatValue <= closedFloatRange._endInclusive) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z9 && !z10) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        if (z11) {
                            this.totalTouchDeltaActive += f6;
                        } else {
                            this.totalTouchDeltaActive = f6;
                            this.touchDeltaStartX = x2;
                        }
                        float f7 = -viewConfiguration.getScaledTouchSlop();
                        float f8 = this.totalTouchDeltaInactive + f6;
                        if (f8 >= f7) {
                            f7 = f8;
                        }
                        this.totalTouchDeltaInactive = f7;
                    }
                    if (2 * max >= abs) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (max > edgePanelParams.staticTriggerThreshold) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    GestureState gestureState = this.currentState;
                    int[] iArr = WhenMappings.$EnumSwitchMapping$0;
                    int i = iArr[gestureState.ordinal()];
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                if (this.totalTouchDeltaActive <= (-edgePanelParams.deactivationTriggerThreshold)) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                if (SystemClock.uptimeMillis() - this.gestureEntryTime > 300) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z2 && !z6) {
                                    z8 = false;
                                } else {
                                    z8 = true;
                                }
                                if (z8 && z7) {
                                    updateArrowState(GestureState.INACTIVE, false);
                                }
                            }
                        } else {
                            if (this.totalTouchDeltaInactive >= edgePanelParams.reactivationTriggerThreshold) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (z3 && z4 && z2) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (isPastThresholdToActive$default(this, z5, Float.valueOf(160.0f), null, 4)) {
                                updateArrowState(GestureState.ACTIVE, false);
                            }
                        }
                    } else if (isPastThresholdToActive$default(this, z3, null, this.entryToActiveDelayCalculation, 2)) {
                        updateArrowState(GestureState.ACTIVE, false);
                    }
                    int i2 = iArr[this.currentState.ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3 || BasicRune.NAVBAR_GESTURE) {
                                valueOf = null;
                            } else {
                                valueOf = Float.valueOf(MathUtils.saturate((max - this.previousXTranslationOnActiveOffset) / this.fullyStretchedThreshold));
                            }
                        } else {
                            valueOf = Float.valueOf(MathUtils.saturate(this.totalTouchDeltaInactive / edgePanelParams.reactivationTriggerThreshold));
                        }
                    } else {
                        valueOf = Float.valueOf(MathUtils.saturate(max / edgePanelParams.staticTriggerThreshold));
                    }
                    if (valueOf != null) {
                        valueOf.floatValue();
                        int i3 = iArr[this.currentState.ordinal()];
                        if (i3 != 1) {
                            if (i3 != 2) {
                                if (i3 == 3) {
                                    float floatValue2 = valueOf.floatValue();
                                    BackPanel backPanel2 = (BackPanel) this.mView;
                                    PathInterpolator pathInterpolator = edgePanelParams.horizontalTranslationInterpolator;
                                    if (pathInterpolator == null) {
                                        pathInterpolator = null;
                                    }
                                    float interpolation = pathInterpolator.getInterpolation(floatValue2);
                                    Interpolator interpolator2 = edgePanelParams.arrowAngleInterpolator;
                                    if (interpolator2 == null) {
                                        interpolator2 = null;
                                    }
                                    float interpolation2 = interpolator2.getInterpolation(floatValue2);
                                    PathInterpolator pathInterpolator2 = edgePanelParams.activeWidthInterpolator;
                                    if (pathInterpolator2 == null) {
                                        pathInterpolator2 = null;
                                    }
                                    float interpolation3 = pathInterpolator2.getInterpolation(floatValue2);
                                    EdgePanelParams.BackIndicatorDimens backIndicatorDimens2 = edgePanelParams.fullyStretchedIndicator;
                                    if (backIndicatorDimens2 != null) {
                                        backIndicatorDimens = backIndicatorDimens2;
                                    } else {
                                        backIndicatorDimens = null;
                                    }
                                    backPanel2.setStretch(interpolation, interpolation2, 1.0f, interpolation3, 1.0f, 1.0f, 1.0f, backIndicatorDimens);
                                }
                            } else {
                                float floatValue3 = valueOf.floatValue();
                                BackPanel backPanel3 = (BackPanel) this.mView;
                                Interpolator interpolator3 = edgePanelParams.arrowAngleInterpolator;
                                if (interpolator3 == null) {
                                    interpolator3 = null;
                                }
                                float interpolation4 = interpolator3.getInterpolation(floatValue3);
                                if (this.totalTouchDeltaInactive > viewConfiguration.getScaledTouchSlop()) {
                                    z12 = true;
                                }
                                if (z12) {
                                    if (this.totalTouchDeltaInactive <= 0.0f ? (interpolator = edgePanelParams.entryWidthTowardsEdgeInterpolator) == null : (interpolator = edgePanelParams.entryWidthInterpolator) == null) {
                                        interpolator = null;
                                    }
                                } else {
                                    interpolator = this.previousPreThresholdWidthInterpolator;
                                }
                                this.previousPreThresholdWidthInterpolator = interpolator;
                                float interpolation5 = interpolator.getInterpolation(floatValue3);
                                if (interpolation5 < 0.0f) {
                                    f3 = 0.0f;
                                } else {
                                    f3 = interpolation5;
                                }
                                PathInterpolator pathInterpolator3 = edgePanelParams.heightInterpolator;
                                if (pathInterpolator3 == null) {
                                    pathInterpolator3 = null;
                                }
                                float interpolation6 = pathInterpolator3.getInterpolation(floatValue3);
                                Step step = edgePanelParams.getPreThresholdIndicator().arrowDimens.alphaInterpolator;
                                if (step != null && (value3 = step.get(floatValue3)) != null) {
                                    f4 = ((Number) value3.value).floatValue();
                                } else {
                                    f4 = 0.0f;
                                }
                                PathInterpolator pathInterpolator4 = edgePanelParams.edgeCornerInterpolator;
                                if (pathInterpolator4 == null) {
                                    pathInterpolator4 = null;
                                }
                                float interpolation7 = pathInterpolator4.getInterpolation(floatValue3);
                                PathInterpolator pathInterpolator5 = edgePanelParams.farCornerInterpolator;
                                if (pathInterpolator5 == null) {
                                    pathInterpolator5 = null;
                                }
                                backPanel3.setStretch(0.0f, interpolation4, f4, f3, interpolation6, interpolation7, pathInterpolator5.getInterpolation(floatValue3), edgePanelParams.getPreThresholdIndicator());
                            }
                        } else {
                            float floatValue4 = valueOf.floatValue();
                            BackPanel backPanel4 = (BackPanel) this.mView;
                            Interpolator interpolator4 = edgePanelParams.arrowAngleInterpolator;
                            if (interpolator4 == null) {
                                interpolator4 = null;
                            }
                            float interpolation8 = interpolator4.getInterpolation(floatValue4);
                            PathInterpolator pathInterpolator6 = edgePanelParams.entryWidthInterpolator;
                            if (pathInterpolator6 == null) {
                                pathInterpolator6 = null;
                            }
                            float interpolation9 = pathInterpolator6.getInterpolation(floatValue4);
                            PathInterpolator pathInterpolator7 = edgePanelParams.heightInterpolator;
                            if (pathInterpolator7 == null) {
                                pathInterpolator7 = null;
                            }
                            float interpolation10 = pathInterpolator7.getInterpolation(floatValue4);
                            Step step2 = edgePanelParams.getEntryIndicator().arrowDimens.alphaInterpolator;
                            if (step2 != null && (value2 = step2.get(floatValue4)) != null) {
                                f2 = ((Number) value2.value).floatValue();
                            } else {
                                f2 = 0.0f;
                            }
                            PathInterpolator pathInterpolator8 = edgePanelParams.edgeCornerInterpolator;
                            if (pathInterpolator8 == null) {
                                pathInterpolator8 = null;
                            }
                            float interpolation11 = pathInterpolator8.getInterpolation(floatValue4);
                            PathInterpolator pathInterpolator9 = edgePanelParams.farCornerInterpolator;
                            if (pathInterpolator9 == null) {
                                pathInterpolator9 = null;
                            }
                            backPanel4.setStretch(0.0f, interpolation8, f2, interpolation9, interpolation10, interpolation11, pathInterpolator9.getInterpolation(floatValue4), edgePanelParams.getPreThresholdIndicator());
                        }
                    }
                    switch (iArr[this.currentState.ordinal()]) {
                        case 1:
                        case 2:
                            break;
                        case 3:
                        case 5:
                        case 6:
                            valueOf = Float.valueOf(1.0f);
                            break;
                        case 4:
                        case 7:
                            valueOf = Float.valueOf(0.0f);
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                    int i4 = iArr[this.currentState.ordinal()];
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                entryIndicator = edgePanelParams.getPreThresholdIndicator();
                            } else {
                                entryIndicator = edgePanelParams.getActiveIndicator();
                            }
                        } else {
                            entryIndicator = edgePanelParams.getPreThresholdIndicator();
                        }
                    } else {
                        entryIndicator = edgePanelParams.getEntryIndicator();
                    }
                    if (valueOf != null) {
                        float floatValue5 = valueOf.floatValue();
                        Step step3 = entryIndicator.arrowDimens.alphaSpring;
                        if (step3 != null && (value = step3.get(floatValue5)) != null) {
                            if (!value.isNewState) {
                                value = null;
                            }
                            if (value != null) {
                                BackPanel backPanel5 = (BackPanel) this.mView;
                                SpringForce springForce = (SpringForce) value.value;
                                BackPanel.AnimatedFloat animatedFloat = backPanel5.arrowAlpha;
                                Float valueOf3 = Float.valueOf(0.0f);
                                SpringAnimation springAnimation = animatedFloat.animation;
                                if (valueOf3 != null) {
                                    float floatValue6 = valueOf3.floatValue();
                                    springAnimation.cancel();
                                    springAnimation.mVelocity = floatValue6;
                                }
                                if (springForce != null) {
                                    springAnimation.mSpring = springForce;
                                }
                                springAnimation.animateToFinalPosition(animatedFloat.restingPosition + 0.0f);
                            }
                        }
                    }
                    float abs2 = Math.abs(y);
                    float height = (((BackPanel) this.mView).getHeight() - edgePanelParams.getEntryIndicator().backgroundDimens.height) / 2.0f;
                    float saturate = MathUtils.saturate(abs2 / (15.0f * height));
                    PathInterpolator pathInterpolator10 = edgePanelParams.verticalTranslationInterpolator;
                    if (pathInterpolator10 == null) {
                        pathInterpolator10 = null;
                    }
                    BackPanel.AnimatedFloat.stretchTo$default(((BackPanel) this.mView).verticalTranslation, Math.signum(y) * pathInterpolator10.getInterpolation(saturate) * height, null, 6);
                    return;
                }
                return;
            }
            int i5 = WhenMappings.$EnumSwitchMapping$0[this.currentState.ordinal()];
            VibratorHelper vibratorHelper = this.vibratorHelper;
            switch (i5) {
                case 1:
                    if (!isFlungAwayFromEdge$default(this, motionEvent.getX()) && this.previousXTranslation <= edgePanelParams.staticTriggerThreshold) {
                        updateArrowState(GestureState.CANCELLED, false);
                        break;
                    } else {
                        updateArrowState(GestureState.FLUNG, false);
                        if (BasicRune.NAVBAR_GESTURE) {
                            vibratorHelper.cancel();
                            handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$onMotionEvent$$inlined$postDelayed$default$1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    BackPanelController.this.vibratorHelper.vibrateGesture();
                                }
                            }, 10L);
                            break;
                        }
                    }
                    break;
                case 2:
                    if (isFlungAwayFromEdge$default(this, motionEvent.getX())) {
                        NavigationEdgeBackPlugin.BackCallback backCallback = this.backCallback;
                        if (backCallback == null) {
                            backCallback = null;
                        }
                        backCallback.setTriggerBack(true);
                        if (BasicRune.NAVBAR_GESTURE) {
                            vibratorHelper.cancel();
                            handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$onMotionEvent$$inlined$postDelayed$default$2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    BackPanelController.this.vibratorHelper.vibrateGesture();
                                }
                            }, 10L);
                        }
                        handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$onMotionEvent$$inlined$postDelayed$default$3
                            @Override // java.lang.Runnable
                            public final void run() {
                                BackPanelController.this.updateArrowState(BackPanelController.GestureState.FLUNG, false);
                            }
                        }, 50L);
                        break;
                    } else {
                        updateArrowState(GestureState.CANCELLED, false);
                        break;
                    }
                case 3:
                    if (this.previousState == GestureState.ENTRY && SystemClock.uptimeMillis() - this.gestureEntryTime < 100) {
                        updateArrowState(GestureState.FLUNG, false);
                        break;
                    } else if (this.previousState == GestureState.INACTIVE && SystemClock.uptimeMillis() - this.gestureInactiveTime < 400) {
                        handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$onMotionEvent$$inlined$postDelayed$default$4
                            @Override // java.lang.Runnable
                            public final void run() {
                                BackPanelController.this.updateArrowState(BackPanelController.GestureState.COMMITTED, false);
                            }
                        }, 130L);
                        break;
                    } else {
                        updateArrowState(GestureState.COMMITTED, false);
                        break;
                    }
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    updateArrowState(GestureState.CANCELLED, false);
                    break;
            }
            if (!Intrinsics.areEqual(this.velocityTracker, null) && (velocityTracker = this.velocityTracker) != null) {
                velocityTracker.recycle();
            }
            this.velocityTracker = null;
            return;
        }
        handler.removeCallbacks(this.failsafeRunnable);
        Iterator it = ((BackPanel) this.mView).allAnimatedFloat.iterator();
        while (it.hasNext()) {
            ((BackPanel.AnimatedFloat) it.next()).animation.cancel();
        }
        handler.removeCallbacks(this.onEndSetCommittedStateListener.runnable);
        handler.removeCallbacks(this.onEndSetGoneStateListener.runnable);
        handler.removeCallbacks(this.onAlphaEndSetGoneStateListener.runnable);
        this.startX = motionEvent.getX();
        this.startY = motionEvent.getY();
        updateArrowState(GestureState.GONE, false);
        float max2 = Math.max(this.startY - edgePanelParams.fingerOffset, edgePanelParams.minArrowYPosition);
        WindowManager.LayoutParams layoutParams4 = this.layoutParams;
        if (layoutParams4 == null) {
            layoutParams = null;
        } else {
            layoutParams = layoutParams4;
        }
        float f9 = max2 - (layoutParams.height / 2.0f);
        if (layoutParams4 == null) {
            layoutParams2 = null;
        } else {
            layoutParams2 = layoutParams4;
        }
        layoutParams2.y = MathUtils.constrain((int) f9, 0, this.displaySize.y);
        BackPanel backPanel6 = (BackPanel) this.mView;
        boolean z14 = backPanel6.isLeftPanel;
        this.hasPassedDragSlop = false;
        backPanel6.backgroundAlpha.snapTo(1.0f);
        backPanel6.verticalTranslation.snapTo(0.0f);
        backPanel6.scale.snapTo(1.0f);
        backPanel6.horizontalTranslation.snapToRestingPosition();
        backPanel6.arrowLength.snapToRestingPosition();
        backPanel6.arrowHeight.snapToRestingPosition();
        backPanel6.arrowAlpha.snapToRestingPosition();
        backPanel6.backgroundWidth.snapToRestingPosition();
        backPanel6.backgroundHeight.snapToRestingPosition();
        backPanel6.backgroundEdgeCornerRadius.snapToRestingPosition();
        backPanel6.backgroundFarCornerRadius.snapToRestingPosition();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        updateConfiguration();
        ConfigurationControllerImpl configurationControllerImpl = (ConfigurationControllerImpl) this.configurationController;
        boolean isLayoutRtl = configurationControllerImpl.isLayoutRtl();
        BackPanel backPanel = (BackPanel) this.mView;
        if (backPanel.arrowsPointLeft != isLayoutRtl) {
            backPanel.invalidate();
            backPanel.arrowsPointLeft = isLayoutRtl;
        }
        updateArrowState(GestureState.GONE, true);
        updateRestingArrowDimens();
        configurationControllerImpl.addCallback(this.configurationListener);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        ((ConfigurationControllerImpl) this.configurationController).removeCallback(this.configurationListener);
    }

    public final void playWithBackgroundWidthAnimation(final DelayedOnAnimationEndListener delayedOnAnimationEndListener, long j) {
        boolean z;
        Handler handler = this.mainHandler;
        if (j == 0) {
            updateRestingArrowDimens();
            BackPanel backPanel = (BackPanel) this.mView;
            BackPanel.AnimatedFloat animatedFloat = backPanel.backgroundWidth;
            backPanel.getClass();
            SpringAnimation springAnimation = animatedFloat.animation;
            if (springAnimation.mRunning) {
                springAnimation.addEndListener(delayedOnAnimationEndListener);
                z = true;
            } else {
                delayedOnAnimationEndListener.runnable.run();
                z = false;
            }
            if (!z) {
                BackPanelController$failsafeRunnable$1 backPanelController$failsafeRunnable$1 = this.failsafeRunnable;
                handler.removeCallbacks(backPanelController$failsafeRunnable$1);
                handler.postDelayed(backPanelController$failsafeRunnable$1, 350L);
                return;
            }
            return;
        }
        handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1
            @Override // java.lang.Runnable
            public final void run() {
                BackPanelController.this.playWithBackgroundWidthAnimation(delayedOnAnimationEndListener, 0L);
            }
        }, j);
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void setBackCallback(NavigationEdgeBackPlugin.BackCallback backCallback) {
        this.backCallback = backCallback;
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void setDisplaySize(Point point) {
        this.displaySize.set(point.x, point.y);
        this.fullyStretchedThreshold = Math.min(point.x, this.params.swipeProgressThreshold);
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void setIsLeftPanel(boolean z) {
        int i;
        ((BackPanel) this.mView).isLeftPanel = z;
        WindowManager.LayoutParams layoutParams = this.layoutParams;
        if (layoutParams == null) {
            layoutParams = null;
        }
        if (z) {
            i = 51;
        } else {
            i = 53;
        }
        layoutParams.gravity = i;
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void setLayoutParams(WindowManager.LayoutParams layoutParams) {
        this.layoutParams = layoutParams;
        this.windowManager.addView(this.mView, layoutParams);
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void updateActiveIndicatorSpringParams(float f, float f2) {
        EdgePanelParams edgePanelParams = this.params;
        edgePanelParams.getClass();
        if (f < 0.0f || f2 < 0.0f || f2 > 1.0f) {
            f = 1000.0f;
            f2 = 0.8f;
        }
        edgePanelParams.activeIndicator = EdgePanelParams.BackIndicatorDimens.copy$default(edgePanelParams.getActiveIndicator(), 0.0f, null, null, EdgePanelParamsKt.createSpring(f, f2), null, 191);
    }

    public final void updateArrowState(GestureState gestureState, boolean z) {
        float f;
        Step.Value value;
        if (!z && this.currentState == gestureState) {
            return;
        }
        this.previousState = this.currentState;
        this.currentState = gestureState;
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[gestureState.ordinal()];
        SpringForce springForce = null;
        if (i != 1 && i != 2) {
            if (i != 3) {
                if (i != 5 && i != 6) {
                    if (i == 7) {
                        NavigationEdgeBackPlugin.BackCallback backCallback = this.backCallback;
                        if (backCallback == null) {
                            backCallback = null;
                        }
                        backCallback.cancelBack();
                    }
                } else if (this.previousState != GestureState.FLUNG) {
                    NavigationEdgeBackPlugin.BackCallback backCallback2 = this.backCallback;
                    if (backCallback2 == null) {
                        backCallback2 = null;
                    }
                    backCallback2.triggerBack();
                }
            } else {
                NavigationEdgeBackPlugin.BackCallback backCallback3 = this.backCallback;
                if (backCallback3 == null) {
                    backCallback3 = null;
                }
                backCallback3.setTriggerBack(true);
            }
        } else {
            NavigationEdgeBackPlugin.BackCallback backCallback4 = this.backCallback;
            if (backCallback4 == null) {
                backCallback4 = null;
            }
            backCallback4.setTriggerBack(false);
        }
        int i2 = iArr[this.currentState.ordinal()];
        DelayedOnAnimationEndListener delayedOnAnimationEndListener = this.onEndSetGoneStateListener;
        VibratorHelper vibratorHelper = this.vibratorHelper;
        EdgePanelParams edgePanelParams = this.params;
        Handler handler = this.mainHandler;
        switch (i2) {
            case 1:
                this.mView.setVisibility(0);
                updateRestingArrowDimens();
                this.gestureEntryTime = SystemClock.uptimeMillis();
                return;
            case 2:
                this.gestureInactiveTime = SystemClock.uptimeMillis();
                this.totalTouchDeltaInactive = -edgePanelParams.deactivationTriggerThreshold;
                ((BackPanel) this.mView).popOffEdge(-1.5f);
                if (!BasicRune.NAVBAR_GESTURE) {
                    vibratorHelper.vibrate(BackPanelControllerKt.VIBRATE_DEACTIVATED_EFFECT);
                }
                updateRestingArrowDimens();
                return;
            case 3:
                this.previousXTranslationOnActiveOffset = this.previousXTranslation;
                updateRestingArrowDimens();
                vibratorHelper.cancel();
                handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$updateArrowState$$inlined$postDelayed$default$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BasicRune.NAVBAR_GESTURE) {
                            BackPanelController.this.vibratorHelper.vibrateGesture();
                        } else {
                            BackPanelController.this.vibratorHelper.vibrate(BackPanelControllerKt.VIBRATE_ACTIVATED_EFFECT);
                        }
                    }
                }, 10L);
                if (this.previousState == GestureState.INACTIVE) {
                    f = 4.7f;
                } else {
                    f = 4.5f;
                }
                ((BackPanel) this.mView).popOffEdge(f);
                return;
            case 4:
                updateRestingArrowDimens();
                this.mView.setVisibility(8);
                return;
            case 5:
                handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$updateArrowState$$inlined$postDelayed$default$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        BackPanel backPanel = (BackPanel) BackPanelController.this.mView;
                        backPanel.scalePivotX.snapTo(backPanel.backgroundWidth.pos / 2);
                        BackPanel.AnimatedFloat.stretchTo$default(backPanel.scale, 0.0f, Float.valueOf(2.0f), 4);
                    }
                }, 60L);
                updateRestingArrowDimens();
                handler.postDelayed(this.onEndSetCommittedStateListener.runnable, 160L);
                return;
            case 6:
                if (this.previousState == GestureState.FLUNG) {
                    updateRestingArrowDimens();
                    handler.postDelayed(delayedOnAnimationEndListener.runnable, 120L);
                    return;
                } else {
                    BackPanel backPanel = (BackPanel) this.mView;
                    backPanel.scalePivotX.snapTo(backPanel.backgroundWidth.pos / 2);
                    BackPanel.AnimatedFloat.stretchTo$default(backPanel.scale, 0.0f, Float.valueOf(3.0f), 4);
                    handler.postDelayed(this.onAlphaEndSetGoneStateListener.runnable, 80L);
                    return;
                }
            case 7:
                playWithBackgroundWidthAnimation(delayedOnAnimationEndListener, Math.max(0L, 200 - (SystemClock.uptimeMillis() - this.gestureEntryTime)));
                EdgePanelParams.BackIndicatorDimens backIndicatorDimens = edgePanelParams.cancelledIndicator;
                if (backIndicatorDimens == null) {
                    backIndicatorDimens = null;
                }
                Step step = backIndicatorDimens.arrowDimens.alphaSpring;
                if (step != null && (value = step.get(0.0f)) != null) {
                    springForce = (SpringForce) value.value;
                }
                BackPanel.AnimatedFloat animatedFloat = ((BackPanel) this.mView).arrowAlpha;
                Float valueOf = Float.valueOf(0.0f);
                SpringAnimation springAnimation = animatedFloat.animation;
                if (valueOf != null) {
                    float floatValue = valueOf.floatValue();
                    springAnimation.cancel();
                    springAnimation.mVelocity = floatValue;
                }
                if (springForce != null) {
                    springAnimation.mSpring = springForce;
                }
                springAnimation.animateToFinalPosition(animatedFloat.restingPosition + 0.0f);
                handler.postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.BackPanelController$updateArrowState$$inlined$postDelayed$default$3
                    @Override // java.lang.Runnable
                    public final void run() {
                        BackPanelController.this.vibratorHelper.cancel();
                    }
                }, 10L);
                return;
            default:
                return;
        }
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void updateBackPanelColor(int i, int i2, int i3, int i4) {
        View view = this.mView;
        if (view != null) {
            ((BackPanel) view).updateBackPanelColor$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, i2, i3, i4);
            updateConfiguration();
        } else {
            Log.d("BackPanelController", "updateBackPanelColor fail, view is null");
        }
    }

    public final void updateConfiguration() {
        Resources resources = getResources();
        EdgePanelParams edgePanelParams = this.params;
        edgePanelParams.update(resources);
        ((BackPanel) this.mView).updateArrowPaint$frameworks__base__packages__SystemUI__android_common__SystemUI_core(edgePanelParams.arrowThickness);
        this.minFlingDistance = this.viewConfiguration.getScaledTouchSlop() * 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x027f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateRestingArrowDimens() {
        /*
            Method dump skipped, instructions count: 894
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.BackPanelController.updateRestingArrowDimens():void");
    }

    public static /* synthetic */ void getCurrentState$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
    }

    public static /* synthetic */ void getParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
    }

    @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin
    public final void setInsets(int i, int i2) {
    }
}
