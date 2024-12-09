package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceAtt extends TelephonyAdapterPrimaryDeviceBase {
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceAtt.class.getSimpleName();

    public TelephonyAdapterPrimaryDeviceAtt(Context context, IConfigModule iConfigModule, int i) {
        super(context, iConfigModule, i);
        registerSmsReceiver();
        initState();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void createSmsReceiver() {
        this.mSmsReceiver = new SmsReceiver();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void sendSmsPushForConfigRequest(boolean z) {
        sendEmptyMessage(3);
        super.sendSmsPushForConfigRequest(z);
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "message:" + message.what);
        if (message.what == 1) {
            handleReceivedDataSms(message, false, true);
        } else {
            super.handleMessage(message);
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getOtp() {
        sendMessageDelayed(obtainMessage(3), 1200000L);
        return this.mState.getOtp();
    }

    protected class SmsReceiver extends TelephonyAdapterPrimaryDeviceBase.SmsReceiverBase {
        protected SmsReceiver() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiverBase, com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiver
        protected void readMessageFromSMSIntent(Intent intent) {
            SmsMessage smsMessage;
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            IMSLog.i(TelephonyAdapterPrimaryDeviceAtt.LOG_TAG, TelephonyAdapterPrimaryDeviceAtt.this.mPhoneId, "readMessageFromSMSIntent: enter");
            if (messagesFromIntent == null || (smsMessage = messagesFromIntent[0]) == null) {
                return;
            }
            String displayMessageBody = smsMessage.getDisplayMessageBody();
            if (displayMessageBody == null) {
                displayMessageBody = new String(smsMessage.getUserData(), Charset.forName("UTF-16"));
            }
            TelephonyAdapterPrimaryDeviceAtt telephonyAdapterPrimaryDeviceAtt = TelephonyAdapterPrimaryDeviceAtt.this;
            telephonyAdapterPrimaryDeviceAtt.sendMessage(telephonyAdapterPrimaryDeviceAtt.obtainMessage(1, displayMessageBody));
        }
    }
}
