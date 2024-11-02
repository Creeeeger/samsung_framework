package com.android.keyguard;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.telephony.PinResult;
import android.util.Log;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSimPukViewController;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSimPukViewController$3$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardSimPukViewController.CheckSimPuk f$0;
    public final /* synthetic */ PinResult f$1;

    public /* synthetic */ KeyguardSimPukViewController$3$$ExternalSyntheticLambda0(KeyguardSimPukViewController.CheckSimPuk checkSimPuk, PinResult pinResult, int i) {
        this.$r8$classId = i;
        this.f$0 = checkSimPuk;
        this.f$1 = pinResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                KeyguardSimPukViewController.AnonymousClass3 anonymousClass3 = (KeyguardSimPukViewController.AnonymousClass3) this.f$0;
                PinResult pinResult = this.f$1;
                ProgressDialog progressDialog = anonymousClass3.this$0.mSimUnlockProgressDialog;
                if (progressDialog != null) {
                    progressDialog.hide();
                }
                KeyguardSimPukView keyguardSimPukView = (KeyguardSimPukView) anonymousClass3.this$0.mView;
                if (pinResult.getResult() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                keyguardSimPukView.resetPasswordText(true, z);
                if (pinResult.getResult() == 0) {
                    anonymousClass3.this$0.mKeyguardUpdateMonitor.reportSimUnlocked(anonymousClass3.mSubId);
                    KeyguardSimPukViewController keyguardSimPukViewController = anonymousClass3.this$0;
                    keyguardSimPukViewController.mRemainingAttempts = -1;
                    keyguardSimPukViewController.mShowDefaultMessage = true;
                    keyguardSimPukViewController.getKeyguardSecurityCallback().dismiss(KeyguardUpdateMonitor.getCurrentUser(), KeyguardSecurityModel.SecurityMode.SimPuk, true);
                } else {
                    anonymousClass3.this$0.mShowDefaultMessage = false;
                    if (pinResult.getResult() == 1) {
                        KeyguardSimPukViewController keyguardSimPukViewController2 = anonymousClass3.this$0;
                        keyguardSimPukViewController2.mMessageAreaController.setMessage(((KeyguardSimPukView) keyguardSimPukViewController2.mView).getPukPasswordErrorMessage(pinResult.getAttemptsRemaining(), false, KeyguardEsimArea.isEsimLocked(anonymousClass3.mSubId, ((KeyguardSimPukView) anonymousClass3.this$0.mView).getContext())), false);
                        if (pinResult.getAttemptsRemaining() <= 2) {
                            KeyguardSimPukViewController keyguardSimPukViewController3 = anonymousClass3.this$0;
                            int attemptsRemaining = pinResult.getAttemptsRemaining();
                            KeyguardSimPukView keyguardSimPukView2 = (KeyguardSimPukView) keyguardSimPukViewController3.mView;
                            String pukPasswordErrorMessage = keyguardSimPukView2.getPukPasswordErrorMessage(attemptsRemaining, false, KeyguardEsimArea.isEsimLocked(keyguardSimPukViewController3.mSubId, keyguardSimPukView2.getContext()));
                            AlertDialog alertDialog = keyguardSimPukViewController3.mRemainingAttemptsDialog;
                            if (alertDialog == null) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(((KeyguardSimPukView) keyguardSimPukViewController3.mView).getContext());
                                builder.setMessage(pukPasswordErrorMessage);
                                builder.setCancelable(false);
                                builder.setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null);
                                AlertDialog create = builder.create();
                                keyguardSimPukViewController3.mRemainingAttemptsDialog = create;
                                create.getWindow().setType(2009);
                            } else {
                                alertDialog.setMessage(pukPasswordErrorMessage);
                            }
                            keyguardSimPukViewController3.mRemainingAttemptsDialog.show();
                        } else {
                            KeyguardSimPukViewController keyguardSimPukViewController4 = anonymousClass3.this$0;
                            keyguardSimPukViewController4.mMessageAreaController.setMessage(((KeyguardSimPukView) keyguardSimPukViewController4.mView).getPukPasswordErrorMessage(pinResult.getAttemptsRemaining(), false, KeyguardEsimArea.isEsimLocked(anonymousClass3.mSubId, ((KeyguardSimPukView) anonymousClass3.this$0.mView).getContext())), false);
                        }
                    } else {
                        KeyguardSimPukViewController keyguardSimPukViewController5 = anonymousClass3.this$0;
                        keyguardSimPukViewController5.mMessageAreaController.setMessage(((KeyguardSimPukView) keyguardSimPukViewController5.mView).getResources().getString(R.string.kg_password_puk_failed), false);
                    }
                    Log.d("KeyguardSimPukView", "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining=" + pinResult.getAttemptsRemaining());
                }
                anonymousClass3.this$0.mStateMachine.reset();
                anonymousClass3.this$0.mCheckSimPukThread = null;
                return;
            default:
                this.f$0.onSimLockChangedResponse(this.f$1);
                return;
        }
    }
}
