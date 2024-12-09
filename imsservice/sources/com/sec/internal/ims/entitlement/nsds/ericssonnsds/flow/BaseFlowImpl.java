package com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.data.NSDSRequest;
import com.sec.internal.constants.ims.entitilement.data.Response3gppAuthentication;
import com.sec.internal.ims.config.util.AKAEapAuthHelper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.NSDSClient;
import com.sec.internal.ims.entitlement.storagehelper.DeviceIdHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class BaseFlowImpl extends Handler {
    public static final int ACTIVATE_SIM_DEVICE = 32;
    public static final int AKA_TOKEN_PRESENT = 1;
    private static final int AKA_TOKEN_RECEIVED = 5;
    protected static final int CHALLENGE_CALCULATED = 2;
    public static final int CHECK_LOC_AND_TC = 33;
    public static final int DEACTIVATE_DEVICE = 40;
    public static final int ENTITLMENT_CHECK = 30;
    protected static final int EVENT_SIM_AUTH_RESPONSE = 4;
    protected static final int INITIAL_3GPP_AUTH_RESPONSE = 1;
    protected static final String KEY_AKA_TOKEN = "AKA_TOKEN";
    protected static final String KEY_IMSI_EAP = "IMSI_EAP";
    public static final String KEY_REQUEST_MESSAGE = "REQUEST_MESSAGE";
    private static final String LOG_TAG = BaseFlowImpl.class.getSimpleName();
    public static final int REGISTER_PUSH_TOKEN = 41;
    public static final int REMOVE_PUSH_TOKEN = 42;
    protected static final int RESPONSE_RECEIVED = 3;
    public static final int RETRIEVE_AKA_TOKEN = 47;
    public static final int RETRIEVE_AVAILABLE_MSISDN = 45;
    public static final int RETRIEVE_DEVICE_CONFIG = 31;
    public static final int UPDATE_DEVICE_CONFIG = 38;
    protected String mAkaToken;
    private final Context mContext;
    private ArrayList<Message> mDeferredMessages;
    protected NSDSClient mNSDSClient;
    private final int mPhoneId;
    private String mSimAuthType;
    private final ISimManager mSimManager;

    public BaseFlowImpl(Looper looper, Context context, ISimManager iSimManager) {
        super(looper);
        this.mAkaToken = null;
        this.mSimAuthType = null;
        this.mDeferredMessages = new ArrayList<>();
        this.mContext = context;
        int simSlotIndex = iSimManager.getSimSlotIndex();
        this.mPhoneId = simSlotIndex;
        this.mSimManager = iSimManager;
        this.mNSDSClient = new NSDSClient(context, iSimManager);
        getAkaTokenFromSharedPreference();
        IMSLog.i(LOG_TAG, simSlotIndex, "created.");
    }

    public BaseFlowImpl(Looper looper, Context context, int i) {
        super(looper);
        this.mAkaToken = null;
        this.mSimAuthType = null;
        this.mDeferredMessages = new ArrayList<>();
        this.mContext = context;
        this.mPhoneId = i;
        ISimManager iSimManager = SimManagerFactory.getAllSimManagers().get(i);
        this.mSimManager = iSimManager;
        this.mNSDSClient = new NSDSClient(context, iSimManager);
        getAkaTokenFromSharedPreference();
        IMSLog.i(LOG_TAG, i, "created.");
    }

    public NSDSClient getNSDSClient() {
        return this.mNSDSClient;
    }

    public ISimManager getSimManager() {
        return this.mSimManager;
    }

    public void clearDeferredMessages() {
        if (this.mDeferredMessages.isEmpty()) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "clearDeferredMessages()");
        this.mDeferredMessages.clear();
    }

    public void setSimAuthAppType(String str) {
        this.mSimAuthType = str;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleMessage: evt " + message.what);
        boolean z = message.arg1 == 1;
        int i = message.what;
        if (i == 1) {
            Bundle data = message.getData();
            Response3gppAuthentication response3gppAuthentication = (Response3gppAuthentication) data.getParcelable(NSDSNamespaces.NSDSMethodNamespace.REQ_3GPP_AUTH);
            if (isResponseAkaChallenge(response3gppAuthentication)) {
                calculateChallenge(response3gppAuthentication);
                return;
            } else {
                IMSLog.e(str, this.mPhoneId, "responseCollection is null");
                reportResultForDeferredMessages(data);
                return;
            }
        }
        if (i == 2) {
            if (!this.mDeferredMessages.isEmpty()) {
                executeRequest(this.mDeferredMessages.remove(0), (String) message.obj);
                return;
            } else {
                IMSLog.e(str, this.mPhoneId, "!!!!Deferred messages should not be empty here.!!!. It will recover with initial3gppAuth");
                return;
            }
        }
        if (i == 3) {
            onResponseReceived(message);
            return;
        }
        if (i == 4) {
            processSimAuthResponse(message.getData().getString("AKA_CHALLENGE"), (String) message.obj);
            return;
        }
        if (i == 5) {
            moveDeferredMessageAtFrontOfQueue();
        } else if (!z) {
            processBaseRequest(message);
        } else {
            executeRequestWithAkaToken(message, (String) message.getData().get(KEY_IMSI_EAP), (String) message.getData().get(KEY_AKA_TOKEN));
        }
    }

    private void processBaseRequest(Message message) {
        if (getAkaTokenFromSharedPreference() == null) {
            if (this.mDeferredMessages.isEmpty()) {
                deferWithZeroIndexMessage(message);
                requestInitial3gppAuthentication(Message.obtain(message));
                return;
            } else {
                deferMessage(message);
                return;
            }
        }
        executeRequest(message, null);
    }

    public void performOperationWithAkaToken(int i, String str, String str2, NSDSBaseProcedure nSDSBaseProcedure, Messenger messenger) {
        Message obtainMessage = obtainMessage(i, nSDSBaseProcedure);
        obtainMessage.arg1 = 1;
        Bundle bundle = new Bundle();
        bundle.putString(KEY_IMSI_EAP, str);
        bundle.putString(KEY_AKA_TOKEN, str2);
        obtainMessage.setData(bundle);
        obtainMessage.replyTo = messenger;
        sendMessage(obtainMessage);
    }

    public void performOperation(int i, NSDSBaseProcedure nSDSBaseProcedure, Messenger messenger) {
        Message obtainMessage = obtainMessage(i, nSDSBaseProcedure);
        obtainMessage.replyTo = messenger;
        sendMessage(obtainMessage);
    }

    public void resubmitWithChallenge(Message message, Response3gppAuthentication response3gppAuthentication) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "resubmitWithChallenge:" + message);
        if (this.mDeferredMessages.isEmpty()) {
            deferWithZeroIndexMessage(message);
            calculateChallenge(response3gppAuthentication);
        } else {
            deferMessage(message);
        }
    }

    private String getAkaTokenFromSharedPreference() {
        SharedPreferences sharedPref = NSDSSharedPrefHelper.getSharedPref(this.mContext, NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0);
        if (sharedPref != null) {
            this.mAkaToken = sharedPref.getString(this.mSimManager.getImsi(), null);
        }
        return this.mAkaToken;
    }

    private void deferWithZeroIndexMessage(Message message) {
        if (message == null) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "deferWithZeroIndexMessage msg:" + message.toString());
        this.mDeferredMessages.add(0, Message.obtain(message));
    }

    protected final void deferMessage(Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "deferMessage msg:" + message.toString());
        this.mDeferredMessages.add(Message.obtain(message));
    }

    private void moveDeferredMessageAtFrontOfQueue() {
        for (int i = 0; i < this.mDeferredMessages.size(); i++) {
            Message message = this.mDeferredMessages.get(i);
            IMSLog.i(LOG_TAG, this.mPhoneId, "moveDeferredMessageAtFrontOfQueue; what=" + message.what);
            sendMessageAtFrontOfQueue(message);
        }
        this.mDeferredMessages.clear();
    }

    private void reportResultForDeferredMessages(Bundle bundle) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "3gpp auth failed. reportResultForDeferredMessages: ");
        for (int i = 0; i < this.mDeferredMessages.size(); i++) {
            reportResult(this.mDeferredMessages.get(i), bundle);
        }
        this.mDeferredMessages.clear();
    }

    private void executeRequest(Message message, String str) {
        String akaTokenFromSharedPreference = getAkaTokenFromSharedPreference();
        NSDSBaseProcedure nSDSBaseProcedure = (NSDSBaseProcedure) message.obj;
        NSDSRequest[] buildRequests = nSDSBaseProcedure.buildRequests(new NSDSCommonParameters(str, akaTokenFromSharedPreference, NSDSHelper.getImsiEap(this.mContext, this.mSimManager.getSimSlotIndex(), this.mSimManager.getImsi(), this.mSimManager.getSimOperator()), getEncodedDeviceId()));
        if (buildRequests == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "executeRequest: NSDS Requests is null. reporting failure");
            reportResult(message, null);
        } else {
            this.mNSDSClient.executeRequestCollection(buildRequests, obtainReponseReceivedMessage(message), nSDSBaseProcedure.getVersionInfo(), nSDSBaseProcedure.getUserAgent(), nSDSBaseProcedure.getImeiForUA(), getDeviceId(), this.mSimManager.getImsi());
        }
    }

    private void executeRequestWithAkaToken(Message message, String str, String str2) {
        NSDSBaseProcedure nSDSBaseProcedure = (NSDSBaseProcedure) message.obj;
        NSDSRequest[] buildRequests = nSDSBaseProcedure.buildRequests(new NSDSCommonParameters(null, str2, str, getEncodedDeviceId()));
        if (buildRequests == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "executeRequest: NSDS Requests is null. reporting failure");
            reportResult(message, null);
        } else {
            this.mNSDSClient.executeRequestCollection(buildRequests, obtainReponseReceivedMessage(message), nSDSBaseProcedure.getVersionInfo(), this.mSimManager.getImsi(), getDeviceId());
        }
    }

    private Message obtainReponseReceivedMessage(Message message) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(KEY_REQUEST_MESSAGE, Message.obtain(message));
        Message obtainMessage = obtainMessage(3);
        obtainMessage.setData(bundle);
        return obtainMessage;
    }

    protected void onResponseReceived(Message message) {
        Response3gppAuthentication response3gppAuthentication;
        Message message2;
        Bundle data = message.getData();
        String str = LOG_TAG;
        int i = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("Response received : ");
        sb.append(data != null ? data.toString() : "null");
        IMSLog.i(str, i, sb.toString());
        if (data != null) {
            response3gppAuthentication = (Response3gppAuthentication) data.getParcelable(NSDSNamespaces.NSDSMethodNamespace.REQ_3GPP_AUTH);
            message2 = (Message) data.getParcelable(KEY_REQUEST_MESSAGE);
        } else {
            response3gppAuthentication = null;
            message2 = null;
        }
        if (isAuthenticationSuccessful(response3gppAuthentication) && response3gppAuthentication.akaToken != null) {
            IMSLog.s(str, this.mPhoneId, "onResponseReceived: akaToken:" + response3gppAuthentication.akaToken);
            String str2 = response3gppAuthentication.akaToken;
            this.mAkaToken = str2;
            updateAkaTokenInSharedPref(str2);
            sendEmptyMessage(5);
        } else if (isResponseAkaChallenge(response3gppAuthentication)) {
            boolean z = false;
            if (message2 != null && message2.arg1 == 1) {
                z = true;
            }
            IMSLog.i(str, this.mPhoneId, "response is akaChallenge. shouldIgnoreChallenge:" + z);
            if (!z) {
                clearAkaToken();
            }
        }
        reportResult(message2, data);
    }

    private void clearAkaToken() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "clearAkaToken()");
        this.mAkaToken = null;
        NSDSSharedPrefHelper.removeAkaToken(this.mContext, this.mSimManager.getImsi());
    }

    protected void reportResult(Message message, Bundle bundle) {
        if (message != null) {
            try {
                if (message.replyTo != null) {
                    Message obtain = Message.obtain((Handler) null, 1);
                    obtain.setData(bundle);
                    message.replyTo.send(obtain);
                }
            } catch (RemoteException e) {
                IMSLog.s(LOG_TAG, this.mPhoneId, "Could not send the response" + e.getMessage());
                return;
            }
        }
        IMSLog.e(LOG_TAG, this.mPhoneId, "!!!requestMsg is null or requestMsg.replyTo is null!!!!");
    }

    protected void requestInitial3gppAuthentication(Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "requestInitial3gppAuthentication()");
        AtomicInteger atomicInteger = new AtomicInteger();
        NSDSBaseProcedure nSDSBaseProcedure = (NSDSBaseProcedure) message.obj;
        this.mNSDSClient.executeRequestCollection(new NSDSRequest[]{this.mNSDSClient.buildAuthenticationRequest(atomicInteger.incrementAndGet(), true, null, null, null, NSDSHelper.getImsiEap(this.mContext, this.mSimManager.getSimSlotIndex(), this.mSimManager.getImsi(), this.mSimManager.getSimOperator()), getEncodedDeviceId())}, obtainMessage(1), nSDSBaseProcedure.getVersionInfo(), this.mSimManager.getImsi(), getDeviceId());
    }

    public String getDeviceId() {
        return DeviceIdHelper.getDeviceId(this.mContext, this.mSimManager.getSimSlotIndex());
    }

    public String getEncodedDeviceId() {
        return DeviceIdHelper.getEncodedDeviceId(getDeviceId());
    }

    private void requestIsimAuthentication(String str, String str2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "requestIsimAuthentication");
        Message obtainMessage = obtainMessage(4);
        Bundle bundle = new Bundle();
        bundle.putString("AKA_CHALLENGE", str2);
        obtainMessage.setData(bundle);
        String str3 = this.mSimAuthType;
        if (str3 != null && str3.equals(NSDSNamespaces.NSDSSimAuthType.USIM)) {
            this.mSimManager.requestIsimAuthentication(str, 2, obtainMessage);
            return;
        }
        String str4 = this.mSimAuthType;
        if (str4 != null && str4.equals(NSDSNamespaces.NSDSSimAuthType.ISIM)) {
            this.mSimManager.requestIsimAuthentication(str, 5, obtainMessage);
        } else {
            this.mSimManager.requestIsimAuthentication(str, obtainMessage);
        }
    }

    private void calculateChallenge(Response3gppAuthentication response3gppAuthentication) {
        this.mAkaToken = response3gppAuthentication.akaToken;
        String decodeChallenge = AKAEapAuthHelper.decodeChallenge(response3gppAuthentication.akaChallenge);
        requestIsimAuthentication(AKAEapAuthHelper.getNonce(decodeChallenge), decodeChallenge);
    }

    private void processSimAuthResponse(String str, String str2) {
        String imsiEap = NSDSHelper.getImsiEap(this.mContext, this.mSimManager.getSimSlotIndex(), this.mSimManager.getImsi(), this.mSimManager.getSimOperator());
        if (imsiEap == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "process3gppAuthResponse: failed to get SIM info");
            report3gppAuthError(null);
            return;
        }
        String generateChallengeResponse = AKAEapAuthHelper.generateChallengeResponse(str, str2, imsiEap);
        if (generateChallengeResponse == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "process3gppAuthResponse: failed to generate challenge response");
            report3gppAuthError(null);
            return;
        }
        IMSLog.s(LOG_TAG, this.mPhoneId, "process3gppAuthResponse: challenge response " + generateChallengeResponse);
        Message obtainMessage = obtainMessage(2);
        obtainMessage.obj = generateChallengeResponse;
        obtainMessage.sendToTarget();
    }

    private void report3gppAuthError(Response3gppAuthentication response3gppAuthentication) {
        Bundle bundle = new Bundle();
        if (response3gppAuthentication != null) {
            bundle.putParcelable(NSDSNamespaces.NSDSMethodNamespace.REQ_3GPP_AUTH, response3gppAuthentication);
        }
        reportResultForDeferredMessages(bundle);
    }

    protected void updateAkaTokenInSharedPref(String str) {
        SharedPreferences sharedPref = NSDSSharedPrefHelper.getSharedPref(this.mContext, NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0);
        if (sharedPref == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "updateAkaTokenInSharedPref: failed");
            return;
        }
        SharedPreferences.Editor edit = sharedPref.edit();
        edit.putString(this.mSimManager.getImsi(), str);
        boolean commit = edit.commit();
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateAkaTokenInSharedPref: isSuccess: " + commit + " akaToken:" + str);
    }

    protected boolean isAuthenticationSuccessful(Response3gppAuthentication response3gppAuthentication) {
        return response3gppAuthentication != null && response3gppAuthentication.responseCode == 1000;
    }

    private boolean isResponseAkaChallenge(Response3gppAuthentication response3gppAuthentication) {
        return response3gppAuthentication != null && response3gppAuthentication.responseCode == 1003;
    }
}
