package com.android.systemui.biometrics;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.hardware.biometrics.IBiometricSysuiReceiver;
import android.hardware.biometrics.PromptInfo;
import android.hardware.face.FaceSensorPropertiesInternal;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserManager;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthBiometricView;
import com.android.systemui.biometrics.AuthContainerView;
import com.android.systemui.biometrics.ui.BiometricPromptLayout;
import com.android.systemui.biometrics.ui.CredentialView;
import com.android.systemui.biometrics.ui.binder.AuthBiometricFingerprintViewBinder;
import com.android.systemui.biometrics.ui.viewmodel.AuthBiometricFingerprintViewModel;
import com.android.systemui.biometrics.ui.viewmodel.PromptViewModel;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.util.concurrency.DelayableExecutor;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthContainerView extends LinearLayout implements AuthDialog, WakefulnessLifecycle.Observer, CredentialView.Host {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AuthContainerView$$ExternalSyntheticLambda2 mBackCallback;
    public final ImageView mBackgroundView;
    final BiometricCallback mBiometricCallback;
    public final ScrollView mBiometricScrollView;
    public AuthBiometricViewAdapter mBiometricView;
    public final Config mConfig;
    int mContainerState;
    public byte[] mCredentialAttestation;
    public View mCredentialView;
    public final Provider mCredentialViewModelProvider;
    public final int mEffectiveUserId;
    public final Set mFailedModalities;
    public final FrameLayout mFrameLayout;
    public final Handler mHandler;
    public final InteractionJankMonitor mInteractionJankMonitor;
    public final Interpolator mLinearOutSlowIn;
    public final LockPatternUtils mLockPatternUtils;
    public final AuthPanelController mPanelController;
    public final AuthDialogPanelInteractionDetector mPanelInteractionDetector;
    public final View mPanelView;
    public Integer mPendingCallbackReason;
    public final Provider mPromptSelectorInteractorProvider;
    public final PromptViewModel mPromptViewModel;
    public final float mTranslationY;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final WindowManager mWindowManager;
    public final IBinder mWindowToken;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class BiometricCallback implements AuthBiometricView.Callback {
        public BiometricCallback() {
        }

        @Override // com.android.systemui.biometrics.AuthBiometricView.Callback
        public final void onAction(int i) {
            AuthContainerView authContainerView = AuthContainerView.this;
            switch (i) {
                case 1:
                    authContainerView.animateAway(4, true);
                    return;
                case 2:
                    authContainerView.sendEarlyUserCanceled();
                    authContainerView.animateAway(1, true);
                    return;
                case 3:
                    authContainerView.animateAway(2, true);
                    return;
                case 4:
                    ((HashSet) authContainerView.mFailedModalities).clear();
                    Config config = authContainerView.mConfig;
                    IBiometricSysuiReceiver currentReceiver = config.mCallback.getCurrentReceiver(config.mRequestId);
                    if (currentReceiver == null) {
                        Log.w("AuthController", "Skip onTryAgainPressed");
                        return;
                    }
                    try {
                        currentReceiver.onTryAgainPressed();
                        return;
                    } catch (RemoteException e) {
                        Log.e("AuthController", "RemoteException when handling try again", e);
                        return;
                    }
                case 5:
                    authContainerView.animateAway(5, true);
                    return;
                case 6:
                    Config config2 = authContainerView.mConfig;
                    IBiometricSysuiReceiver currentReceiver2 = config2.mCallback.getCurrentReceiver(config2.mRequestId);
                    if (currentReceiver2 == null) {
                        Log.w("AuthController", "Skip onDeviceCredentialPressed");
                    } else {
                        try {
                            currentReceiver2.onDeviceCredentialPressed();
                        } catch (RemoteException e2) {
                            Log.e("AuthController", "RemoteException when handling credential button", e2);
                        }
                    }
                    Handler handler = authContainerView.mHandler;
                    AuthContainerView$$ExternalSyntheticLambda0 authContainerView$$ExternalSyntheticLambda0 = new AuthContainerView$$ExternalSyntheticLambda0(this, 3);
                    authContainerView.mConfig.getClass();
                    handler.postDelayed(authContainerView$$ExternalSyntheticLambda0, 300L);
                    return;
                case 7:
                    Config config3 = authContainerView.mConfig;
                    IBiometricSysuiReceiver currentReceiver3 = config3.mCallback.getCurrentReceiver(config3.mRequestId);
                    if (currentReceiver3 == null) {
                        Log.e("AuthController", "onStartUdfpsNow: Receiver is null");
                        return;
                    }
                    try {
                        currentReceiver3.onStartFingerprintNow();
                        return;
                    } catch (RemoteException e3) {
                        Log.e("AuthController", "RemoteException when sending onDialogAnimatedIn", e3);
                        return;
                    }
                case 8:
                    authContainerView.animateAway(3, true);
                    return;
                default:
                    NestedScrollView$$ExternalSyntheticOutline0.m("Unhandled action: ", i, "AuthContainerView");
                    return;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Config {
        public AuthController mCallback;
        public Context mContext;
        public String mOpPackageName;
        public long mOperationId;
        public PromptInfo mPromptInfo;
        public long mRequestId = -1;
        public boolean mRequireConfirmation;
        public AuthController$$ExternalSyntheticLambda2 mScaleProvider;
        public int[] mSensorIds;
        public boolean mSkipIntro;
        public int mUserId;
    }

    public AuthContainerView(Config config, FeatureFlags featureFlags, CoroutineScope coroutineScope, List<FingerprintSensorPropertiesInternal> list, List<FaceSensorPropertiesInternal> list2, WakefulnessLifecycle wakefulnessLifecycle, AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector, UserManager userManager, LockPatternUtils lockPatternUtils, InteractionJankMonitor interactionJankMonitor, Provider provider, Provider provider2, Provider provider3, PromptViewModel promptViewModel, Provider provider4, DelayableExecutor delayableExecutor) {
        this(config, featureFlags, coroutineScope, list, list2, wakefulnessLifecycle, authDialogPanelInteractionDetector, userManager, lockPatternUtils, interactionJankMonitor, provider, provider3, provider2, promptViewModel, provider4, new Handler(Looper.getMainLooper()), delayableExecutor);
    }

    public static WindowManager.LayoutParams getLayoutParams(IBinder iBinder, CharSequence charSequence) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2009, 17309698, -3);
        layoutParams.privateFlags |= 16;
        layoutParams.setFitInsetsTypes(layoutParams.getFitInsetsTypes() & (~WindowInsets.Type.ime()) & (~WindowInsets.Type.systemBars()));
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.setTitle("BiometricPrompt");
        layoutParams.accessibilityTitle = charSequence;
        layoutParams.dimAmount = 0.5f;
        layoutParams.token = iBinder;
        return layoutParams;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addCredentialView(boolean r12, boolean r13) {
        /*
            r11 = this;
            android.content.Context r0 = r11.mContext
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            com.android.internal.widget.LockPatternUtils r1 = r11.mLockPatternUtils
            int r2 = r11.mEffectiveUserId
            int r1 = com.android.systemui.biometrics.Utils.getCredentialType(r1, r2)
            r2 = 0
            r3 = 3
            r4 = 1
            r5 = 2
            r6 = 0
            if (r1 == r4) goto L30
            if (r1 == r5) goto L26
            if (r1 != r3) goto L1a
            goto L30
        L1a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "Unknown credential type: "
            java.lang.String r12 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r12, r1)
            r11.<init>(r12)
            throw r11
        L26:
            r7 = 2131558467(0x7f0d0043, float:1.874225E38)
            android.view.View r0 = r0.inflate(r7, r6, r2)
            r11.mCredentialView = r0
            goto L39
        L30:
            r7 = 2131558466(0x7f0d0042, float:1.8742249E38)
            android.view.View r0 = r0.inflate(r7, r6, r2)
            r11.mCredentialView = r0
        L39:
            android.widget.ImageView r0 = r11.mBackgroundView
            r0.setOnClickListener(r6)
            android.widget.ImageView r0 = r11.mBackgroundView
            r0.setImportantForAccessibility(r5)
            javax.inject.Provider r0 = r11.mPromptSelectorInteractorProvider
            java.lang.Object r0 = r0.get()
            com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractor r0 = (com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractor) r0
            com.android.systemui.biometrics.AuthContainerView$Config r2 = r11.mConfig
            android.hardware.biometrics.PromptInfo r7 = r2.mPromptInfo
            int r8 = r2.mUserId
            long r9 = r2.mOperationId
            com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractorImpl r0 = (com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractorImpl) r0
            r0.getClass()
            java.lang.Long r2 = java.lang.Long.valueOf(r9)
            if (r1 == r4) goto L6e
            if (r1 == r5) goto L6b
            if (r1 == r3) goto L68
            com.android.systemui.biometrics.shared.model.PromptKind$Biometric r1 = new com.android.systemui.biometrics.shared.model.PromptKind$Biometric
            r1.<init>(r6, r4, r6)
            goto L70
        L68:
            com.android.systemui.biometrics.shared.model.PromptKind$Password r1 = com.android.systemui.biometrics.shared.model.PromptKind.Password.INSTANCE
            goto L70
        L6b:
            com.android.systemui.biometrics.shared.model.PromptKind$Pattern r1 = com.android.systemui.biometrics.shared.model.PromptKind.Pattern.INSTANCE
            goto L70
        L6e:
            com.android.systemui.biometrics.shared.model.PromptKind$Pin r1 = com.android.systemui.biometrics.shared.model.PromptKind.Pin.INSTANCE
        L70:
            com.android.systemui.biometrics.data.repository.PromptRepository r0 = r0.promptRepository
            com.android.systemui.biometrics.data.repository.PromptRepositoryImpl r0 = (com.android.systemui.biometrics.data.repository.PromptRepositoryImpl) r0
            kotlinx.coroutines.flow.StateFlowImpl r3 = r0._kind
            r3.setValue(r1)
            kotlinx.coroutines.flow.StateFlowImpl r1 = r0._userId
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            r1.setValue(r3)
            kotlinx.coroutines.flow.StateFlowImpl r1 = r0._challenge
            r1.setValue(r2)
            kotlinx.coroutines.flow.StateFlowImpl r1 = r0._promptInfo
            r1.setValue(r7)
            kotlinx.coroutines.flow.StateFlowImpl r0 = r0._isConfirmationRequired
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.setValue(r1)
            javax.inject.Provider r0 = r11.mCredentialViewModelProvider
            java.lang.Object r0 = r0.get()
            com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel r0 = (com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel) r0
            kotlinx.coroutines.flow.StateFlowImpl r1 = r0._animateContents
            java.lang.Boolean r13 = java.lang.Boolean.valueOf(r13)
            r1.setValue(r13)
            android.view.View r13 = r11.mCredentialView
            com.android.systemui.biometrics.ui.CredentialView r13 = (com.android.systemui.biometrics.ui.CredentialView) r13
            com.android.systemui.biometrics.AuthPanelController r1 = r11.mPanelController
            r13.init(r0, r11, r1, r12)
            android.widget.FrameLayout r12 = r11.mFrameLayout
            android.view.View r11 = r11.mCredentialView
            r12.addView(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.AuthContainerView.addCredentialView(boolean, boolean):void");
    }

    public final void animateAway(int i, boolean z) {
        int i2 = this.mContainerState;
        if (i2 == 1) {
            Log.w("AuthContainerView", "startDismiss(): waiting for onDialogAnimatedIn");
            this.mContainerState = 2;
            return;
        }
        if (i2 == 4) {
            Log.w("AuthContainerView", "Already dismissing, sendReason: " + z + " reason: " + i);
            return;
        }
        this.mContainerState = 4;
        if (isAttachedToWindow() && getRootWindowInsets().isVisible(WindowInsets.Type.ime())) {
            getWindowInsetsController().hide(WindowInsets.Type.ime());
        }
        if (z) {
            this.mPendingCallbackReason = Integer.valueOf(i);
        } else {
            this.mPendingCallbackReason = null;
        }
        final AuthContainerView$$ExternalSyntheticLambda0 authContainerView$$ExternalSyntheticLambda0 = new AuthContainerView$$ExternalSyntheticLambda0(this, 0);
        this.mConfig.getClass();
        postOnAnimation(new Runnable() { // from class: com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                final AuthContainerView authContainerView = AuthContainerView.this;
                authContainerView.animate().alpha(0.0f).translationY(authContainerView.mTranslationY).setDuration(350L).setInterpolator(authContainerView.mLinearOutSlowIn).setListener(new AuthContainerView.AnonymousClass1(authContainerView, "dismiss", 350L)).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AuthContainerView authContainerView2 = AuthContainerView.this;
                        if (authContainerView2.mWindowManager != null && authContainerView2.getViewRootImpl() != null) {
                            WindowManager.LayoutParams layoutParams = authContainerView2.getViewRootImpl().mWindowAttributes;
                            layoutParams.dimAmount = (1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.5f;
                            authContainerView2.mWindowManager.updateViewLayout(authContainerView2, layoutParams);
                            return;
                        }
                        Log.w("AuthContainerView", "skip updateViewLayout() for dim animation.");
                    }
                }).withLayer().withEndAction(authContainerView$$ExternalSyntheticLambda0).start();
            }
        });
    }

    public final void dismissWithoutCallback(boolean z) {
        if (z) {
            animateAway(0, false);
            return;
        }
        if (this.mContainerState == 1) {
            View view = this.mCredentialView;
            if (view != null && view.isAttachedToWindow()) {
                this.mCredentialView.animate().cancel();
            }
            this.mPanelView.animate().cancel();
            this.mBiometricView.cancelAnimation();
            animate().cancel();
            onDialogAnimatedIn();
        }
        removeWindowIfAttached();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        printWriter.println("    isAttachedToWindow=" + isAttachedToWindow());
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("    containerState="), this.mContainerState, printWriter, "    pendingCallbackReason=");
        m.append(this.mPendingCallbackReason);
        printWriter.println(m.toString());
        StringBuilder sb = new StringBuilder("    config exist=");
        boolean z2 = true;
        if (this.mConfig != null) {
            z = true;
        } else {
            z = false;
        }
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, z, printWriter);
        if (this.mConfig != null) {
            StringBuilder sb2 = new StringBuilder("    config.sensorIds exist=");
            if (this.mConfig.mSensorIds == null) {
                z2 = false;
            }
            KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb2, z2, printWriter);
        }
    }

    public final void maybeUpdatePositionForUdfps(boolean z) {
        AuthBiometricViewAdapter authBiometricViewAdapter;
        boolean z2;
        Display display = getDisplay();
        if (display != null && (authBiometricViewAdapter = this.mBiometricView) != null) {
            View asView = authBiometricViewAdapter.asView();
            if (asView instanceof AuthBiometricFingerprintView) {
                z2 = ((AuthBiometricFingerprintView) asView).isUdfps;
            } else if (asView instanceof BiometricPromptLayout) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                int rotation = display.getRotation();
                if (rotation != 0) {
                    if (rotation != 1) {
                        if (rotation != 3) {
                            NestedScrollView$$ExternalSyntheticOutline0.m("Unsupported display rotation: ", rotation, "AuthContainerView");
                            this.mPanelController.mPosition = 1;
                            setScrollViewGravity(81);
                        } else {
                            this.mPanelController.mPosition = 2;
                            setScrollViewGravity(19);
                        }
                    } else {
                        this.mPanelController.mPosition = 3;
                        setScrollViewGravity(21);
                    }
                } else {
                    this.mPanelController.mPosition = 1;
                    setScrollViewGravity(81);
                }
                if (z) {
                    this.mPanelView.invalidateOutline();
                    this.mBiometricView.requestLayout();
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        boolean z;
        super.onAttachedToWindow();
        this.mWakefulnessLifecycle.addObserver(this);
        AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector = this.mPanelInteractionDetector;
        AuthContainerView$$ExternalSyntheticLambda0 authContainerView$$ExternalSyntheticLambda0 = new AuthContainerView$$ExternalSyntheticLambda0(this, 1);
        if (authDialogPanelInteractionDetector.action == null) {
            authDialogPanelInteractionDetector.action = new Action(authContainerView$$ExternalSyntheticLambda0);
            AuthDialogPanelInteractionDetector$enable$1 authDialogPanelInteractionDetector$enable$1 = new AuthDialogPanelInteractionDetector$enable$1(authDialogPanelInteractionDetector);
            ShadeExpansionStateManager shadeExpansionStateManager = authDialogPanelInteractionDetector.shadeExpansionStateManager;
            shadeExpansionStateManager.stateListeners.add(authDialogPanelInteractionDetector$enable$1);
            shadeExpansionStateManager.addExpansionListener(new AuthDialogPanelInteractionDetector$enable$2(authDialogPanelInteractionDetector));
        } else {
            Log.e("AuthDialogPanelInteractionDetector", "Already enabled");
        }
        PromptInfo promptInfo = this.mConfig.mPromptInfo;
        int i = Utils.$r8$clinit;
        if ((promptInfo.getAuthenticators() & 255) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mBiometricScrollView.addView(this.mBiometricView.asView());
        } else if (Utils.isDeviceCredentialAllowed(this.mConfig.mPromptInfo)) {
            addCredentialView(true, false);
        } else {
            throw new IllegalStateException("Unknown configuration: " + this.mConfig.mPromptInfo.getAuthenticators());
        }
        maybeUpdatePositionForUdfps(false);
        if (this.mConfig.mSkipIntro) {
            this.mContainerState = 3;
        } else {
            this.mContainerState = 1;
            setY(this.mTranslationY);
            setAlpha(0.0f);
            this.mConfig.getClass();
            postOnAnimation(new Runnable() { // from class: com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AuthContainerView authContainerView = AuthContainerView.this;
                    authContainerView.animate().alpha(1.0f).translationY(0.0f).setDuration(250L).setInterpolator(authContainerView.mLinearOutSlowIn).withLayer().setListener(new AuthContainerView.AnonymousClass1(authContainerView, "show", 250L)).withEndAction(new AuthContainerView$$ExternalSyntheticLambda0(authContainerView, 2)).start();
                }
            });
        }
        OnBackInvokedDispatcher findOnBackInvokedDispatcher = findOnBackInvokedDispatcher();
        if (findOnBackInvokedDispatcher != null) {
            findOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.mBackCallback);
        }
    }

    public final void onAuthenticationFailed(int i, String str) {
        if (this.mBiometricView != null) {
            ((HashSet) this.mFailedModalities).add(Integer.valueOf(i));
            this.mBiometricView.onAuthenticationFailed(i, str);
            return;
        }
        Log.e("AuthContainerView", "onAuthenticationFailed(): mBiometricView is null");
    }

    public final void onCredentialAttemptsRemaining(int i, String str) {
        if (i == 1) {
            AlertDialog create = new AlertDialog.Builder(((LinearLayout) this).mContext).setTitle(R.string.biometric_dialog_last_attempt_before_wipe_dialog_title).setMessage(str).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).create();
            create.getWindow().setType(2017);
            create.show();
        } else if (i <= 0) {
            AlertDialog create2 = new AlertDialog.Builder(((LinearLayout) this).mContext).setMessage(str).setPositiveButton(R.string.failed_attempts_now_wiping_dialog_dismiss, (DialogInterface.OnClickListener) null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AuthContainerView.this.animateAway(5, true);
                }
            }).create();
            create2.getWindow().setType(2017);
            create2.show();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.mPanelInteractionDetector.disable();
        if (findOnBackInvokedDispatcher() != null) {
            findOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.mBackCallback);
        }
        super.onDetachedFromWindow();
        this.mWakefulnessLifecycle.removeObserver(this);
    }

    public final void onDialogAnimatedIn() {
        boolean z;
        int i = this.mContainerState;
        if (i == 2) {
            Log.d("AuthContainerView", "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now");
            animateAway(1, true);
            return;
        }
        if (i != 4 && i != 5) {
            this.mContainerState = 3;
            AuthBiometricViewAdapter authBiometricViewAdapter = this.mBiometricView;
            if (authBiometricViewAdapter != null) {
                if (authBiometricViewAdapter.isCoex() && !this.mConfig.mRequireConfirmation) {
                    z = true;
                } else {
                    z = false;
                }
                Config config = this.mConfig;
                AuthController authController = config.mCallback;
                long j = config.mRequestId;
                boolean z2 = !z;
                IBiometricSysuiReceiver currentReceiver = authController.getCurrentReceiver(j);
                if (currentReceiver == null) {
                    Log.w("AuthController", "Skip onDialogAnimatedIn");
                } else {
                    try {
                        currentReceiver.onDialogAnimatedIn(z2);
                    } catch (RemoteException e) {
                        Log.e("AuthController", "RemoteException when sending onDialogAnimatedIn", e);
                    }
                }
                this.mBiometricView.onDialogAnimatedIn(!z);
                return;
            }
            return;
        }
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onDialogAnimatedIn(): ignore, already animating out or gone - state: "), this.mContainerState, "AuthContainerView");
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        AuthPanelController authPanelController = this.mPanelController;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        authPanelController.mContainerWidth = measuredWidth;
        authPanelController.mContainerHeight = measuredHeight;
    }

    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
    public final void onStartedGoingToSleep() {
        animateAway(1, true);
    }

    public final void removeWindowIfAttached() {
        Log.d("AuthContainerView", "pendingCallback: " + this.mPendingCallbackReason);
        Integer num = this.mPendingCallbackReason;
        if (num != null) {
            AuthController authController = this.mConfig.mCallback;
            int intValue = num.intValue();
            byte[] bArr = this.mCredentialAttestation;
            long j = this.mConfig.mRequestId;
            AuthDialog authDialog = authController.mCurrentDialog;
            if (authDialog != null && j != ((AuthContainerView) authDialog).mConfig.mRequestId) {
                Log.w("AuthController", "requestId doesn't match, skip onDismissed");
            } else {
                switch (intValue) {
                    case 1:
                        authController.sendResultAndCleanUp(3, bArr);
                        break;
                    case 2:
                        authController.sendResultAndCleanUp(2, bArr);
                        break;
                    case 3:
                        authController.sendResultAndCleanUp(1, bArr);
                        break;
                    case 4:
                        authController.sendResultAndCleanUp(4, bArr);
                        break;
                    case 5:
                        authController.sendResultAndCleanUp(5, bArr);
                        break;
                    case 6:
                        authController.sendResultAndCleanUp(6, bArr);
                        break;
                    case 7:
                        authController.sendResultAndCleanUp(7, bArr);
                        break;
                    default:
                        NestedScrollView$$ExternalSyntheticOutline0.m("Unhandled reason: ", intValue, "AuthController");
                        break;
                }
            }
            this.mPendingCallbackReason = null;
        }
        if (this.mContainerState == 5) {
            return;
        }
        this.mContainerState = 5;
        if (isAttachedToWindow()) {
            this.mWindowManager.removeViewImmediate(this);
        }
    }

    public final void sendEarlyUserCanceled() {
        Config config = this.mConfig;
        IBiometricSysuiReceiver currentReceiver = config.mCallback.getCurrentReceiver(config.mRequestId);
        if (currentReceiver == null) {
            Log.w("AuthController", "Skip onSystemEvent");
            return;
        }
        try {
            currentReceiver.onSystemEvent(1);
        } catch (RemoteException e) {
            Log.e("AuthController", "RemoteException when sending system event", e);
        }
    }

    public final void setScrollViewGravity(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mBiometricScrollView.getLayoutParams();
        layoutParams.gravity = i;
        this.mBiometricScrollView.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda2] */
    public AuthContainerView(Config config, FeatureFlags featureFlags, CoroutineScope coroutineScope, List<FingerprintSensorPropertiesInternal> list, List<FaceSensorPropertiesInternal> list2, WakefulnessLifecycle wakefulnessLifecycle, AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector, UserManager userManager, LockPatternUtils lockPatternUtils, InteractionJankMonitor interactionJankMonitor, Provider provider, Provider provider2, Provider provider3, PromptViewModel promptViewModel, Provider provider4, Handler handler, DelayableExecutor delayableExecutor) {
        super(config.mContext);
        this.mWindowToken = new Binder();
        boolean z = false;
        this.mContainerState = 0;
        this.mFailedModalities = new HashSet();
        this.mBackCallback = new OnBackInvokedCallback() { // from class: com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda2
            @Override // android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
                AuthContainerView authContainerView = AuthContainerView.this;
                authContainerView.sendEarlyUserCanceled();
                authContainerView.animateAway(1, true);
            }
        };
        this.mConfig = config;
        this.mLockPatternUtils = lockPatternUtils;
        int credentialOwnerProfile = userManager.getCredentialOwnerProfile(config.mUserId);
        this.mEffectiveUserId = credentialOwnerProfile;
        this.mHandler = handler;
        this.mWindowManager = (WindowManager) ((LinearLayout) this).mContext.getSystemService(WindowManager.class);
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mPanelInteractionDetector = authDialogPanelInteractionDetector;
        this.mTranslationY = getResources().getDimension(R.dimen.biometric_dialog_animation_translation_offset);
        this.mLinearOutSlowIn = Interpolators.LINEAR_OUT_SLOW_IN;
        BiometricCallback biometricCallback = new BiometricCallback();
        this.mBiometricCallback = biometricCallback;
        LayoutInflater from = LayoutInflater.from(((LinearLayout) this).mContext);
        FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.auth_container_view, (ViewGroup) this, false);
        this.mFrameLayout = frameLayout;
        addView(frameLayout);
        this.mBiometricScrollView = (ScrollView) frameLayout.findViewById(R.id.biometric_scrollview);
        ImageView imageView = (ImageView) frameLayout.findViewById(R.id.background);
        this.mBackgroundView = imageView;
        View findViewById = frameLayout.findViewById(R.id.panel);
        this.mPanelView = findViewById;
        AuthPanelController authPanelController = new AuthPanelController(((LinearLayout) this).mContext, findViewById);
        this.mPanelController = authPanelController;
        this.mInteractionJankMonitor = interactionJankMonitor;
        this.mPromptSelectorInteractorProvider = provider2;
        this.mCredentialViewModelProvider = provider4;
        this.mPromptViewModel = promptViewModel;
        Flags flags = Flags.INSTANCE;
        featureFlags.getClass();
        PromptInfo promptInfo = config.mPromptInfo;
        int i = Utils.$r8$clinit;
        if ((promptInfo.getAuthenticators() & 255) != 0) {
            FingerprintSensorPropertiesInternal findFirstSensorProperties = Utils.findFirstSensorProperties(list, config.mSensorIds);
            FaceSensorPropertiesInternal findFirstSensorProperties2 = Utils.findFirstSensorProperties(list2, config.mSensorIds);
            if (findFirstSensorProperties != null && findFirstSensorProperties2 != null) {
                AuthBiometricFingerprintAndFaceView authBiometricFingerprintAndFaceView = (AuthBiometricFingerprintAndFaceView) from.inflate(R.layout.auth_biometric_fingerprint_and_face_view, (ViewGroup) null, false);
                authBiometricFingerprintAndFaceView.getClass();
                authBiometricFingerprintAndFaceView.isSfps = findFirstSensorProperties.isAnySidefpsType();
                boolean isAnyUdfpsType = findFirstSensorProperties.isAnyUdfpsType();
                authBiometricFingerprintAndFaceView.isUdfps = isAnyUdfpsType;
                authBiometricFingerprintAndFaceView.udfpsAdapter = isAnyUdfpsType ? new UdfpsDialogMeasureAdapter(authBiometricFingerprintAndFaceView, findFirstSensorProperties) : null;
                authBiometricFingerprintAndFaceView.scaleFactorProvider = config.mScaleProvider;
                authBiometricFingerprintAndFaceView.updateOverrideIconLayoutParamsSize();
                authBiometricFingerprintAndFaceView.isFaceClass3 = findFirstSensorProperties2.sensorStrength == 2;
                AuthBiometricFingerprintViewBinder.bind(authBiometricFingerprintAndFaceView, (AuthBiometricFingerprintViewModel) provider.get());
                this.mBiometricView = authBiometricFingerprintAndFaceView;
            } else if (findFirstSensorProperties != null) {
                AuthBiometricFingerprintView authBiometricFingerprintView = (AuthBiometricFingerprintView) from.inflate(R.layout.auth_biometric_fingerprint_view, (ViewGroup) null, false);
                authBiometricFingerprintView.getClass();
                authBiometricFingerprintView.isSfps = findFirstSensorProperties.isAnySidefpsType();
                boolean isAnyUdfpsType2 = findFirstSensorProperties.isAnyUdfpsType();
                authBiometricFingerprintView.isUdfps = isAnyUdfpsType2;
                authBiometricFingerprintView.udfpsAdapter = isAnyUdfpsType2 ? new UdfpsDialogMeasureAdapter(authBiometricFingerprintView, findFirstSensorProperties) : null;
                authBiometricFingerprintView.scaleFactorProvider = config.mScaleProvider;
                authBiometricFingerprintView.updateOverrideIconLayoutParamsSize();
                AuthBiometricFingerprintViewBinder.bind(authBiometricFingerprintView, (AuthBiometricFingerprintViewModel) provider.get());
                this.mBiometricView = authBiometricFingerprintView;
            } else if (findFirstSensorProperties2 != null) {
                this.mBiometricView = (AuthBiometricFaceView) from.inflate(R.layout.auth_biometric_face_view, (ViewGroup) null, false);
            } else {
                Log.e("AuthContainerView", "No sensors found!");
            }
        }
        AuthBiometricViewAdapter authBiometricViewAdapter = this.mBiometricView;
        if (authBiometricViewAdapter != null) {
            AuthBiometricView authBiometricView = (AuthBiometricView) authBiometricViewAdapter;
            if (config.mRequireConfirmation && (authBiometricView instanceof AuthBiometricFaceView)) {
                z = true;
            }
            authBiometricView.mRequireConfirmation = z;
            authBiometricView.mPanelController = authPanelController;
            authBiometricView.mPromptInfo = config.mPromptInfo;
            authBiometricView.mCallback = biometricCallback;
            imageView.setOnClickListener(authBiometricView.mBackgroundClickListener);
            authBiometricView.mEffectiveUserId = credentialOwnerProfile;
            authBiometricView.mJankListener = new AnonymousClass1(authBiometricView, "transit", 450L);
        }
        setOnKeyListener(new View.OnKeyListener() { // from class: com.android.systemui.biometrics.AuthContainerView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                AuthContainerView authContainerView = AuthContainerView.this;
                authContainerView.getClass();
                if (i2 != 4) {
                    return false;
                }
                if (keyEvent.getAction() == 1) {
                    authContainerView.sendEarlyUserCanceled();
                    authContainerView.animateAway(1, true);
                }
                return true;
            }
        });
        setImportantForAccessibility(2);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.AuthContainerView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Animator.AnimatorListener {
        public final /* synthetic */ long val$timeout;
        public final /* synthetic */ String val$type;
        public final /* synthetic */ View val$v;

        public AnonymousClass1(View view, String str, long j) {
            this.val$v = view;
            this.val$type = str;
            this.val$timeout = j;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (!this.val$v.isAttachedToWindow()) {
                Log.w("AuthContainerView", "Un-attached view should not cancel Jank trace.");
            } else {
                AuthContainerView.this.mInteractionJankMonitor.cancel(56);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (!this.val$v.isAttachedToWindow()) {
                Log.w("AuthContainerView", "Un-attached view should not end Jank trace.");
            } else {
                AuthContainerView.this.mInteractionJankMonitor.end(56);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (!this.val$v.isAttachedToWindow()) {
                Log.w("AuthContainerView", "Un-attached view should not begin Jank trace.");
            } else {
                AuthContainerView.this.mInteractionJankMonitor.begin(InteractionJankMonitor.Configuration.Builder.withView(56, this.val$v).setTag(this.val$type).setTimeout(this.val$timeout));
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }
    }
}
