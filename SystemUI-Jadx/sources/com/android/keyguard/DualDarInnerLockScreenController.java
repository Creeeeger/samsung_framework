package com.android.keyguard;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.UserHandle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardInputViewController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DualDarInnerLockScreenController {
    public KeyguardInputView mBaseView;
    public KeyguardInputViewController mBaseViewController;
    public final Context mContext;
    public final DualDarKeyguardSecurityCallback mDualDarKeyguardSecurityCallback;
    public final Handler mHandler;
    public boolean mIsPassword;
    public final KeyguardSecurityCallback mKeyguardCallback;
    public final KeyguardInputViewController.Factory mKeyguardSecurityViewControllerFactory;
    public final LayoutInflater mLayoutInflater;
    public final LockPatternUtils mLockPatternUtils;
    public int mNavigationBarHeight;
    public final KeyguardSecurityContainer mParent;
    public final KeyguardSecurityContainerController mParentController;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final KnoxStateMonitor mKnoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
    public boolean mIsImeShown = false;
    public final KeyguardUpdateMonitorCallback mUpdateCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.DualDarInnerLockScreenController.1
        public AnonymousClass1() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onDualDARInnerLockscreenRequirementChanged(int i) {
            DualDarInnerLockScreenController dualDarInnerLockScreenController = DualDarInnerLockScreenController.this;
            if (!dualDarInnerLockScreenController.mUpdateMonitor.isDualDarInnerAuthRequired(i)) {
                DualDarInnerLockScreenController.m51$$Nest$mdismissInnerLockScreen(dualDarInnerLockScreenController, i);
            }
        }
    };
    public final AnonymousClass4 mCallback = new AnonymousClass4();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.DualDarInnerLockScreenController$1 */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends KeyguardUpdateMonitorCallback {
        public AnonymousClass1() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onDualDARInnerLockscreenRequirementChanged(int i) {
            DualDarInnerLockScreenController dualDarInnerLockScreenController = DualDarInnerLockScreenController.this;
            if (!dualDarInnerLockScreenController.mUpdateMonitor.isDualDarInnerAuthRequired(i)) {
                DualDarInnerLockScreenController.m51$$Nest$mdismissInnerLockScreen(dualDarInnerLockScreenController, i);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.DualDarInnerLockScreenController$2 */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements View.OnAttachStateChangeListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            DualDarInnerLockScreenController dualDarInnerLockScreenController = DualDarInnerLockScreenController.this;
            dualDarInnerLockScreenController.mUpdateMonitor.registerCallback(dualDarInnerLockScreenController.mUpdateCallback);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            DualDarInnerLockScreenController dualDarInnerLockScreenController = DualDarInnerLockScreenController.this;
            dualDarInnerLockScreenController.mUpdateMonitor.removeCallback(dualDarInnerLockScreenController.mUpdateCallback);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.DualDarInnerLockScreenController$4 */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements KeyguardSecurityCallback {
        public AnonymousClass4() {
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void dismiss(int i, KeyguardSecurityModel.SecurityMode securityMode, boolean z) {
            DualDarInnerLockScreenController.this.mHandler.post(new DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0(this, i, 0));
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void onCancelClicked() {
            KeyguardSecurityCallback keyguardSecurityCallback = DualDarInnerLockScreenController.this.mKeyguardCallback;
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.onCancelClicked();
            }
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void onUserInput() {
            KeyguardSecurityCallback keyguardSecurityCallback = DualDarInnerLockScreenController.this.mKeyguardCallback;
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.onUserInput();
            }
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void reportUnlockAttempt(int i, int i2, boolean z) {
            DualDarInnerLockScreenController dualDarInnerLockScreenController = DualDarInnerLockScreenController.this;
            if (z) {
                dualDarInnerLockScreenController.mLockPatternUtils.reportSuccessfulPasswordAttempt(i);
                return;
            }
            KeyguardSecurityCallback keyguardSecurityCallback = dualDarInnerLockScreenController.mKeyguardCallback;
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.reportUnlockAttempt(i, i2, z);
            }
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void reset() {
            KeyguardSecurityCallback keyguardSecurityCallback = DualDarInnerLockScreenController.this.mKeyguardCallback;
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.reset();
            }
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final void userActivity() {
            KeyguardSecurityCallback keyguardSecurityCallback = DualDarInnerLockScreenController.this.mKeyguardCallback;
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.userActivity();
            }
        }

        @Override // com.android.keyguard.KeyguardSecurityCallback
        public final boolean dismiss(boolean z, int i, boolean z2, KeyguardSecurityModel.SecurityMode securityMode) {
            return DualDarInnerLockScreenController.this.mHandler.post(new DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0(this, i, 1));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        public final Context mContext;
        public final Handler mHandler;
        public final KeyguardInputViewController.Factory mKeyguardSecurityViewControllerFactory;
        public final LayoutInflater mLayoutInflater;
        public final KeyguardSecSecurityContainer mParent;
        public final KeyguardUpdateMonitor mUpdateMonitor;

        public Factory(Context context, KeyguardSecSecurityContainer keyguardSecSecurityContainer, KeyguardUpdateMonitor keyguardUpdateMonitor, Handler handler, LayoutInflater layoutInflater, KeyguardInputViewController.Factory factory) {
            this.mContext = context;
            this.mParent = keyguardSecSecurityContainer;
            this.mUpdateMonitor = keyguardUpdateMonitor;
            this.mHandler = handler;
            this.mLayoutInflater = layoutInflater;
            this.mKeyguardSecurityViewControllerFactory = factory;
        }
    }

    /* renamed from: -$$Nest$mdismissInnerLockScreen */
    public static void m51$$Nest$mdismissInnerLockScreen(DualDarInnerLockScreenController dualDarInnerLockScreenController, int i) {
        dualDarInnerLockScreenController.mHandler.removeCallbacksAndMessages(null);
        int mainUserId = ((KnoxStateMonitorImpl) dualDarInnerLockScreenController.mKnoxStateMonitor).getMainUserId(i);
        KeyguardInputView keyguardInputView = dualDarInnerLockScreenController.mBaseView;
        if (keyguardInputView != null && keyguardInputView.isAttachedToWindow() && mainUserId == KeyguardUpdateMonitor.getCurrentUser()) {
            dualDarInnerLockScreenController.hide();
            KeyguardSecurityCallback keyguardSecurityCallback = dualDarInnerLockScreenController.mKeyguardCallback;
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.dismiss(i, KeyguardSecurityModel.SecurityMode.Invalid, true);
            }
        }
    }

    public DualDarInnerLockScreenController(Context context, KeyguardSecurityContainer keyguardSecurityContainer, KeyguardSecurityContainerController keyguardSecurityContainerController, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityCallback keyguardSecurityCallback, DualDarKeyguardSecurityCallback dualDarKeyguardSecurityCallback, Handler handler, LayoutInflater layoutInflater, KeyguardInputViewController.Factory factory) {
        this.mContext = context;
        this.mHandler = handler;
        this.mParent = keyguardSecurityContainer;
        this.mParentController = keyguardSecurityContainerController;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardCallback = keyguardSecurityCallback;
        this.mDualDarKeyguardSecurityCallback = dualDarKeyguardSecurityCallback;
        this.mLockPatternUtils = new LockPatternUtils(context);
        this.mLayoutInflater = layoutInflater;
        this.mKeyguardSecurityViewControllerFactory = factory;
    }

    public final void hide() {
        boolean z;
        KeyguardInputView keyguardInputView = this.mBaseView;
        if (keyguardInputView != null && keyguardInputView.isAttachedToWindow()) {
            this.mBaseViewController.startDisappearAnimation(new Runnable(this) { // from class: com.android.keyguard.DualDarInnerLockScreenController.3
                public AnonymousClass3(DualDarInnerLockScreenController this) {
                }

                @Override // java.lang.Runnable
                public final void run() {
                }
            });
            this.mParent.removeView(this.mBaseView);
            this.mBaseView = null;
            if (this.mParentController.mCurrentSecurityMode == KeyguardSecurityModel.SecurityMode.Password) {
                z = true;
            } else {
                z = false;
            }
            ((KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3) this.mDualDarKeyguardSecurityCallback).onSecurityModeChanged(z);
            this.mUpdateMonitor.dispatchDualDarInnerLockScreenState(((KnoxStateMonitorImpl) this.mKnoxStateMonitor).getInnerAuthUserId(UserHandle.getCallingUserId()), false);
        }
    }

    public final void updateLayoutMargins(KeyguardSecurityContainer keyguardSecurityContainer, KeyguardInputView keyguardInputView) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int rotation = DeviceState.getRotation(keyguardSecurityContainer.getResources().getConfiguration().windowConfiguration.getRotation());
        if (LsRune.SECURITY_NAVBAR_ENABLED && keyguardInputView != null) {
            Resources resources = keyguardSecurityContainer.getResources();
            int i6 = 0;
            if (this.mLockPatternUtils.getCredentialTypeForUser(((KnoxStateMonitorImpl) this.mKnoxStateMonitor).getInnerAuthUserId(UserHandle.getCallingUserId())) == 4) {
                z = true;
            } else {
                z = false;
            }
            this.mIsPassword = z;
            this.mNavigationBarHeight = resources.getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
            boolean isTablet = DeviceType.isTablet();
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
            if (isTablet) {
                int dimensionPixelSize = keyguardSecurityContainer.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.kg_emergency_button_margin_bottom_for_tablet_fingerprint) + DeviceState.sInDisplayFingerprintHeight;
                boolean isInDisplayFingerprintMarginAccepted = keyguardUpdateMonitor.isInDisplayFingerprintMarginAccepted();
                if (rotation != 1 && rotation != 2 && rotation != 3) {
                    if (!this.mIsPassword || !this.mIsImeShown) {
                        if (isInDisplayFingerprintMarginAccepted) {
                            i5 = dimensionPixelSize;
                            updateLayoutParams(0, 0, i5, keyguardSecurityContainer, keyguardInputView);
                            return;
                        }
                        i6 = this.mNavigationBarHeight;
                    }
                } else if (!this.mIsPassword || !this.mIsImeShown) {
                    i6 = this.mNavigationBarHeight;
                }
                i5 = i6;
                updateLayoutParams(0, 0, i5, keyguardSecurityContainer, keyguardInputView);
                return;
            }
            if (!DeviceState.shouldEnableKeyguardScreenRotation(this.mContext) && !LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && this.mBaseViewController.needsInput()) {
                i3 = 0;
                i2 = 0;
                i4 = 0;
            } else {
                int i7 = DeviceState.sInDisplayFingerprintHeight;
                boolean isInDisplayFingerprintMarginAccepted2 = keyguardUpdateMonitor.isInDisplayFingerprintMarginAccepted();
                if (rotation != 1) {
                    if (rotation != 3) {
                        boolean z2 = (!DeviceState.isInDisplayFpSensorPositionHigh()) & isInDisplayFingerprintMarginAccepted2;
                        if (this.mIsPassword && this.mIsImeShown) {
                            i7 = 0;
                        } else if (!z2) {
                            i7 = this.mNavigationBarHeight;
                        }
                        i4 = i7;
                        i3 = 0;
                        i2 = 0;
                    } else {
                        if (!isInDisplayFingerprintMarginAccepted2) {
                            i7 = this.mNavigationBarHeight;
                        }
                        i = this.mNavigationBarHeight;
                    }
                } else {
                    i7 = this.mNavigationBarHeight;
                    i = i7;
                }
                i2 = i;
                i3 = i7;
                i4 = 0;
            }
            updateLayoutParams(i3, i2, i4, keyguardSecurityContainer, keyguardInputView);
        }
    }

    public final void updateLayoutParams(int i, int i2, int i3, KeyguardSecurityContainer keyguardSecurityContainer, KeyguardInputView keyguardInputView) {
        boolean z;
        int i4;
        int i5;
        if (keyguardInputView == null) {
            Log.d("DualDarInnerLockScreenController", "updateLayoutParams securityViewFlipper is null");
            return;
        }
        Resources resources = keyguardSecurityContainer.getResources();
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) keyguardInputView.getLayoutParams();
        if (DeviceType.isTablet()) {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = resources.getDimensionPixelSize(com.android.systemui.R.dimen.kg_message_area_width_tablet);
            layoutParams.startToStart = 0;
            layoutParams.endToEnd = 0;
        } else if (LsRune.SECURITY_SUB_DISPLAY_LOCK && !DeviceState.isSmartViewDisplayWithFitToAspectRatio(keyguardSecurityContainer.getContext())) {
            if (keyguardSecurityContainer.getContext().getResources().getConfiguration().semDisplayDeviceType == 0) {
                z = true;
            } else {
                z = false;
            }
            int i6 = -1;
            if (z) {
                i4 = SecurityUtils.getMainSecurityViewFlipperSize(keyguardSecurityContainer.getContext(), this.mIsPassword);
            } else {
                i4 = -1;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).width = i4;
            if (z) {
                i5 = 0;
            } else {
                i5 = -1;
            }
            layoutParams.startToStart = i5;
            if (z) {
                i6 = 0;
            }
            layoutParams.endToEnd = i6;
        }
        layoutParams.setMargins(i, 0, i2, i3);
        keyguardInputView.setLayoutParams(layoutParams);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.DualDarInnerLockScreenController$3 */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements Runnable {
        public AnonymousClass3(DualDarInnerLockScreenController this) {
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }
}
