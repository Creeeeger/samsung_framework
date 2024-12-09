package com.sec.internal.ims.aec.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.sec.internal.constants.ims.aec.AECNamespace;

/* loaded from: classes.dex */
public class SmsNotification extends BroadcastReceiver {
    private static final String DATA_AUTHORITY = "localhost";
    private static final String DATA_SCHEME = "sms";
    private static final String DEST_PORT = "8095";
    private static final String LOG_TAG = SmsNotification.class.getSimpleName();
    private static final String TS43_SMS_PUSH_MESSAGE = "aescfg";
    private final Context mContext;
    private final Handler mModuleHandler;

    public SmsNotification(Context context, Handler handler) {
        this.mContext = context;
        this.mModuleHandler = handler;
    }

    public IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AECNamespace.Action.RECEIVED_SMS_NOTIFICATION);
        intentFilter.addDataScheme(DATA_SCHEME);
        intentFilter.addDataAuthority(DATA_AUTHORITY, DEST_PORT);
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        sendSmsNotification(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0063 A[Catch: SecurityException -> 0x0081, TRY_LEAVE, TryCatch #0 {SecurityException -> 0x0081, blocks: (B:3:0x0003, B:5:0x0009, B:7:0x000e, B:10:0x003b, B:12:0x004c, B:17:0x0063, B:22:0x0053, B:24:0x005b), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void sendSmsNotification(android.content.Intent r9) {
        /*
            r8 = this;
            java.lang.String r0 = "sendSmsNotification: "
            android.telephony.SmsMessage[] r1 = android.provider.Telephony.Sms.Intents.getMessagesFromIntent(r9)     // Catch: java.lang.SecurityException -> L81
            if (r1 == 0) goto L9a
            r2 = 0
            r1 = r1[r2]     // Catch: java.lang.SecurityException -> L81
            if (r1 == 0) goto L9a
            java.lang.String r3 = r1.getDisplayMessageBody()     // Catch: java.lang.SecurityException -> L81
            java.lang.String r4 = "subscription"
            r5 = -1
            int r9 = r9.getIntExtra(r4, r5)     // Catch: java.lang.SecurityException -> L81
            int r9 = com.sec.internal.helper.SimUtil.getSlotId(r9)     // Catch: java.lang.SecurityException -> L81
            java.lang.String r4 = com.sec.internal.ims.aec.receiver.SmsNotification.LOG_TAG     // Catch: java.lang.SecurityException -> L81
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> L81
            r5.<init>()     // Catch: java.lang.SecurityException -> L81
            r5.append(r0)     // Catch: java.lang.SecurityException -> L81
            r5.append(r3)     // Catch: java.lang.SecurityException -> L81
            java.lang.String r5 = r5.toString()     // Catch: java.lang.SecurityException -> L81
            com.sec.internal.log.AECLog.i(r4, r5, r9)     // Catch: java.lang.SecurityException -> L81
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.SecurityException -> L81
            java.lang.String r6 = "aescfg"
            r7 = 1
            if (r5 == 0) goto L53
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.SecurityException -> L81
            byte[] r1 = r1.getUserData()     // Catch: java.lang.SecurityException -> L81
            java.nio.charset.Charset r4 = java.nio.charset.StandardCharsets.UTF_16     // Catch: java.lang.SecurityException -> L81
            r3.<init>(r1, r4)     // Catch: java.lang.SecurityException -> L81
            boolean r1 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.SecurityException -> L81
            if (r1 != 0) goto L61
            boolean r1 = r3.contains(r6)     // Catch: java.lang.SecurityException -> L81
            if (r1 == 0) goto L61
            goto L59
        L53:
            boolean r1 = r3.contains(r6)     // Catch: java.lang.SecurityException -> L81
            if (r1 == 0) goto L5b
        L59:
            r2 = r7
            goto L61
        L5b:
            java.lang.String r1 = "sendSmsNotification: discard invalid notification"
            com.sec.internal.log.AECLog.i(r4, r1, r9)     // Catch: java.lang.SecurityException -> L81
        L61:
            if (r2 == 0) goto L9a
            android.os.Handler r1 = r8.mModuleHandler     // Catch: java.lang.SecurityException -> L81
            android.os.Message r1 = r1.obtainMessage()     // Catch: java.lang.SecurityException -> L81
            r2 = 7
            r1.what = r2     // Catch: java.lang.SecurityException -> L81
            r1.arg1 = r9     // Catch: java.lang.SecurityException -> L81
            java.lang.String r9 = ","
            int r9 = r3.indexOf(r9)     // Catch: java.lang.SecurityException -> L81
            int r9 = r9 + r7
            java.lang.String r9 = r3.substring(r9)     // Catch: java.lang.SecurityException -> L81
            r1.obj = r9     // Catch: java.lang.SecurityException -> L81
            android.os.Handler r8 = r8.mModuleHandler     // Catch: java.lang.SecurityException -> L81
            r8.sendMessage(r1)     // Catch: java.lang.SecurityException -> L81
            goto L9a
        L81:
            r8 = move-exception
            java.lang.String r9 = com.sec.internal.ims.aec.receiver.SmsNotification.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r8 = r8.toString()
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            com.sec.internal.log.AECLog.e(r9, r8)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.aec.receiver.SmsNotification.sendSmsNotification(android.content.Intent):void");
    }
}
