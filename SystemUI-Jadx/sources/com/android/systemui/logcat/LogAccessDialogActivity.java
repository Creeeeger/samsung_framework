package com.android.systemui.logcat;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.text.SpannableString;
import android.view.View;
import com.android.internal.app.ILogAccessDialogCallback;
import com.android.systemui.R;
import com.samsung.systemui.splugins.volume.VolumePanelState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class LogAccessDialogActivity extends Activity implements View.OnClickListener {
    public static final int DIALOG_TIME_OUT;
    public AlertDialog mAlert;
    public String mAlertBody;
    public AlertDialog.Builder mAlertDialog;
    public SpannableString mAlertLearnMore;
    public boolean mAlertLearnMoreLink;
    public String mAlertTitle;
    public View mAlertView;
    public ILogAccessDialogCallback mCallback;
    public final AnonymousClass1 mHandler = new Handler() { // from class: com.android.systemui.logcat.LogAccessDialogActivity.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            AlertDialog alertDialog;
            if (message.what == 0 && (alertDialog = LogAccessDialogActivity.this.mAlert) != null) {
                alertDialog.dismiss();
                LogAccessDialogActivity logAccessDialogActivity = LogAccessDialogActivity.this;
                logAccessDialogActivity.mAlert = null;
                logAccessDialogActivity.declineLogAccess();
            }
        }
    };
    public String mPackageName;
    public int mUid;

    static {
        int i;
        if (Build.IS_DEBUGGABLE) {
            i = VolumePanelState.DIALOG_TIMEOUT_SET_SAFE_MEDIA_VOLUME_MILLIS;
        } else {
            i = 300000;
        }
        DIALOG_TIME_OUT = i;
    }

    public final void declineLogAccess() {
        try {
            this.mCallback.declineAccessForClient(this.mUid, this.mPackageName);
        } catch (RemoteException unused) {
            finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            if (view.getId() == R.id.log_access_dialog_allow_button) {
                this.mCallback.approveAccessForClient(this.mUid, this.mPackageName);
                finish();
            } else if (view.getId() == R.id.log_access_dialog_deny_button) {
                declineLogAccess();
                finish();
            }
        } catch (RemoteException unused) {
            finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.logcat.LogAccessDialogActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        AlertDialog alertDialog;
        super.onDestroy();
        if (!isChangingConfigurations() && (alertDialog = this.mAlert) != null && alertDialog.isShowing()) {
            this.mAlert.dismiss();
        }
        this.mAlert = null;
    }
}
