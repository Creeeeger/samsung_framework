package com.sec.internal.ims.servicemodules.im;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.SimUtil;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class MmsReceiver extends BroadcastReceiver {
    public static final String MMS_MIME_TYPE = "application/vnd.wap.mms-message";
    public static final String MMS_RECEIVED = "android.provider.Telephony.WAP_PUSH_RECEIVED";
    private ImLatchingProcessor mModule;
    private String TAG = MmsReceiver.class.getSimpleName();
    private int mPhoneId = SimUtil.getActiveDataPhoneId();

    public MmsReceiver(ImLatchingProcessor imLatchingProcessor) {
        this.mModule = imLatchingProcessor;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        int i;
        int indexOf;
        if (MMS_RECEIVED.equals(intent.getAction()) && MMS_MIME_TYPE.equals(intent.getType()) && (extras = intent.getExtras()) != null) {
            int i2 = extras.getInt(PhoneConstants.PHONE_KEY, this.mPhoneId);
            String str = new String(extras.getByteArray("data"), StandardCharsets.UTF_8);
            int indexOf2 = str.indexOf("/TYPE");
            if (indexOf2 > 0 && indexOf2 - 15 > 0 && (indexOf = (str = str.substring(i, indexOf2)).indexOf("+")) > 0) {
                str = str.substring(indexOf);
            }
            long currentTimeMillis = System.currentTimeMillis();
            ImsUri normalizeUri = this.mModule.normalizeUri(i2, ImsUri.parse("tel:" + str));
            Log.d(this.TAG, "origNum - " + str + ", mmsTime - " + currentTimeMillis);
            this.mModule.processForResolvingLatchingStatus(normalizeUri, currentTimeMillis, i2);
        }
    }
}
