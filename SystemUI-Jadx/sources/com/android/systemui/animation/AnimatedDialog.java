package com.android.systemui.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.graphics.Rect;
import android.util.MathUtils;
import android.view.GhostView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.Window;
import com.android.app.animation.Interpolators;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.systemui.animation.AnimatedDialog;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.animation.LaunchAnimator;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AnimatedDialog {
    public final AnimatedBoundsLayoutListener backgroundLayoutListener;
    public final DialogLaunchAnimator.Callback callback;
    public final DialogLaunchAnimator.Controller controller;
    public final Lazy decorView$delegate;
    public AnimatedDialog$start$dialogContentWithBackground$2 decorViewLayoutListener;
    public final Dialog dialog;
    public ViewGroup dialogContentWithBackground;
    public boolean dismissRequested;
    public boolean exitAnimationDisabled;
    public final AnimationFeatureFlags featureFlags;
    public final boolean forceDisableSynchronization;
    public boolean hasInstrumentedJank;
    public final InteractionJankMonitor interactionJankMonitor;
    public boolean isDismissing;
    public boolean isLaunching;
    public boolean isOriginalDialogViewLaidOut;
    public boolean isSourceDrawnInDialog;
    public final LaunchAnimator launchAnimator;
    public final Function1 onDialogDismissed;
    public int originalDialogBackgroundColor;
    public final AnimatedDialog parentAnimatedDialog;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AnimatedBoundsLayoutListener implements View.OnLayoutChangeListener {
        public ValueAnimator currentAnimator;
        public Rect lastBounds;

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

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(final View view, final int i, final int i2, final int i3, final int i4, int i5, int i6, int i7, int i8) {
            if (i == i5 && i2 == i6) {
                if (i3 == i7 && i4 == i8) {
                    Rect rect = this.lastBounds;
                    if (rect != null) {
                        view.setLeft(rect.left);
                        view.setTop(rect.top);
                        view.setRight(rect.right);
                        view.setBottom(rect.bottom);
                        return;
                    }
                    return;
                }
            }
            if (this.lastBounds == null) {
                this.lastBounds = new Rect(i5, i6, i7, i8);
            }
            final Rect rect2 = this.lastBounds;
            Intrinsics.checkNotNull(rect2);
            final int i9 = rect2.left;
            final int i10 = rect2.top;
            final int i11 = rect2.right;
            final int i12 = rect2.bottom;
            ValueAnimator valueAnimator = this.currentAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.currentAnimator = null;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(500L);
            ofFloat.setInterpolator(Interpolators.STANDARD);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.animation.AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    AnimatedDialog.AnimatedBoundsLayoutListener.this.currentAnimator = null;
                }
            });
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.animation.AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float animatedFraction = valueAnimator2.getAnimatedFraction();
                    rect2.left = MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i9, i, animatedFraction));
                    rect2.top = MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i10, i2, animatedFraction));
                    rect2.right = MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i11, i3, animatedFraction));
                    rect2.bottom = MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i12, i4, animatedFraction));
                    view.setLeft(rect2.left);
                    view.setTop(rect2.top);
                    view.setRight(rect2.right);
                    view.setBottom(rect2.bottom);
                }
            });
            this.currentAnimator = ofFloat;
            ofFloat.start();
        }
    }

    public AnimatedDialog(LaunchAnimator launchAnimator, DialogLaunchAnimator.Callback callback, InteractionJankMonitor interactionJankMonitor, DialogLaunchAnimator.Controller controller, Function1 function1, Dialog dialog, boolean z, AnimatedDialog animatedDialog, boolean z2, AnimationFeatureFlags animationFeatureFlags) {
        this.launchAnimator = launchAnimator;
        this.callback = callback;
        this.interactionJankMonitor = interactionJankMonitor;
        this.controller = controller;
        this.onDialogDismissed = function1;
        this.dialog = dialog;
        this.parentAnimatedDialog = animatedDialog;
        this.forceDisableSynchronization = z2;
        this.featureFlags = animationFeatureFlags;
        this.decorView$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.animation.AnimatedDialog$decorView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Window window = AnimatedDialog.this.dialog.getWindow();
                Intrinsics.checkNotNull(window);
                return (ViewGroup) window.getDecorView();
            }
        });
        this.originalDialogBackgroundColor = EmergencyPhoneWidget.BG_COLOR;
        this.isLaunching = true;
        this.backgroundLayoutListener = z ? new AnimatedBoundsLayoutListener() : null;
    }

    public static final void access$maybeStartLaunchAnimation(final AnimatedDialog animatedDialog) {
        if (animatedDialog.isSourceDrawnInDialog && animatedDialog.isOriginalDialogViewLaidOut) {
            animatedDialog.dialog.getWindow().addFlags(2);
            animatedDialog.startAnimation(true, new Function0() { // from class: com.android.systemui.animation.AnimatedDialog$startAnimation$1
                @Override // kotlin.jvm.functions.Function0
                public final /* bridge */ /* synthetic */ Object invoke() {
                    return Unit.INSTANCE;
                }
            }, new Function0() { // from class: com.android.systemui.animation.AnimatedDialog$maybeStartLaunchAnimation$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    AnimatedDialog animatedDialog2 = AnimatedDialog.this;
                    animatedDialog2.isLaunching = false;
                    if (animatedDialog2.dismissRequested) {
                        animatedDialog2.dialog.dismiss();
                    }
                    AnimatedDialog animatedDialog3 = AnimatedDialog.this;
                    if (animatedDialog3.backgroundLayoutListener != null) {
                        ViewGroup viewGroup = animatedDialog3.dialogContentWithBackground;
                        Intrinsics.checkNotNull(viewGroup);
                        viewGroup.addOnLayoutChangeListener(AnimatedDialog.this.backgroundLayoutListener);
                    }
                    AnimatedDialog animatedDialog4 = AnimatedDialog.this;
                    if (animatedDialog4.hasInstrumentedJank) {
                        DialogCuj dialogCuj = ((ViewDialogLaunchAnimatorController) animatedDialog4.controller).cuj;
                        Intrinsics.checkNotNull(dialogCuj);
                        animatedDialog4.interactionJankMonitor.end(dialogCuj.cujType);
                    }
                    return Unit.INSTANCE;
                }
            });
        }
    }

    public static ViewGroup findFirstViewGroupWithBackground(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getBackground() != null) {
            return viewGroup;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup findFirstViewGroupWithBackground = findFirstViewGroupWithBackground(viewGroup.getChildAt(i));
            if (findFirstViewGroupWithBackground != null) {
                return findFirstViewGroupWithBackground;
            }
        }
        return null;
    }

    public final ViewGroup getDecorView() {
        return (ViewGroup) this.decorView$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void moveSourceDrawingToDialog() {
        LaunchableView launchableView;
        if (getDecorView().getViewRootImpl() == null) {
            getDecorView().post(new Runnable() { // from class: com.android.systemui.animation.AnimatedDialog$moveSourceDrawingToDialog$1
                @Override // java.lang.Runnable
                public final void run() {
                    AnimatedDialog.this.moveSourceDrawingToDialog();
                }
            });
            return;
        }
        ViewGroup decorView = getDecorView();
        View view = ((ViewDialogLaunchAnimatorController) this.controller).source;
        if (view instanceof LaunchableView) {
            launchableView = (LaunchableView) view;
        } else {
            launchableView = null;
        }
        if (launchableView != null) {
            launchableView.setShouldBlockVisibilityChanges(true);
        }
        GhostView.addGhost(view, decorView);
        synchronizeNextDraw(new Function0() { // from class: com.android.systemui.animation.AnimatedDialog$moveSourceDrawingToDialog$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                AnimatedDialog animatedDialog = AnimatedDialog.this;
                animatedDialog.isSourceDrawnInDialog = true;
                AnimatedDialog.access$maybeStartLaunchAnimation(animatedDialog);
                return Unit.INSTANCE;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
    
        if (r1 != false) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDialogDismissed() {
        /*
            r8 = this;
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            android.app.Dialog r1 = r8.dialog
            if (r0 != 0) goto L21
            android.content.Context r0 = r1.getContext()
            java.util.concurrent.Executor r0 = r0.getMainExecutor()
            com.android.systemui.animation.AnimatedDialog$onDialogDismissed$1 r1 = new com.android.systemui.animation.AnimatedDialog$onDialogDismissed$1
            r1.<init>()
            r0.execute(r1)
            return
        L21:
            boolean r0 = r8.isLaunching
            r2 = 1
            if (r0 == 0) goto L29
            r8.dismissRequested = r2
            return
        L29:
            boolean r0 = r8.isDismissing
            if (r0 == 0) goto L2e
            return
        L2e:
            r8.isDismissing = r2
            com.android.systemui.animation.AnimatedDialog$onDialogDismissed$2 r0 = new com.android.systemui.animation.AnimatedDialog$onDialogDismissed$2
            r0.<init>()
            com.android.systemui.animation.AnimatedDialog$start$dialogContentWithBackground$2 r3 = r8.decorViewLayoutListener
            if (r3 == 0) goto L42
            android.view.ViewGroup r3 = r8.getDecorView()
            com.android.systemui.animation.AnimatedDialog$start$dialogContentWithBackground$2 r4 = r8.decorViewLayoutListener
            r3.removeOnLayoutChangeListener(r4)
        L42:
            boolean r3 = r8.exitAnimationDisabled
            r4 = 4
            com.android.systemui.animation.DialogLaunchAnimator$Controller r5 = r8.controller
            r6 = 0
            if (r3 != 0) goto L94
            boolean r1 = r1.isShowing()
            if (r1 != 0) goto L51
            goto L94
        L51:
            com.android.systemui.animation.DialogLaunchAnimator$Callback r1 = r8.callback
            com.android.systemui.statusbar.dagger.CentralSurfacesDependenciesModule$1 r1 = (com.android.systemui.statusbar.dagger.CentralSurfacesDependenciesModule$1) r1
            r1.getClass()
            android.service.dreams.IDreamManager r1 = r1.val$dreamManager     // Catch: android.os.RemoteException -> L5f
            boolean r1 = r1.isDreaming()     // Catch: android.os.RemoteException -> L5f
            goto L68
        L5f:
            r1 = move-exception
            java.lang.String r3 = "DialogLaunchAnimator.Callback"
            java.lang.String r7 = "dreamManager.isDreaming failed"
            android.util.Log.e(r3, r7, r1)
            r1 = r6
        L68:
            if (r1 == 0) goto L6b
            goto L94
        L6b:
            r1 = r5
            com.android.systemui.animation.ViewDialogLaunchAnimatorController r1 = (com.android.systemui.animation.ViewDialogLaunchAnimatorController) r1
            android.view.View r1 = r1.source
            int r3 = r1.getVisibility()
            if (r3 == r4) goto L77
            goto L94
        L77:
            boolean r3 = r1.isAttachedToWindow()
            if (r3 == 0) goto L94
            android.view.ViewParent r1 = r1.getParent()
            boolean r3 = r1 instanceof android.view.View
            if (r3 == 0) goto L88
            android.view.View r1 = (android.view.View) r1
            goto L89
        L88:
            r1 = 0
        L89:
            if (r1 == 0) goto L90
            boolean r1 = r1.isShown()
            goto L91
        L90:
            r1 = r2
        L91:
            if (r1 == 0) goto L94
            goto L95
        L94:
            r2 = r6
        L95:
            if (r2 != 0) goto Lc0
            java.lang.String r1 = "DialogLaunchAnimator"
            java.lang.String r2 = "Skipping animation of dialog into the source"
            android.util.Log.i(r1, r2)
            com.android.systemui.animation.ViewDialogLaunchAnimatorController r5 = (com.android.systemui.animation.ViewDialogLaunchAnimatorController) r5
            android.view.View r1 = r5.source
            boolean r2 = r1 instanceof com.android.systemui.animation.LaunchableView
            if (r2 == 0) goto Lac
            com.android.systemui.animation.LaunchableView r1 = (com.android.systemui.animation.LaunchableView) r1
            r1.setShouldBlockVisibilityChanges(r6)
            goto Lb5
        Lac:
            int r2 = r1.getVisibility()
            if (r2 != r4) goto Lb5
            r1.setVisibility(r6)
        Lb5:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.invoke(r1)
            kotlin.jvm.functions.Function1 r0 = r8.onDialogDismissed
            r0.invoke(r8)
            goto Lcd
        Lc0:
            com.android.systemui.animation.AnimatedDialog$hideDialogIntoView$1 r1 = new com.android.systemui.animation.AnimatedDialog$hideDialogIntoView$1
            r1.<init>()
            com.android.systemui.animation.AnimatedDialog$hideDialogIntoView$2 r2 = new com.android.systemui.animation.AnimatedDialog$hideDialogIntoView$2
            r2.<init>()
            r8.startAnimation(r6, r1, r2)
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.animation.AnimatedDialog.onDialogDismissed():void");
    }

    public final void prepareForStackDismiss() {
        AnimatedDialog animatedDialog = this.parentAnimatedDialog;
        if (animatedDialog == null) {
            return;
        }
        animatedDialog.exitAnimationDisabled = true;
        animatedDialog.dialog.hide();
        animatedDialog.prepareForStackDismiss();
        animatedDialog.dialog.dismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.animation.ViewDialogLaunchAnimatorController$createLaunchController$1] */
    public final void startAnimation(boolean z, final Function0 function0, final Function0 function02) {
        final GhostedViewLaunchAnimatorController ghostedViewLaunchAnimatorController;
        final GhostedViewLaunchAnimatorController ghostedViewLaunchAnimatorController2;
        DialogLaunchAnimator.Controller controller = this.controller;
        if (z) {
            final ViewDialogLaunchAnimatorController viewDialogLaunchAnimatorController = (ViewDialogLaunchAnimatorController) controller;
            viewDialogLaunchAnimatorController.getClass();
            final GhostedViewLaunchAnimatorController ghostedViewLaunchAnimatorController3 = new GhostedViewLaunchAnimatorController(viewDialogLaunchAnimatorController.source, null, null, 6, null);
            ghostedViewLaunchAnimatorController = new LaunchAnimator.Controller(viewDialogLaunchAnimatorController) { // from class: com.android.systemui.animation.ViewDialogLaunchAnimatorController$createLaunchController$1
                public final /* synthetic */ GhostedViewLaunchAnimatorController $$delegate_0;
                public final /* synthetic */ ViewDialogLaunchAnimatorController this$0;

                {
                    this.this$0 = viewDialogLaunchAnimatorController;
                    this.$$delegate_0 = GhostedViewLaunchAnimatorController.this;
                }

                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final LaunchAnimator.State createAnimatorState() {
                    return this.$$delegate_0.createAnimatorState();
                }

                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final ViewGroup getLaunchContainer() {
                    return this.$$delegate_0.launchContainer;
                }

                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final View getOpeningWindowSyncView() {
                    this.$$delegate_0.getClass();
                    return null;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final void onLaunchAnimationEnd(boolean z2) {
                    GhostedViewLaunchAnimatorController.this.onLaunchAnimationEnd(z2);
                    ViewDialogLaunchAnimatorController viewDialogLaunchAnimatorController2 = this.this$0;
                    View view = viewDialogLaunchAnimatorController2.source;
                    if (view instanceof LaunchableView) {
                        ((LaunchableView) view).setShouldBlockVisibilityChanges(true);
                        viewDialogLaunchAnimatorController2.source.setTransitionVisibility(4);
                    } else {
                        view.setVisibility(4);
                    }
                }

                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final void onLaunchAnimationProgress(LaunchAnimator.State state, float f, float f2) {
                    this.$$delegate_0.onLaunchAnimationProgress(state, f, f2);
                }

                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final void onLaunchAnimationStart(boolean z2) {
                    GhostView.removeGhost(this.this$0.source);
                    GhostedViewLaunchAnimatorController.this.onLaunchAnimationStart(z2);
                }

                @Override // com.android.systemui.animation.LaunchAnimator.Controller
                public final void setLaunchContainer(ViewGroup viewGroup) {
                    this.$$delegate_0.launchContainer = viewGroup;
                }
            };
        } else {
            ViewGroup viewGroup = this.dialogContentWithBackground;
            Intrinsics.checkNotNull(viewGroup);
            ghostedViewLaunchAnimatorController = new GhostedViewLaunchAnimatorController(viewGroup, null, null, 6, null);
        }
        if (z) {
            ViewGroup viewGroup2 = this.dialogContentWithBackground;
            Intrinsics.checkNotNull(viewGroup2);
            ghostedViewLaunchAnimatorController2 = new GhostedViewLaunchAnimatorController(viewGroup2, null, null, 6, null);
        } else {
            ViewDialogLaunchAnimatorController viewDialogLaunchAnimatorController2 = (ViewDialogLaunchAnimatorController) controller;
            viewDialogLaunchAnimatorController2.getClass();
            ghostedViewLaunchAnimatorController2 = new GhostedViewLaunchAnimatorController(viewDialogLaunchAnimatorController2.source, null, null, 6, null);
        }
        ghostedViewLaunchAnimatorController.setLaunchContainer(getDecorView());
        ghostedViewLaunchAnimatorController2.setLaunchContainer(getDecorView());
        final LaunchAnimator.State createAnimatorState = ghostedViewLaunchAnimatorController2.createAnimatorState();
        LaunchAnimator.Controller controller2 = new LaunchAnimator.Controller() { // from class: com.android.systemui.animation.AnimatedDialog$startAnimation$controller$1
            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final LaunchAnimator.State createAnimatorState() {
                return LaunchAnimator.Controller.this.createAnimatorState();
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final ViewGroup getLaunchContainer() {
                return LaunchAnimator.Controller.this.getLaunchContainer();
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationEnd(final boolean z2) {
                Executor mainExecutor = this.dialog.getContext().getMainExecutor();
                final Function0 function03 = function02;
                final LaunchAnimator.Controller controller3 = LaunchAnimator.Controller.this;
                final LaunchAnimator.Controller controller4 = ghostedViewLaunchAnimatorController2;
                mainExecutor.execute(new Runnable() { // from class: com.android.systemui.animation.AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        LaunchAnimator.Controller.this.onLaunchAnimationEnd(z2);
                        controller4.onLaunchAnimationEnd(z2);
                        function03.invoke();
                    }
                });
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationProgress(LaunchAnimator.State state, float f, float f2) {
                LaunchAnimator.Controller.this.onLaunchAnimationProgress(state, f, f2);
                state.visible = !state.visible;
                LaunchAnimator.Controller controller3 = ghostedViewLaunchAnimatorController2;
                controller3.onLaunchAnimationProgress(state, f, f2);
                if (controller3 instanceof GhostedViewLaunchAnimatorController) {
                    ((GhostedViewLaunchAnimatorController) controller3).fillGhostedViewState(createAnimatorState);
                }
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationStart(boolean z2) {
                function0.invoke();
                LaunchAnimator.Controller.this.onLaunchAnimationStart(z2);
                ghostedViewLaunchAnimatorController2.onLaunchAnimationStart(z2);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void setLaunchContainer(ViewGroup viewGroup3) {
                LaunchAnimator.Controller.this.setLaunchContainer(viewGroup3);
                ghostedViewLaunchAnimatorController2.setLaunchContainer(viewGroup3);
            }
        };
        LaunchAnimator launchAnimator = this.launchAnimator;
        int i = this.originalDialogBackgroundColor;
        LaunchAnimator.Companion companion = LaunchAnimator.Companion;
        launchAnimator.startAnimation(controller2, createAnimatorState, i, true, false);
    }

    public final void synchronizeNextDraw(Function0 function0) {
        View view;
        ViewRootImpl viewRootImpl = ((ViewDialogLaunchAnimatorController) this.controller).source.getViewRootImpl();
        if (viewRootImpl != null) {
            view = viewRootImpl.getView();
        } else {
            view = null;
        }
        if (!this.forceDisableSynchronization && view != null) {
            ViewRootSync viewRootSync = ViewRootSync.INSTANCE;
            ViewGroup decorView = getDecorView();
            viewRootSync.getClass();
            ViewRootSync.synchronizeNextDraw(view, decorView, function0);
            getDecorView().invalidate();
            view.invalidate();
            return;
        }
        function0.invoke();
    }

    public /* synthetic */ AnimatedDialog(LaunchAnimator launchAnimator, DialogLaunchAnimator.Callback callback, InteractionJankMonitor interactionJankMonitor, DialogLaunchAnimator.Controller controller, Function1 function1, Dialog dialog, boolean z, AnimatedDialog animatedDialog, boolean z2, AnimationFeatureFlags animationFeatureFlags, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(launchAnimator, callback, interactionJankMonitor, controller, function1, dialog, z, (i & 128) != 0 ? null : animatedDialog, z2, animationFeatureFlags);
    }
}
