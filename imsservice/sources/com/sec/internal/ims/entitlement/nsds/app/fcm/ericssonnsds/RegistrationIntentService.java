package com.sec.internal.ims.entitlement.nsds.app.fcm.ericssonnsds;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import com.google.firebase.iid.FirebaseInstanceId;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class RegistrationIntentService extends IntentService {
    private static final String TAG = RegistrationIntentService.class.getSimpleName();
    private Object mLock;

    public RegistrationIntentService() {
        super(TAG);
        this.mLock = new Object();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm_sender_id");
        String stringExtra2 = intent.getStringExtra(NSDSNamespaces.NSDSExtras.GCM_PROTOCOL_TO_SERVER);
        String stringExtra3 = intent.getStringExtra("device_id");
        try {
            synchronized (this.mLock) {
                FirebaseInstanceId firebaseInstanceId = FirebaseInstanceId.getInstance();
                if (TextUtils.isEmpty(stringExtra)) {
                    IMSLog.i(TAG, "FCM_Sender_ID is not ready yet. Will get token once its ready");
                    return;
                }
                String str = TAG;
                IMSLog.s(str, "FCMSenderID: " + stringExtra);
                String token = firebaseInstanceId.getToken(stringExtra, "FCM");
                IMSLog.s(str, "FCM Registration Token: " + token + " for FCMsenderId:" + stringExtra);
                IMSLog.c(LogClass.ES_FCM_TOKEN, "TKN:GET_TKN_SUCCESS");
                if ("managePushToken".equals(stringExtra2)) {
                    sendRegistrationToServer(token, stringExtra3);
                    NSDSSharedPrefHelper.save((Context) this, stringExtra3, NSDSNamespaces.NSDSSharedPref.PREF_SENT_TOKEN_TO_SERVER, true);
                }
            }
        } catch (Exception e) {
            IMSLog.i(TAG, "Failed to complete token refresh" + e.getMessage());
            if ("managePushToken".equals(stringExtra2)) {
                NSDSSharedPrefHelper.remove(this, stringExtra3, NSDSNamespaces.NSDSSharedPref.PREF_SENT_TOKEN_TO_SERVER);
                NSDSSharedPrefHelper.save((Context) this, stringExtra3, NSDSNamespaces.NSDSSharedPref.PREF_SENT_TOKEN_TO_SERVER, false);
            }
        }
    }

    private void sendRegistrationToServer(String str, String str2) {
        IMSLog.s(TAG, "Received token from FCM:" + str);
        String encodeToString = Base64.encodeToString(str.getBytes(), 2);
        String str3 = NSDSSharedPrefHelper.get(this, str2, NSDSNamespaces.NSDSSharedPref.PREF_PUSH_TOKEN);
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        if (str3.equals(encodeToString)) {
            return;
        }
        NSDSSharedPrefHelper.save(this, str2, NSDSNamespaces.NSDSSharedPref.PREF_PUSH_TOKEN, encodeToString);
    }
}
