package com.android.systemui.shared.rotation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.IRotationWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;
import com.android.internal.view.RotationPolicy;
import com.android.systemui.Dependency;
import com.android.systemui.navigationbar.BasicRuneWrapper;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.SamsungNavigationBarProxy;
import com.android.systemui.navigationbar.store.SystemBarProxy;
import com.android.systemui.shared.recents.utilities.ViewRippler;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RotationButtonController {
    public static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public final AccessibilityManager mAccessibilityManager;
    public SystemBarProxy mBarProxy;
    public final RotationButtonController$$ExternalSyntheticLambda0 mCancelPendingRotationProposal;
    public final Context mContext;
    public final int mDarkIconColor;
    public boolean mDocked;
    public boolean mHomeRotationEnabled;
    public boolean mHoveringRotationSuggestion;
    public final int mIconCcwStart0ResId;
    public final int mIconCcwStart90ResId;
    public final int mIconCwStart0ResId;
    public final int mIconCwStart90ResId;
    public int mIconResId;
    public boolean mIsNavigationBarShowing;
    public boolean mIsRecentsAnimationRunning;
    public final KeyguardManager mKeyguardManager;
    public int mLastRotationSuggestion;
    public final int mLightIconColor;
    public int mNavBarMode;
    public boolean mPendingRotationSuggestion;
    public final RotationButtonController$$ExternalSyntheticLambda0 mRemoveRotationProposal;
    public Animator mRotateHideAnimator;
    public final RotationButtonController$$ExternalSyntheticLambda0 mRotateSuggestionButtonShowRunnable;
    public RotationButton mRotationButton;
    public int mSamsungIconCCWStart0ResId;
    public int mSamsungIconCCWStart180ResId;
    public int mSamsungIconCCWStart90ResId;
    public int mSamsungIconCWStart0ResId;
    public int mSamsungIconCWStart180ResId;
    public int mSamsungIconCWStart90ResId;
    public int mSamsungRotateButtonResId;
    public boolean mSkipOverrideUserLockPrefsOnce;
    public int mStyleRes;
    public final TaskStackListenerImpl mTaskStackListener;
    public final Supplier mWindowRotationProvider;
    public final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    public final UiEventLogger mUiEventLogger = new UiEventLoggerImpl();
    public final ViewRippler mViewRippler = new ViewRippler();
    public boolean mListenersRegistered = false;
    public boolean mRotationWatcherRegistered = false;
    public int mBehavior = 1;
    public final AnonymousClass1 mDockedReceiver = new BroadcastReceiver() { // from class: com.android.systemui.shared.rotation.RotationButtonController.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            RotationButtonController rotationButtonController = RotationButtonController.this;
            Interpolator interpolator = RotationButtonController.LINEAR_INTERPOLATOR;
            rotationButtonController.getClass();
            if (intent != null) {
                boolean z = false;
                if (intent.getIntExtra("android.intent.extra.DOCK_STATE", 0) != 0) {
                    z = true;
                }
                rotationButtonController.mDocked = z;
            }
        }
    };
    public final AnonymousClass2 mRotationWatcher = new AnonymousClass2();
    public long mLastUnknownRotationProposedTick = 0;
    public final RotationButtonController$$ExternalSyntheticLambda1 mRotationLockCallback = new Consumer() { // from class: com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda1
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            RotationButtonController rotationButtonController = RotationButtonController.this;
            rotationButtonController.getClass();
            if (((Boolean) obj).booleanValue()) {
                rotationButtonController.mLastUnknownRotationProposedTick = 0L;
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.shared.rotation.RotationButtonController$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends IRotationWatcher.Stub {
        public AnonymousClass2() {
        }

        public final void onRotationChanged(final int i) {
            RotationButtonController.this.mMainThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: com.android.systemui.shared.rotation.RotationButtonController$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RotationButtonController.AnonymousClass2 anonymousClass2 = RotationButtonController.AnonymousClass2.this;
                    RotationButtonController.this.onRotationWatcherChanged(i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum RotationButtonEvent implements UiEventLogger.UiEventEnum {
        ROTATION_SUGGESTION_SHOWN(206),
        ROTATION_SUGGESTION_ACCEPTED(207);

        private final int mId;

        RotationButtonEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskStackListenerImpl implements TaskStackChangeListener {
        public /* synthetic */ TaskStackListenerImpl(RotationButtonController rotationButtonController, int i) {
            this();
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onActivityRequestedOrientationChanged(final int i) {
            Optional.ofNullable(ActivityManagerWrapper.sInstance).map(new RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0()).ifPresent(new Consumer() { // from class: com.android.systemui.shared.rotation.RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RotationButtonController.TaskStackListenerImpl taskStackListenerImpl = RotationButtonController.TaskStackListenerImpl.this;
                    int i2 = i;
                    taskStackListenerImpl.getClass();
                    if (((ActivityManager.RunningTaskInfo) obj).id == i2) {
                        RotationButtonController.this.setRotateSuggestionButtonState(false);
                    }
                }
            });
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskMovedToFront() {
            RotationButtonController.this.setRotateSuggestionButtonState(false);
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskRemoved() {
            RotationButtonController.this.setRotateSuggestionButtonState(false);
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskStackChanged() {
            RotationButtonController.this.setRotateSuggestionButtonState(false);
        }

        private TaskStackListenerImpl() {
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.shared.rotation.RotationButtonController$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda0] */
    public RotationButtonController(Context context, int i, int i2, int i3, int i4, int i5, int i6, Supplier<Integer> supplier) {
        final int i7 = 0;
        final int i8 = 1;
        this.mRemoveRotationProposal = new Runnable(this) { // from class: com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda0
            public final /* synthetic */ RotationButtonController f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i7) {
                    case 0:
                        this.f$0.setRotateSuggestionButtonState(false);
                        return;
                    case 1:
                        this.f$0.mPendingRotationSuggestion = false;
                        return;
                    default:
                        this.f$0.setRotateSuggestionButtonState(true, false);
                        return;
                }
            }
        };
        this.mCancelPendingRotationProposal = new Runnable(this) { // from class: com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda0
            public final /* synthetic */ RotationButtonController f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i8) {
                    case 0:
                        this.f$0.setRotateSuggestionButtonState(false);
                        return;
                    case 1:
                        this.f$0.mPendingRotationSuggestion = false;
                        return;
                    default:
                        this.f$0.setRotateSuggestionButtonState(true, false);
                        return;
                }
            }
        };
        final int i9 = 2;
        this.mRotateSuggestionButtonShowRunnable = new Runnable(this) { // from class: com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda0
            public final /* synthetic */ RotationButtonController f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i9) {
                    case 0:
                        this.f$0.setRotateSuggestionButtonState(false);
                        return;
                    case 1:
                        this.f$0.mPendingRotationSuggestion = false;
                        return;
                    default:
                        this.f$0.setRotateSuggestionButtonState(true, false);
                        return;
                }
            }
        };
        this.mContext = context;
        this.mLightIconColor = i;
        this.mDarkIconColor = i2;
        this.mIconCcwStart0ResId = i3;
        this.mIconCcwStart90ResId = i4;
        this.mIconCwStart0ResId = i5;
        this.mIconCwStart90ResId = i6;
        this.mIconResId = i4;
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mTaskStackListener = new TaskStackListenerImpl(this, i7);
        this.mWindowRotationProvider = supplier;
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            this.mKeyguardManager = (KeyguardManager) getContext().getSystemService("keyguard");
        }
    }

    public boolean canShowRotationButton() {
        if (this.mIsNavigationBarShowing || this.mBehavior == 1 || QuickStepContract.isGesturalMode(this.mNavBarMode)) {
            return true;
        }
        return false;
    }

    public final Context getContext() {
        boolean z = BasicRuneWrapper.NAVBAR_ENABLED;
        Context context = this.mContext;
        if (z) {
            return new ContextThemeWrapper(context.getApplicationContext(), this.mStyleRes);
        }
        return context;
    }

    public final boolean isRotationLocked() {
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            return ((SamsungNavigationBarProxy) this.mBarProxy).rotationLocked;
        }
        return RotationPolicy.isRotationLocked(this.mContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onRotationWatcherChanged(int r5) {
        /*
            r4 = this;
            boolean r0 = r4.mListenersRegistered
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r4.isRotationLocked()
            if (r0 != 0) goto L19
            boolean r1 = com.android.systemui.navigationbar.BasicRuneWrapper.NAVBAR_ENABLED
            if (r1 == 0) goto L4c
            com.android.systemui.shared.rotation.RotationButton r1 = r4.mRotationButton
            if (r1 == 0) goto L4c
            boolean r1 = r1.isVisible()
            if (r1 == 0) goto L4c
        L19:
            boolean r1 = r4.mSkipOverrideUserLockPrefsOnce
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L22
            r4.mSkipOverrideUserLockPrefsOnce = r3
            goto L26
        L22:
            if (r5 != 0) goto L26
            r1 = r2
            goto L27
        L26:
            r1 = r3
        L27:
            if (r1 == 0) goto L49
            if (r0 == 0) goto L49
            boolean r0 = r4.mDocked
            if (r0 != 0) goto L49
            boolean r0 = com.android.systemui.navigationbar.BasicRuneWrapper.NAVBAR_ENABLED
            if (r0 == 0) goto L49
            com.android.systemui.navigationbar.store.SystemBarProxy r0 = r4.mBarProxy
            com.android.systemui.navigationbar.SamsungNavigationBarProxy r0 = (com.android.systemui.navigationbar.SamsungNavigationBarProxy) r0
            r0.getClass()
            boolean r0 = com.android.systemui.util.DeviceType.isTablet()
            if (r0 != 0) goto L49
            android.content.Context r0 = r4.mContext
            boolean r1 = r4.isRotationLocked()
            com.android.internal.view.RotationPolicy.setRotationLockAtAngle(r0, r1, r5)
        L49:
            r4.setRotateSuggestionButtonState(r3, r2)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.rotation.RotationButtonController.onRotationWatcherChanged(int):void");
    }

    public final void rescheduleRotationTimeout(boolean z) {
        int i;
        Animator animator;
        if (z && (((animator = this.mRotateHideAnimator) != null && animator.isRunning()) || !this.mRotationButton.isVisible())) {
            return;
        }
        Handler handler = this.mMainThreadHandler;
        RotationButtonController$$ExternalSyntheticLambda0 rotationButtonController$$ExternalSyntheticLambda0 = this.mRemoveRotationProposal;
        handler.removeCallbacks(rotationButtonController$$ExternalSyntheticLambda0);
        if (this.mHoveringRotationSuggestion) {
            i = VolumePanelState.DIALOG_HOVERING_TIMEOUT_MILLIS;
        } else {
            i = 5000;
        }
        handler.postDelayed(rotationButtonController$$ExternalSyntheticLambda0, this.mAccessibilityManager.getRecommendedTimeoutMillis(i, 4));
    }

    public final void setRotateSuggestionButtonState(boolean z) {
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            Handler handler = this.mMainThreadHandler;
            RotationButtonController$$ExternalSyntheticLambda0 rotationButtonController$$ExternalSyntheticLambda0 = this.mRotateSuggestionButtonShowRunnable;
            if (z) {
                handler.postDelayed(rotationButtonController$$ExternalSyntheticLambda0, 500L);
                return;
            } else {
                handler.removeCallbacks(rotationButtonController$$ExternalSyntheticLambda0);
                setRotateSuggestionButtonState(false, false);
                return;
            }
        }
        setRotateSuggestionButtonState(z, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda3] */
    public final void setRotationButton(RotationButton rotationButton, NavigationBarView.AnonymousClass2 anonymousClass2) {
        RotationButton rotationButton2;
        if (BasicRuneWrapper.NAVBAR_ENABLED && (rotationButton2 = this.mRotationButton) != null && rotationButton2 != rotationButton && rotationButton2.isVisible()) {
            this.mRotationButton.hide();
        }
        this.mRotationButton = rotationButton;
        rotationButton.setRotationButtonController(this);
        this.mRotationButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RotationButtonController rotationButtonController = RotationButtonController.this;
                if (BasicRuneWrapper.NAVBAR_ENABLED) {
                    rotationButtonController.mLastUnknownRotationProposedTick = 0L;
                    ((SamsungNavigationBarProxy) rotationButtonController.mBarProxy).getClass();
                    MetricsLogger metricsLogger = (MetricsLogger) Dependency.get(MetricsLogger.class);
                    if (metricsLogger != null) {
                        metricsLogger.action(1287);
                    }
                }
                rotationButtonController.mUiEventLogger.log(RotationButtonController.RotationButtonEvent.ROTATION_SUGGESTION_ACCEPTED);
                Context context = rotationButtonController.mContext;
                ContentResolver contentResolver = context.getContentResolver();
                int i = Settings.Secure.getInt(contentResolver, "num_rotation_suggestions_accepted", 0);
                if (i < 1) {
                    Settings.Secure.putInt(contentResolver, "num_rotation_suggestions_accepted", i + 1);
                }
                RotationPolicy.setRotationLockAtAngle(context, rotationButtonController.isRotationLocked(), rotationButtonController.mLastRotationSuggestion);
                Log.i("RotationButtonController", "onRotateSuggestionClick() mLastRotationSuggestion=" + rotationButtonController.mLastRotationSuggestion);
                view.performHapticFeedback(1);
            }
        });
        this.mRotationButton.setOnHoverListener(new View.OnHoverListener() { // from class: com.android.systemui.shared.rotation.RotationButtonController$$ExternalSyntheticLambda3
            @Override // android.view.View.OnHoverListener
            public final boolean onHover(View view, MotionEvent motionEvent) {
                boolean z;
                RotationButtonController rotationButtonController = RotationButtonController.this;
                rotationButtonController.getClass();
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 9 && actionMasked != 7) {
                    z = false;
                } else {
                    z = true;
                }
                rotationButtonController.mHoveringRotationSuggestion = z;
                rotationButtonController.rescheduleRotationTimeout(true);
                return false;
            }
        });
        this.mRotationButton.setUpdatesCallback(anonymousClass2);
    }

    public final void showAndLogRotationSuggestion() {
        if (BasicRuneWrapper.NAVBAR_ENABLED && this.mRotationButton.isVisible()) {
            this.mRotationButton.hide();
        }
        setRotateSuggestionButtonState(true);
        rescheduleRotationTimeout(false);
        this.mUiEventLogger.log(RotationButtonEvent.ROTATION_SUGGESTION_SHOWN);
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            this.mLastUnknownRotationProposedTick = 0L;
            ((SamsungNavigationBarProxy) this.mBarProxy).getClass();
            MetricsLogger metricsLogger = (MetricsLogger) Dependency.get(MetricsLogger.class);
            if (metricsLogger != null) {
                metricsLogger.visible(1288);
            }
        }
    }

    public final void setRotateSuggestionButtonState(boolean z, boolean z2) {
        View currentView;
        Drawable imageDrawable;
        if (BasicRuneWrapper.NAVBAR_ENABLED && this.mRotationButton == null) {
            return;
        }
        if ((!z && !this.mRotationButton.isVisible()) || (currentView = this.mRotationButton.getCurrentView()) == null || (imageDrawable = this.mRotationButton.getImageDrawable()) == null) {
            return;
        }
        this.mPendingRotationSuggestion = false;
        this.mMainThreadHandler.removeCallbacks(this.mCancelPendingRotationProposal);
        ViewRippler viewRippler = this.mViewRippler;
        if (z) {
            Animator animator = this.mRotateHideAnimator;
            if (animator != null && animator.isRunning()) {
                this.mRotateHideAnimator.cancel();
            }
            this.mRotateHideAnimator = null;
            currentView.setAlpha(1.0f);
            if (imageDrawable instanceof AnimatedVectorDrawable) {
                AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) imageDrawable;
                animatedVectorDrawable.reset();
                animatedVectorDrawable.start();
            }
            if (!(Settings.Secure.getInt(this.mContext.getContentResolver(), "num_rotation_suggestions_accepted", 0) >= 1)) {
                View view = viewRippler.mRoot;
                if (view != null) {
                    view.removeCallbacks(viewRippler.mRipple);
                }
                viewRippler.mRoot = currentView;
                ViewRippler.AnonymousClass1 anonymousClass1 = viewRippler.mRipple;
                currentView.postOnAnimationDelayed(anonymousClass1, 50L);
                viewRippler.mRoot.postOnAnimationDelayed(anonymousClass1, 2000L);
                viewRippler.mRoot.postOnAnimationDelayed(anonymousClass1, 4000L);
                viewRippler.mRoot.postOnAnimationDelayed(anonymousClass1, 6000L);
                viewRippler.mRoot.postOnAnimationDelayed(anonymousClass1, 8000L);
            }
            this.mRotationButton.show();
            return;
        }
        View view2 = viewRippler.mRoot;
        if (view2 != null) {
            view2.removeCallbacks(viewRippler.mRipple);
        }
        if (z2) {
            Animator animator2 = this.mRotateHideAnimator;
            if (animator2 != null && animator2.isRunning()) {
                this.mRotateHideAnimator.pause();
            }
            this.mRotationButton.hide();
            return;
        }
        Animator animator3 = this.mRotateHideAnimator;
        if (animator3 == null || !animator3.isRunning()) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(currentView, "alpha", 0.0f);
            ofFloat.setDuration(100L);
            ofFloat.setInterpolator(LINEAR_INTERPOLATOR);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.shared.rotation.RotationButtonController.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator4) {
                    RotationButtonController.this.mRotationButton.hide();
                }
            });
            this.mRotateHideAnimator = ofFloat;
            ofFloat.start();
        }
    }
}
