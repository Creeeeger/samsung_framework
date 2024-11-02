package com.android.keyguard;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.telephony.PinResult;
import android.util.Log;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSimPinViewController;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSimPinViewController$2$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardSimPinViewController.CheckSimPin f$0;
    public final /* synthetic */ PinResult f$1;

    public /* synthetic */ KeyguardSimPinViewController$2$$ExternalSyntheticLambda0(KeyguardSimPinViewController.CheckSimPin checkSimPin, PinResult pinResult, int i) {
        this.$r8$classId = i;
        this.f$0 = checkSimPin;
        this.f$1 = pinResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                KeyguardSimPinViewController.AnonymousClass2 anonymousClass2 = (KeyguardSimPinViewController.AnonymousClass2) this.f$0;
                PinResult pinResult = this.f$1;
                KeyguardSimPinViewController keyguardSimPinViewController = KeyguardSimPinViewController.this;
                pinResult.getAttemptsRemaining();
                keyguardSimPinViewController.getClass();
                ProgressDialog progressDialog = KeyguardSimPinViewController.this.mSimUnlockProgressDialog;
                if (progressDialog != null) {
                    progressDialog.hide();
                }
                KeyguardSimPinView keyguardSimPinView = (KeyguardSimPinView) KeyguardSimPinViewController.this.mView;
                if (pinResult.getResult() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                keyguardSimPinView.resetPasswordText(true, z);
                if (pinResult.getResult() == 0) {
                    KeyguardSimPinViewController.this.mKeyguardUpdateMonitor.reportSimUnlocked(anonymousClass2.mSubId);
                    KeyguardSimPinViewController.this.getClass();
                    KeyguardSimPinViewController keyguardSimPinViewController2 = KeyguardSimPinViewController.this;
                    keyguardSimPinViewController2.mShowDefaultMessage = true;
                    keyguardSimPinViewController2.getKeyguardSecurityCallback().dismiss(KeyguardUpdateMonitor.getCurrentUser(), KeyguardSecurityModel.SecurityMode.SimPin, true);
                } else {
                    KeyguardSimPinViewController.this.mShowDefaultMessage = false;
                    if (pinResult.getResult() == 1) {
                        if (pinResult.getAttemptsRemaining() <= 2) {
                            KeyguardSimPinViewController keyguardSimPinViewController3 = KeyguardSimPinViewController.this;
                            String pinPasswordErrorMessage = keyguardSimPinViewController3.getPinPasswordErrorMessage(pinResult.getAttemptsRemaining());
                            AlertDialog alertDialog = keyguardSimPinViewController3.mRemainingAttemptsDialog;
                            if (alertDialog == null) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(((KeyguardSimPinView) keyguardSimPinViewController3.mView).getContext());
                                builder.setMessage(pinPasswordErrorMessage);
                                builder.setCancelable(false);
                                builder.setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null);
                                AlertDialog create = builder.create();
                                keyguardSimPinViewController3.mRemainingAttemptsDialog = create;
                                create.getWindow().setType(2009);
                            } else {
                                alertDialog.setMessage(pinPasswordErrorMessage);
                            }
                            keyguardSimPinViewController3.mRemainingAttemptsDialog.show();
                        } else {
                            KeyguardSimPinViewController keyguardSimPinViewController4 = KeyguardSimPinViewController.this;
                            keyguardSimPinViewController4.mMessageAreaController.setMessage(keyguardSimPinViewController4.getPinPasswordErrorMessage(pinResult.getAttemptsRemaining()), false);
                        }
                    } else {
                        KeyguardSimPinViewController keyguardSimPinViewController5 = KeyguardSimPinViewController.this;
                        keyguardSimPinViewController5.mMessageAreaController.setMessage(((KeyguardSimPinView) keyguardSimPinViewController5.mView).getResources().getString(R.string.kg_password_pin_failed), false);
                    }
                    Log.d("KeyguardSimPinView", "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: " + pinResult + " attemptsRemaining=" + pinResult.getAttemptsRemaining());
                }
                if (KeyguardSimPinViewController.this.getKeyguardSecurityCallback() != null) {
                    KeyguardSimPinViewController.this.getKeyguardSecurityCallback().userActivity();
                }
                KeyguardSimPinViewController.this.mCheckSimPinThread = null;
                return;
            default:
                this.f$0.onSimCheckResponse(this.f$1);
                return;
        }
    }
}
