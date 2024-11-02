package com.android.keyguard;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.telephony.PinResult;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageView;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.PluralMessageFormaterKt;
import com.android.systemui.vibrate.VibrationUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSimPinViewController extends KeyguardSecPinBasedInputViewController {
    public CheckSimPin mCheckSimPinThread;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public AlertDialog mRemainingAttemptsDialog;
    public boolean mShowDefaultMessage;
    public ImageView mSimImageView;
    public ProgressDialog mSimUnlockProgressDialog;
    public int mSubId;
    public final TelephonyManager mTelephonyManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSimPinViewController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends CheckSimPin {
        public AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // com.android.keyguard.KeyguardSimPinViewController.CheckSimPin
        public final void onSimCheckResponse(PinResult pinResult) {
            ((KeyguardSimPinView) KeyguardSimPinViewController.this.mView).post(new KeyguardSimPinViewController$2$$ExternalSyntheticLambda0(this, pinResult, 0));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class CheckSimPin extends Thread {
        public final String mPin;
        public final int mSubId;

        public CheckSimPin(String str, int i) {
            this.mPin = str;
            this.mSubId = i;
        }

        public abstract void onSimCheckResponse(PinResult pinResult);

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            PinResult supplyIccLockPin = KeyguardSimPinViewController.this.mTelephonyManager.createForSubscriptionId(this.mSubId).supplyIccLockPin(this.mPin);
            supplyIccLockPin.toString();
            ((KeyguardSimPinView) KeyguardSimPinViewController.this.mView).post(new KeyguardSimPinViewController$2$$ExternalSyntheticLambda0(this, supplyIccLockPin, 1));
        }
    }

    public KeyguardSimPinViewController(KeyguardSimPinView keyguardSimPinView, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, KeyguardMessageAreaController.Factory factory, LatencyTracker latencyTracker, LiftToActivateListener liftToActivateListener, TelephonyManager telephonyManager, FalsingCollector falsingCollector, EmergencyButtonController emergencyButtonController, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, VibrationUtil vibrationUtil, AccessibilityManager accessibilityManager, ConfigurationController configurationController) {
        super(keyguardSimPinView, keyguardUpdateMonitor, securityMode, lockPatternUtils, keyguardSecurityCallback, factory, latencyTracker, liftToActivateListener, emergencyButtonController, falsingCollector, featureFlags, secRotationWatcher, vibrationUtil, accessibilityManager, configurationController);
        this.mShowDefaultMessage = true;
        this.mSubId = -1;
        new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardSimPinViewController.1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i, int i2, int i3) {
                KeyguardSimPinViewController keyguardSimPinViewController = KeyguardSimPinViewController.this;
                if (i3 == 5) {
                    keyguardSimPinViewController.getClass();
                    keyguardSimPinViewController.resetState();
                } else {
                    keyguardSimPinViewController.resetState();
                }
            }
        };
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mTelephonyManager = telephonyManager;
        this.mSimImageView = (ImageView) ((KeyguardSimPinView) this.mView).findViewById(R.id.keyguard_sim);
    }

    public final String getPinPasswordErrorMessage(int i) {
        String string;
        if (i == 0) {
            string = ((KeyguardSimPinView) this.mView).getResources().getString(R.string.kg_password_wrong_pin_code_pukked);
        } else if (i > 0) {
            string = PluralMessageFormaterKt.icuMessageFormat(((KeyguardSimPinView) this.mView).getResources(), R.string.kg_password_wrong_pin_code, i);
        } else {
            string = ((KeyguardSimPinView) this.mView).getResources().getString(R.string.kg_password_pin_failed);
        }
        if (KeyguardEsimArea.isEsimLocked(this.mSubId, ((KeyguardSimPinView) this.mView).getContext())) {
            string = ((KeyguardSimPinView) this.mView).getResources().getString(R.string.kg_sim_lock_esim_instructions, string);
        }
        Log.d("KeyguardSimPinView", "getPinPasswordErrorMessage: attemptsRemaining=" + i + " displayMessage=" + string);
        return string;
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public void onPause() {
        super.onPause();
        ProgressDialog progressDialog = this.mSimUnlockProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.mSimUnlockProgressDialog = null;
        }
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public void onResume(int i) {
        super.onResume(i);
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public void onViewAttached() {
        super.onViewAttached();
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController
    public void resetState() {
        super.resetState();
    }

    @Override // com.android.keyguard.KeyguardInputViewController
    public boolean startDisappearAnimation(Runnable runnable) {
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public void verifyPasswordAndUnlock() {
        String obj = this.mPasswordEntry.getText().toString();
        if (obj.length() >= 4 && obj.length() <= 8) {
            if (this.mSimUnlockProgressDialog == null) {
                ProgressDialog progressDialog = new ProgressDialog(((KeyguardSimPinView) this.mView).getContext());
                this.mSimUnlockProgressDialog = progressDialog;
                progressDialog.setMessage(((KeyguardSimPinView) this.mView).getResources().getString(R.string.kg_sim_unlock_progress_dialog_message));
                this.mSimUnlockProgressDialog.setIndeterminate(true);
                this.mSimUnlockProgressDialog.setCancelable(false);
                this.mSimUnlockProgressDialog.getWindow().setType(2009);
            }
            this.mSimUnlockProgressDialog.show();
            if (this.mCheckSimPinThread == null) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(obj, this.mSubId);
                this.mCheckSimPinThread = anonymousClass2;
                anonymousClass2.start();
                return;
            }
            return;
        }
        this.mMessageAreaController.setMessage(R.string.kg_invalid_sim_pin_hint);
        ((KeyguardSimPinView) this.mView).resetPasswordText(true, true);
        getKeyguardSecurityCallback().userActivity();
    }
}
