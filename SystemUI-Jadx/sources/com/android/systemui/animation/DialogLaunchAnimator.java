package com.android.systemui.animation;

import android.app.Dialog;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.LaunchAnimator;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.statusbar.dagger.CentralSurfacesDependenciesModule$1;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DialogLaunchAnimator {
    public static final LaunchAnimator.Interpolators INTERPOLATORS;
    public static final LaunchAnimator.Timings TIMINGS;
    public final Callback callback;
    public final AnimationFeatureFlags featureFlags;
    public final InteractionJankMonitor interactionJankMonitor;
    public final boolean isForTesting;
    public final LaunchAnimator launchAnimator;
    public final HashSet openedDialogs;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
    }

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
    public interface Controller {
        public static final Companion Companion = Companion.$$INSTANCE;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Companion {
            public static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public static ViewDialogLaunchAnimatorController fromView(View view, DialogCuj dialogCuj) {
                if (view instanceof LaunchableView) {
                    if (!(view.getParent() instanceof ViewGroup)) {
                        Log.e("DialogLaunchAnimator", "Skipping animation as view " + view + " is not attached to a ViewGroup", new Exception());
                        return null;
                    }
                    return new ViewDialogLaunchAnimatorController(view, dialogCuj);
                }
                throw new IllegalArgumentException("A DialogLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected.");
            }
        }
    }

    static {
        new Companion(null);
        TIMINGS = ActivityLaunchAnimator.TIMINGS;
        ActivityLaunchAnimator.Companion companion = ActivityLaunchAnimator.Companion;
        companion.getClass();
        LaunchAnimator.Interpolators interpolators = ActivityLaunchAnimator.INTERPOLATORS;
        companion.getClass();
        Interpolator interpolator = interpolators.positionInterpolator;
        Interpolator interpolator2 = interpolators.contentBeforeFadeOutInterpolator;
        Interpolator interpolator3 = interpolators.contentAfterFadeInInterpolator;
        interpolators.getClass();
        INTERPOLATORS = new LaunchAnimator.Interpolators(interpolator, interpolator, interpolator2, interpolator3);
    }

    public DialogLaunchAnimator(Callback callback, InteractionJankMonitor interactionJankMonitor, AnimationFeatureFlags animationFeatureFlags) {
        this(callback, interactionJankMonitor, animationFeatureFlags, null, false, 24, null);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.animation.DialogLaunchAnimator$createActivityLaunchController$1] */
    public static DialogLaunchAnimator$createActivityLaunchController$1 createActivityLaunchController$default(DialogLaunchAnimator dialogLaunchAnimator, View view) {
        Object obj;
        Iterator it = dialogLaunchAnimator.openedDialogs.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((AnimatedDialog) obj).dialog.getWindow().getDecorView().getViewRootImpl(), view.getViewRootImpl())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        final AnimatedDialog animatedDialog = (AnimatedDialog) obj;
        if (animatedDialog == null) {
            return null;
        }
        animatedDialog.exitAnimationDisabled = true;
        final Dialog dialog = animatedDialog.dialog;
        if (!dialog.isShowing()) {
            return null;
        }
        CentralSurfacesDependenciesModule$1 centralSurfacesDependenciesModule$1 = (CentralSurfacesDependenciesModule$1) dialogLaunchAnimator.callback;
        if (!centralSurfacesDependenciesModule$1.val$keyguardStateController.isUnlocked()) {
            ((AlternateBouncerInteractor) centralSurfacesDependenciesModule$1.val$alternateBouncerInteractor.get()).getClass();
            return null;
        }
        ViewGroup viewGroup = animatedDialog.dialogContentWithBackground;
        if (viewGroup == null) {
            return null;
        }
        ActivityLaunchAnimator.Controller.Companion.getClass();
        final GhostedViewLaunchAnimatorController fromView = ActivityLaunchAnimator.Controller.Companion.fromView(viewGroup, null);
        if (fromView == null) {
            return null;
        }
        return new ActivityLaunchAnimator.Controller(dialog, animatedDialog) { // from class: com.android.systemui.animation.DialogLaunchAnimator$createActivityLaunchController$1
            public final /* synthetic */ ActivityLaunchAnimator.Controller $$delegate_0;
            public final /* synthetic */ AnimatedDialog $animatedDialog;
            public final /* synthetic */ Dialog $dialog;
            public final boolean isDialogLaunch = true;

            {
                this.$dialog = dialog;
                this.$animatedDialog = animatedDialog;
                this.$$delegate_0 = ActivityLaunchAnimator.Controller.this;
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final LaunchAnimator.State createAnimatorState() {
                return this.$$delegate_0.createAnimatorState();
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final ViewGroup getLaunchContainer() {
                return this.$$delegate_0.getLaunchContainer();
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final View getOpeningWindowSyncView() {
                return this.$$delegate_0.getOpeningWindowSyncView();
            }

            @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
            public final boolean isBelowAnimatingWindow() {
                return this.$$delegate_0.isBelowAnimatingWindow();
            }

            @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
            public final boolean isDialogLaunch() {
                return this.isDialogLaunch;
            }

            @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
            public final void onIntentStarted(boolean z) {
                ActivityLaunchAnimator.Controller.this.onIntentStarted(z);
                if (!z) {
                    this.$dialog.dismiss();
                }
            }

            @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
            public final void onLaunchAnimationCancelled(Boolean bool) {
                ActivityLaunchAnimator.Controller.this.onLaunchAnimationCancelled(null);
                DialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1 dialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1 = new DialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1(this.$animatedDialog);
                Dialog dialog2 = this.$dialog;
                dialog2.setDismissOverride(dialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1);
                dialog2.dismiss();
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationEnd(boolean z) {
                ActivityLaunchAnimator.Controller.this.onLaunchAnimationEnd(z);
                Dialog dialog2 = this.$dialog;
                dialog2.hide();
                dialog2.setDismissOverride(new DialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1(this.$animatedDialog));
                dialog2.dismiss();
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationProgress(LaunchAnimator.State state, float f, float f2) {
                this.$$delegate_0.onLaunchAnimationProgress(state, f, f2);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationStart(boolean z) {
                ActivityLaunchAnimator.Controller.this.onLaunchAnimationStart(z);
                DialogLaunchAnimator$createActivityLaunchController$1$disableDialogDismiss$1 dialogLaunchAnimator$createActivityLaunchController$1$disableDialogDismiss$1 = new Runnable() { // from class: com.android.systemui.animation.DialogLaunchAnimator$createActivityLaunchController$1$disableDialogDismiss$1
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                };
                Dialog dialog2 = this.$dialog;
                dialog2.setDismissOverride(dialogLaunchAnimator$createActivityLaunchController$1$disableDialogDismiss$1);
                this.$animatedDialog.prepareForStackDismiss();
                dialog2.getWindow().clearFlags(2);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void setLaunchContainer(ViewGroup viewGroup2) {
                this.$$delegate_0.setLaunchContainer(viewGroup2);
            }
        };
    }

    public static void showFromView$default(DialogLaunchAnimator dialogLaunchAnimator, Dialog dialog, View view, DialogCuj dialogCuj, boolean z, int i) {
        if ((i & 4) != 0) {
            dialogCuj = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        dialogLaunchAnimator.getClass();
        Controller.Companion.getClass();
        ViewDialogLaunchAnimatorController fromView = Controller.Companion.fromView(view, dialogCuj);
        if (fromView == null) {
            dialog.show();
        } else {
            dialogLaunchAnimator.show(dialog, fromView, z);
        }
    }

    public final void disableAllCurrentDialogsExitAnimations() {
        Iterator it = this.openedDialogs.iterator();
        while (it.hasNext()) {
            ((AnimatedDialog) it.next()).exitAnimationDisabled = true;
        }
    }

    public final void dismissStack(SystemUIDialog systemUIDialog) {
        Object obj;
        Iterator it = this.openedDialogs.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((AnimatedDialog) obj).dialog, systemUIDialog)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        AnimatedDialog animatedDialog = (AnimatedDialog) obj;
        if (animatedDialog != null) {
            animatedDialog.prepareForStackDismiss();
        }
        systemUIDialog.dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.android.systemui.animation.AnimatedDialog$start$dialogContentWithBackground$2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void show(android.app.Dialog r18, com.android.systemui.animation.ViewDialogLaunchAnimatorController r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.animation.DialogLaunchAnimator.show(android.app.Dialog, com.android.systemui.animation.ViewDialogLaunchAnimatorController, boolean):void");
    }

    public final void showFromDialog(Dialog dialog, Dialog dialog2, DialogCuj dialogCuj, boolean z) {
        ViewGroup viewGroup;
        Object obj;
        Iterator it = this.openedDialogs.iterator();
        while (true) {
            viewGroup = null;
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((AnimatedDialog) obj).dialog, dialog2)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        AnimatedDialog animatedDialog = (AnimatedDialog) obj;
        if (animatedDialog != null) {
            viewGroup = animatedDialog.dialogContentWithBackground;
        }
        if (viewGroup == null) {
            Log.w("DialogLaunchAnimator", "Showing dialog " + dialog + " normally as the dialog it is shown from was not shown using DialogLaunchAnimator");
            dialog.show();
            return;
        }
        Controller.Companion.getClass();
        ViewDialogLaunchAnimatorController fromView = Controller.Companion.fromView(viewGroup, dialogCuj);
        if (fromView == null) {
            dialog.show();
        } else {
            show(dialog, fromView, z);
        }
    }

    public DialogLaunchAnimator(Callback callback, InteractionJankMonitor interactionJankMonitor, AnimationFeatureFlags animationFeatureFlags, LaunchAnimator launchAnimator) {
        this(callback, interactionJankMonitor, animationFeatureFlags, launchAnimator, false, 16, null);
    }

    public DialogLaunchAnimator(Callback callback, InteractionJankMonitor interactionJankMonitor, AnimationFeatureFlags animationFeatureFlags, LaunchAnimator launchAnimator, boolean z) {
        this.callback = callback;
        this.interactionJankMonitor = interactionJankMonitor;
        this.featureFlags = animationFeatureFlags;
        this.launchAnimator = launchAnimator;
        this.isForTesting = z;
        this.openedDialogs = new HashSet();
    }

    public /* synthetic */ DialogLaunchAnimator(Callback callback, InteractionJankMonitor interactionJankMonitor, AnimationFeatureFlags animationFeatureFlags, LaunchAnimator launchAnimator, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(callback, interactionJankMonitor, animationFeatureFlags, (i & 8) != 0 ? new LaunchAnimator(TIMINGS, INTERPOLATORS) : launchAnimator, (i & 16) != 0 ? false : z);
    }
}
