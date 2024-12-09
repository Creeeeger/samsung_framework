package com.sec.internal.ims.servicemodules.im;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.SimUtil;

/* loaded from: classes.dex */
public class SmsReceiver extends BroadcastReceiver {
    public static final String SMS_RECEIVED = "android.provider.Telephony.SMS_RECEIVED";
    private ImLatchingProcessor mModule;
    private String TAG = SmsReceiver.class.getSimpleName();
    private int mPhoneId = SimUtil.getActiveDataPhoneId();

    public SmsReceiver(ImLatchingProcessor imLatchingProcessor) {
        this.mModule = imLatchingProcessor;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (!SMS_RECEIVED.equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return;
        }
        int i = extras.getInt(PhoneConstants.PHONE_KEY, this.mPhoneId);
        SmsMessage smsMessage = Telephony.Sms.Intents.getMessagesFromIntent(intent)[0];
        String originatingAddress = smsMessage.getOriginatingAddress();
        long timestampMillis = smsMessage.getTimestampMillis();
        Log.d(this.TAG, "origNum - " + originatingAddress + ", smsTime - " + timestampMillis);
        ImLatchingProcessor imLatchingProcessor = this.mModule;
        StringBuilder sb = new StringBuilder();
        sb.append("tel:");
        sb.append(originatingAddress);
        this.mModule.processForResolvingLatchingStatus(imLatchingProcessor.normalizeUri(i, ImsUri.parse(sb.toString())), timestampMillis, i);
    }
}
