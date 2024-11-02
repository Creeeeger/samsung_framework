package com.android.systemui.telephony.ui.activity;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserHandle;
import android.telecom.TelecomManager;
import android.util.Log;
import com.android.internal.app.AlertActivity;
import com.android.internal.app.AlertController;
import com.android.systemui.R;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SwitchToManagedProfileForCallActivity extends AlertActivity implements DialogInterface.OnClickListener {
    public int managedProfileUserId = -10000;
    public Uri phoneNumber;
    public Intent positiveActionIntent;
    public final TelecomManager telecomManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
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

    public SwitchToManagedProfileForCallActivity(TelecomManager telecomManager) {
        this.telecomManager = telecomManager;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            try {
                Context applicationContext = getApplicationContext();
                Intent intent = this.positiveActionIntent;
                if (intent == null) {
                    intent = null;
                }
                applicationContext.startActivityAsUser(intent, ActivityOptions.makeOpenCrossProfileAppsAnimation().toBundle(), UserHandle.of(this.managedProfileUserId));
            } catch (Exception e) {
                Log.e("SwitchToManagedProfileForCallActivity", "Failed to launch activity", e);
            }
        }
        finish();
    }

    public final void onCreate(Bundle bundle) {
        String str;
        Pair pair;
        getWindow().addSystemFlags(524288);
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        if (data == null) {
            data = Uri.EMPTY;
        }
        this.phoneNumber = data;
        this.managedProfileUserId = getIntent().getIntExtra("android.telecom.extra.MANAGED_PROFILE_USER_ID", -10000);
        AlertController.AlertParams alertParams = ((AlertActivity) this).mAlertParams;
        alertParams.mTitle = getString(R.string.call_from_work_profile_title);
        alertParams.mMessage = getString(R.string.call_from_work_profile_text);
        alertParams.mNegativeButtonText = getString(R.string.call_from_work_profile_close);
        alertParams.mPositiveButtonListener = this;
        alertParams.mNegativeButtonListener = this;
        TelecomManager telecomManager = this.telecomManager;
        Uri uri = null;
        if (telecomManager != null) {
            str = telecomManager.getDefaultDialerPackage(UserHandle.of(this.managedProfileUserId));
        } else {
            str = null;
        }
        if (str != null) {
            Uri uri2 = this.phoneNumber;
            if (uri2 != null) {
                uri = uri2;
            }
            pair = new Pair(new Intent("android.intent.action.CALL", uri), Integer.valueOf(R.string.call_from_work_profile_action));
        } else {
            pair = new Pair(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=dialer")), Integer.valueOf(R.string.install_dialer_on_work_profile_action));
        }
        Intent intent = (Intent) pair.component1();
        int intValue = ((Number) pair.component2()).intValue();
        this.positiveActionIntent = intent;
        ((AlertActivity) this).mAlertParams.mPositiveButtonText = getString(intValue);
        setupAlert();
    }
}
