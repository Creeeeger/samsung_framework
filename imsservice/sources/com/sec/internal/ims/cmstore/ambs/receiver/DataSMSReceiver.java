package com.sec.internal.ims.cmstore.ambs.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.cloudrequest.RequestAccount;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.entitlement.util.BinarySmsBase64;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener;
import com.sec.internal.log.IMSLog;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DataSMSReceiver extends BroadcastReceiver {
    static final String JSON_ACTION_TAG = "action";
    static final String SUB = "sub";
    static final String TAG_ACTION = "action";
    static final String TAG_SID = "serviceId";
    static final String VAL_ACTION = "OptIn";
    static final String VAL_NoOPTIN = "RestartService:noOptIn";
    static final String VAL_PauseService = "PauseService";
    static final String VAL_SID = "msgstoreoem";
    static final String VAL_StopService = "StopService";
    private final IWorkingStatusProvisionListener mIWorkingStatusProvisionListener;
    protected final IAPICallFlowListener mListener;
    private final MessageStoreClient mStoreClient;
    private String TAG = "DataSMSReceiver";
    String sub_val = "";
    String expiry = "";

    public DataSMSReceiver(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, IWorkingStatusProvisionListener iWorkingStatusProvisionListener) {
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mStoreClient = messageStoreClient;
        this.mListener = iAPICallFlowListener;
        this.mIWorkingStatusProvisionListener = iWorkingStatusProvisionListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        byte[] userData;
        Log.i(this.TAG, "On receive");
        if (intent.getAction() == null || intent.getExtras() == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        int i = extras.getInt(PhoneConstants.SUBSCRIPTION_KEY, -1);
        Log.i(this.TAG, "subid from intent:" + i);
        if ("android.test.ambsphasev.SIGNEDBINARYSMS".equals(intent.getAction()) && intent.getExtras() != null) {
            Bundle extras2 = intent.getExtras();
            String string = extras2.getString("sbsstring");
            int i2 = extras2.getInt("slot", -1);
            int subId = SimUtil.getSubId(i2);
            long currentTimeMillis = System.currentTimeMillis();
            long j = extras2.getLong(CloudMessageProviderContract.BufferDBMMSpdu.EXP, 0L);
            Log.d(this.TAG, "test slot: " + i2 + " testSubid:" + subId + " currTime:" + currentTimeMillis + " expTime:" + j);
            if (j < currentTimeMillis) {
                Log.e(this.TAG, "time expired, do not process");
                return;
            } else if (!TextUtils.isEmpty(string)) {
                processSignedBinaryAction(string, subId);
                return;
            } else {
                Log.i(this.TAG, "Action is empty");
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        Object[] objArr = (Object[]) extras.get("pdus");
        if (objArr == null) {
            Log.d(this.TAG, "invalid pdus");
            return;
        }
        int length = objArr.length;
        SmsMessage[] smsMessageArr = new SmsMessage[length];
        for (int i3 = 0; i3 < length; i3++) {
            if (objArr[i3] == null) {
                return;
            }
            SmsMessage createFromPdu = SmsMessage.createFromPdu((byte[]) objArr[i3], ((TelephonyManager) context.getSystemService(PhoneConstants.PHONE_KEY)).getPhoneType() == 2 ? com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.FORMAT_3GPP2 : com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.FORMAT_3GPP);
            smsMessageArr[i3] = createFromPdu;
            if (createFromPdu == null || (userData = createFromPdu.getUserData()) == null) {
                return;
            }
            Log.i(this.TAG, "Sms encoded Data :" + Arrays.toString(userData));
            for (int i4 = 0; i4 < userData.length; i4++) {
                sb.append(Character.toString((char) userData[i4]));
            }
        }
        Log.i(this.TAG, " messages = " + sb.toString() + " SignedBinarySupported: " + ATTGlobalVariables.supportSignedBinary());
        if (ATTGlobalVariables.supportSignedBinary()) {
            byte[] decodeBase64 = BinarySmsBase64.decodeBase64(sb.toString().getBytes(StandardCharsets.UTF_8));
            if (decodeBase64.length > 0) {
                String str = new String(decodeBase64, StandardCharsets.UTF_8);
                String parseJson = parseJson(str);
                try {
                    long parseLong = Long.parseLong(this.expiry);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    Log.i(this.TAG, "channel has expired? curr:" + currentTimeMillis2 + " expTime:" + parseLong + " expiry:" + this.expiry);
                    if (parseLong < currentTimeMillis2) {
                        return;
                    }
                    if (!TextUtils.isEmpty(parseJson)) {
                        processSignedBinaryAction(parseJson, i);
                        return;
                    }
                    Log.i(this.TAG, "Print SMS decoded " + IMSLog.checker(str));
                    return;
                } catch (Exception unused) {
                    Log.e(this.TAG, "error in parsing expiry time");
                    return;
                }
            }
            Log.e(this.TAG, "Binary SMS Decode Failure");
            return;
        }
        String[] parse = parse(sb.toString());
        if (parse == null) {
            return;
        }
        if (i != this.mStoreClient.getSimManager().getSubscriptionId()) {
            Log.d(this.TAG, "ignore this sms message, currentNum:" + this.mStoreClient.getPrerenceManager().getUserCtn());
            return;
        }
        Log.i(this.TAG, "resp " + Arrays.toString(parse));
        if (VAL_SID.equals(parse[0])) {
            Log.d(this.TAG, "binary SMS received to provision!");
            RequestAccount.handleExternalUserOptIn(this.mListener, this.mStoreClient);
        }
    }

    public void processSignedBinaryAction(String str, int i) {
        Log.i(this.TAG, "processSignedBinaryAction action: " + str + " subid:" + i + "tp_subid:" + this.mStoreClient.getSimManager().getSubscriptionId());
        if (!Mno.ATT.equals(SimUtil.getSimMno(this.mStoreClient.getClientID()))) {
            Log.e(this.TAG, "Not ATT SIM Card, do not process");
            return;
        }
        if (str.equals(VAL_StopService)) {
            this.mIWorkingStatusProvisionListener.stopService();
            return;
        }
        if (i != this.mStoreClient.getSimManager().getSubscriptionId()) {
            Log.d(this.TAG, "ignore this sms message, requested for other slot currentNum: " + this.mStoreClient.getPrerenceManager().getUserCtn());
            return;
        }
        if (str.equals(VAL_PauseService)) {
            this.mIWorkingStatusProvisionListener.pauseService();
        } else if (str.equals(VAL_NoOPTIN)) {
            this.mIWorkingStatusProvisionListener.onRestartService(false);
        }
    }

    public String[] parse(String str) {
        String substring;
        int indexOf;
        int indexOf2 = str.indexOf(TAG_SID);
        if (indexOf2 < 0 || (indexOf = (substring = str.substring(indexOf2)).indexOf(VAL_ACTION)) < 0) {
            return null;
        }
        String substring2 = substring.substring(0, indexOf + 5);
        String[] strArr = new String[2];
        for (String str2 : substring2.split(":")) {
            String[] split = str2.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            if (TAG_SID.equals(split[0])) {
                strArr[0] = split[1];
            }
            if ("action".equals(split[0])) {
                strArr[1] = split[1];
            }
        }
        return strArr;
    }

    public String parseJson(String str) {
        this.expiry = "";
        String str2 = null;
        try {
            if (str.length() > 2) {
                int indexOf = str.indexOf(123, 2);
                int indexOf2 = indexOf != -1 ? str.indexOf(125, indexOf) : -1;
                Log.i(this.TAG, "subJsonBegin " + indexOf + " subJsonEnd " + indexOf2);
                if (indexOf != -1 && indexOf2 != -1) {
                    str = str.substring(indexOf, indexOf2 + 1);
                }
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("sub")) {
                this.sub_val = jSONObject.getString("sub");
                Log.i(this.TAG, "action_alg " + this.sub_val);
            }
            if (!jSONObject.isNull("action")) {
                str2 = jSONObject.getString("action");
                Log.i(this.TAG, "action_alg " + str2);
            }
            if (!jSONObject.isNull(CloudMessageProviderContract.BufferDBMMSpdu.EXP)) {
                this.expiry = jSONObject.getString(CloudMessageProviderContract.BufferDBMMSpdu.EXP);
                Log.i(this.TAG, "expiry: " + this.expiry);
            }
        } catch (JSONException e) {
            Log.e(this.TAG, "Error " + e.getMessage());
        }
        return str2;
    }
}
