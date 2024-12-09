package com.sec.internal.ims.servicemodules.options;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.servicemodules.options.BotServiceIdTranslator;
import com.sec.internal.constants.ims.servicemodules.options.OptionsEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.tapi.service.extension.utils.Constants;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class OptionsRequestController extends Handler {
    private static final int EVENT_OPTIONS_EVENT = 3;
    private static final int EVENT_PROCESS_QUEUE = 1;
    private static final int EVENT_PUSH_ERROR_RESPONSE = 7;
    private static final int EVENT_PUSH_REQUEST = 2;
    private static final int EVENT_PUSH_RESPONSE = 5;
    private static final int EVENT_SEND_CAPEX_ERROR_RESPONSE_COMPLETE = 8;
    private static final int EVENT_SEND_CAPEX_RESPONSE_COMPLETE = 6;
    private static final int EVENT_SET_OWN_CAPABILITIES = 4;
    private static final String LOG_TAG = "OptionsReqController";
    private static final int MAX_OPTIONS_REQ = 15;
    private static final int OPTIONS_PROCESS_TIMEOUT = 30;
    private Context mContext;
    private IOptionsEventListener mListener;
    private int mProcessingRequests;
    private PhoneIdKeyMap<Integer> mRegistrationId;
    final CopyOnWriteArrayList<OptionsRequest> mRequestQueue;
    IOptionsServiceInterface mService;

    interface IOptionsEventListener {
        void onCapabilityUpdate(OptionsEvent optionsEvent);
    }

    public OptionsRequestController(Looper looper, Context context) {
        super(looper);
        this.mRequestQueue = new CopyOnWriteArrayList<>();
        this.mContext = null;
        this.mProcessingRequests = 0;
        this.mListener = null;
        this.mService = ImsRegistry.getHandlerFactory().getOptionsHandler();
        this.mRegistrationId = new PhoneIdKeyMap<>(SimUtil.getPhoneCount(), -1);
        this.mContext = context;
    }

    public void init() {
        this.mService.registerForOptionsEvent(this, 3, null);
    }

    public void registerOptionsEvent(IOptionsEventListener iOptionsEventListener) {
        this.mListener = iOptionsEventListener;
    }

    public void setImsRegistration(final ImsRegistration imsRegistration) {
        Optional.ofNullable(imsRegistration).ifPresent(new Consumer() { // from class: com.sec.internal.ims.servicemodules.options.OptionsRequestController$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                OptionsRequestController.this.lambda$setImsRegistration$0(imsRegistration, (ImsRegistration) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setImsRegistration$0(ImsRegistration imsRegistration, ImsRegistration imsRegistration2) {
        int phoneId = imsRegistration.getPhoneId();
        this.mRegistrationId.put(phoneId, Integer.valueOf(IRegistrationManager.getRegistrationInfoId(imsRegistration.getImsProfile().getId(), phoneId)));
        IMSLog.s(LOG_TAG, phoneId, "setImsRegistration: " + imsRegistration);
    }

    public void setImsDeRegistration(ImsRegistration imsRegistration) {
        if (imsRegistration != null) {
            int phoneId = imsRegistration.getPhoneId();
            IMSLog.i(LOG_TAG, phoneId, "setImsDeRegistration: clearing requests queue");
            Iterator<OptionsRequest> it = this.mRequestQueue.iterator();
            while (it.hasNext()) {
                OptionsRequest next = it.next();
                if (next.getPhoneId() == phoneId) {
                    this.mRequestQueue.remove(next);
                }
            }
            this.mRegistrationId.put(phoneId, -1);
            return;
        }
        this.mRequestQueue.clear();
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            this.mRegistrationId.put(i, -1);
        }
    }

    public void setOwnCapabilities(long j, int i) {
        sendMessage(obtainMessage(4, i, 0, Long.valueOf(j)));
    }

    public boolean requestCapabilityExchange(ImsUri imsUri, long j, int i, String str) {
        IMSLog.s(LOG_TAG, i, "requestCapabilityExchange: uri: " + imsUri.toString() + ", iari: " + str);
        Bundle bundle = new Bundle();
        bundle.putParcelable(Constants.SIG_PROPERTY_URI_NAME, imsUri);
        bundle.putLong("FEATURES", j);
        bundle.putString("EXTFEATURE", str);
        sendMessage(obtainMessage(2, i, 0, bundle));
        return true;
    }

    public boolean requestCapabilityExchange(ImsUri imsUri, Set<String> set, int i) {
        IMSLog.s(LOG_TAG, i, "requestCapabilityExchange: uri: " + imsUri.toString() + ", iari: " + set);
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(set);
        Bundle bundle = new Bundle();
        bundle.putParcelable(Constants.SIG_PROPERTY_URI_NAME, imsUri);
        bundle.putStringArrayList("MYCAPS", arrayList);
        sendMessage(obtainMessage(2, i, 0, bundle));
        return true;
    }

    public boolean sendCapexResponse(ImsUri imsUri, long j, String str, int i, int i2, String str2) {
        IMSLog.s(LOG_TAG, i2, "sendCapexResponse: uri: " + imsUri.toString());
        Bundle bundle = new Bundle();
        bundle.putString("TXID", str);
        bundle.putLong("FEATURES", j);
        bundle.putParcelable(Constants.SIG_PROPERTY_URI_NAME, imsUri);
        bundle.putInt("LASTSEEN", i);
        bundle.putString("EXTFEATURE", str2);
        sendMessage(obtainMessage(5, i2, 0, bundle));
        return true;
    }

    void onRequestCapabilityExchange(ImsUri imsUri, long j, String str, List<String> list, int i) {
        OptionsRequest findOptionsRequest = findOptionsRequest(imsUri, i);
        if (findOptionsRequest != null) {
            long time = new Date().getTime() - findOptionsRequest.getTimestamp().getTime();
            if (time > 30000) {
                IMSLog.i(LOG_TAG, i, "onRequestCapabilityExchange: options timeout diff = " + time + " ms, set failed");
                failedRequest(findOptionsRequest);
            } else {
                IMSLog.i(LOG_TAG, i, "onRequestCapabilityExchange: myFeatures: " + j + ", req.getMyFeatures()" + findOptionsRequest.getMyFeatures());
                if (j == Capabilities.FEATURE_OFFLINE_RCS_USER || findOptionsRequest.getMyFeatures() == j) {
                    return;
                }
            }
        }
        this.mRequestQueue.add(new OptionsRequest(imsUri, j, i, str, list));
        sendEmptyMessage(1);
    }

    public boolean sendCapexResponse(ImsUri imsUri, Set<String> set, String str, int i, int i2) {
        IMSLog.s(LOG_TAG, i2, "sendCapexResponse: uri: " + imsUri.toString());
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(set);
        Bundle bundle = new Bundle();
        bundle.putString("TXID", str);
        bundle.putStringArrayList("FEATURES", arrayList);
        bundle.putParcelable(Constants.SIG_PROPERTY_URI_NAME, imsUri);
        bundle.putInt("LASTSEEN", i);
        sendMessage(obtainMessage(5, i2, 0, bundle));
        return true;
    }

    public boolean sendCapexErrorResponse(ImsUri imsUri, String str, int i, int i2, String str2) {
        IMSLog.s(LOG_TAG, i, "sendCapexErrorResponse: uri: " + imsUri.toString());
        Bundle bundle = new Bundle();
        bundle.putString("TXID", str);
        bundle.putParcelable(Constants.SIG_PROPERTY_URI_NAME, imsUri);
        bundle.putInt("errorcode", i2);
        bundle.putString("reason", str2);
        sendMessage(obtainMessage(7, i, 0, bundle));
        return true;
    }

    private void onSendCapexResponse(ImsUri imsUri, long j, String str, int i, int i2, String str2) {
        OptionsRequest optionsRequest = new OptionsRequest(imsUri, j, i2, str2);
        optionsRequest.setIncoming(true);
        IMSLog.s(LOG_TAG, i2, "OnSendCapexResponse: txID: " + str);
        optionsRequest.setTxId(str);
        optionsRequest.setLastSeen(i);
        optionsRequest.setExtFeature(str2);
        this.mRequestQueue.add(optionsRequest);
        sendEmptyMessage(1);
    }

    private void onSendCapexResponse(ImsUri imsUri, List<String> list, String str, int i, int i2) {
        OptionsRequest optionsRequest = new OptionsRequest(imsUri, list, i2);
        optionsRequest.setIncoming(true);
        IMSLog.s(LOG_TAG, i2, "onSendCapexResponse list: txID: " + str);
        optionsRequest.setTxId(str);
        optionsRequest.setLastSeen(i);
        this.mRequestQueue.add(optionsRequest);
        sendEmptyMessage(1);
    }

    private void onSendCapexErrorResponse(ImsUri imsUri, String str, int i, int i2, String str2) {
        OptionsRequest optionsRequest = new OptionsRequest(imsUri, null, i2);
        optionsRequest.setIncoming(true);
        IMSLog.s(LOG_TAG, i2, "onSendCapexErrorResponse: txID: " + str);
        optionsRequest.setTxId(str);
        optionsRequest.setErrorResponseCode(i);
        optionsRequest.setReason(str2);
        this.mRequestQueue.add(optionsRequest);
        sendEmptyMessage(1);
    }

    void process() {
        Log.i(LOG_TAG, "process requestQueue.");
        if (this.mRequestQueue.size() == 0) {
            return;
        }
        Iterator<OptionsRequest> it = this.mRequestQueue.iterator();
        do {
            OptionsRequest next = it.next();
            if (next.getState() != 1 && next.getState() != 2) {
                if (!next.isIncoming()) {
                    this.mService.requestCapabilityExchange(next.getUri(), next.getMyFeatures(), next.getPhoneId(), next.getExtFeature(), next.getMyCaps());
                } else if (RcsUtils.isImsSingleRegiRequired(this.mContext, next.getPhoneId()) && RcsUtils.isSrRcsOptionsEnabled(this.mContext, next.getPhoneId())) {
                    if (next.getErrorResponseCode() == 0 || next.getErrorResponseCode() == 200) {
                        this.mService.sendCapexResponse(next.getUri(), next.getMyCaps(), next.getTxId(), next.getLastSeen(), obtainMessage(6, next), next.getPhoneId());
                    } else {
                        this.mService.sendCapexErrorResponse(next.getUri(), next.getTxId(), obtainMessage(8), next.getPhoneId(), next.getErrorResponseCode(), next.getReason());
                    }
                } else {
                    this.mService.sendCapexResponse(next.getUri(), next.getMyFeatures(), next.getTxId(), next.getLastSeen(), obtainMessage(6, next), next.getPhoneId(), next.getExtFeature());
                }
                next.setState(1);
                this.mProcessingRequests++;
            }
            if (!it.hasNext()) {
                return;
            }
        } while (this.mProcessingRequests < 15);
    }

    OptionsRequest findOptionsRequest(ImsUri imsUri, int i) {
        return findRequest(imsUri, -1, i);
    }

    private OptionsRequest findRequest(ImsUri imsUri, int i, int i2) {
        Iterator<OptionsRequest> it = this.mRequestQueue.iterator();
        while (it.hasNext()) {
            OptionsRequest next = it.next();
            if (next != null && next.getPhoneId() == i2 && UriUtil.equals(next.getUri(), imsUri) && (i < 0 || next.getState() == i)) {
                return next;
            }
        }
        return null;
    }

    private void failedRequest(OptionsRequest optionsRequest) {
        IMSLog.s(LOG_TAG, "failedRequest: uri: " + optionsRequest.getUri());
        this.mRequestQueue.remove(optionsRequest);
        optionsRequest.setState(3);
        this.mProcessingRequests = this.mProcessingRequests + (-1);
    }

    private void completeRequest(OptionsRequest optionsRequest) {
        IMSLog.s(LOG_TAG, "completeRequest: uri: " + optionsRequest.getUri());
        this.mRequestQueue.remove(optionsRequest);
        optionsRequest.setState(2);
        this.mProcessingRequests = this.mProcessingRequests + (-1);
    }

    void onOptionsEvent(AsyncResult asyncResult) {
        IRegistrationGovernor registrationGovernor;
        OptionsEvent optionsEvent = (OptionsEvent) asyncResult.result;
        int phoneId = optionsEvent.getPhoneId();
        if (this.mRegistrationId.get(phoneId).intValue() == -1) {
            Log.i(LOG_TAG, "onOptionsEvent: registration is null. fail.");
            return;
        }
        try {
            int handle = ImsRegistry.getRegistrationManager().getRegistrationInfo(this.mRegistrationId.get(phoneId).intValue()).getHandle();
            ImsUri uri = optionsEvent.getUri();
            IMSLog.s(LOG_TAG, phoneId, "onOptionsEvent: event: " + optionsEvent);
            IMSLog.s(LOG_TAG, phoneId, "onOptionsEvent: event: mSessionId: " + optionsEvent.getSessionId() + ", featureList: " + optionsEvent.getFeatureList());
            IMSLog.s(LOG_TAG, phoneId, "onOptionsEvent: mHandle: " + handle + ", mRegistrationId: " + this.mRegistrationId);
            if (optionsEvent.isResponse()) {
                if (optionsEvent.getReason() == OptionsEvent.OptionsFailureReason.FORBIDDEN_403 && (registrationGovernor = ImsRegistry.getRegistrationManager().getRegistrationGovernor(handle)) != null) {
                    Log.i(LOG_TAG, "403 forbidden response w/o warning header");
                    registrationGovernor.onSipError("options", new SipError(403, "Forbidden"));
                }
                OptionsRequest findRequest = findRequest(uri, 1, phoneId);
                if (findRequest != null) {
                    completeRequest(findRequest);
                }
                if (uri != null && uri.getUriType() == ImsUri.UriType.TEL_URI) {
                    long features = optionsEvent.getFeatures();
                    long j = Capabilities.FEATURE_CHATBOT_ROLE;
                    if ((features & j) == j) {
                        Iterator<ImsUri> it = optionsEvent.getPAssertedIdSet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ImsUri next = it.next();
                            if (next.getUriType() == ImsUri.UriType.SIP_URI) {
                                BotServiceIdTranslator.getInstance().register(uri.getMsisdn(), next.toString(), phoneId);
                                break;
                            }
                        }
                    }
                }
            } else {
                if (!UriUtil.hasMsisdnNumber(uri)) {
                    long features2 = optionsEvent.getFeatures();
                    long j2 = Capabilities.FEATURE_CHATBOT_ROLE;
                    if ((features2 & j2) != j2) {
                        return;
                    }
                }
                if (handle != optionsEvent.getSessionId()) {
                    IMSLog.s(LOG_TAG, phoneId, "onOptionsEvent: mHandle != event.getSessionId()");
                    return;
                }
            }
            IOptionsEventListener iOptionsEventListener = this.mListener;
            if (iOptionsEventListener != null) {
                iOptionsEventListener.onCapabilityUpdate(optionsEvent);
            }
            process();
        } catch (NullPointerException e) {
            Log.e(LOG_TAG, "onOptionsEvent: getRegistrationInfo is Null" + e.getMessage() + " mRegistrationId: " + this.mRegistrationId);
        }
    }

    private void handleSendCapexResponseComplete(AsyncResult asyncResult) {
        OptionsRequest optionsRequest = (OptionsRequest) asyncResult.userObj;
        if (optionsRequest != null) {
            Log.i(LOG_TAG, "handleSendCapexResponseComplete: txId: " + optionsRequest.getTxId() + ", state: " + optionsRequest.getState() + ", timeStamp: " + optionsRequest.getTimestamp());
            completeRequest(optionsRequest);
        }
    }

    private void handleSetOwnCapabilities(long j, int i) {
        this.mService.setOwnCapabilities(j, i);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                process();
                break;
            case 2:
                Bundle bundle = (Bundle) message.obj;
                onRequestCapabilityExchange((ImsUri) bundle.get(Constants.SIG_PROPERTY_URI_NAME), ((Long) bundle.get("FEATURES")).longValue(), (String) bundle.get("EXTFEATURE"), bundle.getStringArrayList("MYCAPS"), message.arg1);
                break;
            case 3:
                onOptionsEvent((AsyncResult) message.obj);
                break;
            case 4:
                handleSetOwnCapabilities(((Long) message.obj).longValue(), message.arg1);
                break;
            case 5:
                Bundle bundle2 = (Bundle) message.obj;
                if (RcsUtils.isImsSingleRegiRequired(this.mContext, message.arg1) && RcsUtils.isSrRcsOptionsEnabled(this.mContext, message.arg1)) {
                    onSendCapexResponse((ImsUri) bundle2.get(Constants.SIG_PROPERTY_URI_NAME), (List) bundle2.get("FEATURES"), (String) bundle2.get("TXID"), ((Integer) bundle2.get("LASTSEEN")).intValue(), message.arg1);
                    break;
                } else {
                    onSendCapexResponse((ImsUri) bundle2.get(Constants.SIG_PROPERTY_URI_NAME), ((Long) bundle2.get("FEATURES")).longValue(), (String) bundle2.get("TXID"), ((Integer) bundle2.get("LASTSEEN")).intValue(), message.arg1, (String) bundle2.get("EXTFEATURE"));
                    break;
                }
                break;
            case 6:
                handleSendCapexResponseComplete((AsyncResult) message.obj);
                break;
            case 7:
                Bundle bundle3 = (Bundle) message.obj;
                onSendCapexErrorResponse((ImsUri) bundle3.get(Constants.SIG_PROPERTY_URI_NAME), (String) bundle3.get("TXID"), ((Integer) bundle3.get("errorcode")).intValue(), message.arg1, (String) bundle3.get("reason"));
                break;
        }
    }

    static class OptionsRequest {
        static final int DONE = 2;
        static final int FAILED = 3;
        static final int INIT = 0;
        static final int REQUESTED = 1;
        private int errorResponseCode;
        private boolean isIncoming;
        private int lastSeen;
        private String mExtFeature;
        private List<String> mMyCaps;
        private final long mMyFeatures;
        private int mPhoneId;
        private int mState;
        private Date mTimestamp;
        private final ImsUri mUri;
        private String reason;
        private String txId;

        OptionsRequest(ImsUri imsUri, long j, int i, String str) {
            this.isIncoming = false;
            this.txId = null;
            this.mUri = imsUri;
            this.mMyFeatures = j;
            this.mState = 0;
            this.mTimestamp = new Date();
            this.mPhoneId = i;
            this.lastSeen = -1;
            this.mExtFeature = str;
        }

        OptionsRequest(ImsUri imsUri, long j, int i, String str, List<String> list) {
            this.isIncoming = false;
            this.txId = null;
            this.mUri = imsUri;
            this.mMyFeatures = j;
            this.mState = 0;
            this.mTimestamp = new Date();
            this.mPhoneId = i;
            this.lastSeen = -1;
            this.mExtFeature = str;
            this.mMyCaps = list;
        }

        OptionsRequest(ImsUri imsUri, List<String> list, int i) {
            this.isIncoming = false;
            this.txId = null;
            this.mUri = imsUri;
            this.mState = 0;
            this.mMyFeatures = 0L;
            this.mTimestamp = new Date();
            this.mPhoneId = i;
            this.lastSeen = -1;
            this.mExtFeature = null;
            this.mMyCaps = list;
        }

        void setState(int i) {
            this.mState = i;
        }

        int getState() {
            return this.mState;
        }

        ImsUri getUri() {
            return this.mUri;
        }

        int getPhoneId() {
            return this.mPhoneId;
        }

        long getMyFeatures() {
            return this.mMyFeatures;
        }

        Date getTimestamp() {
            return this.mTimestamp;
        }

        boolean isIncoming() {
            return this.isIncoming;
        }

        String getExtFeature() {
            return this.mExtFeature;
        }

        List<String> getMyCaps() {
            return this.mMyCaps;
        }

        void setIncoming(boolean z) {
            this.isIncoming = z;
        }

        String getTxId() {
            return this.txId;
        }

        void setTxId(String str) {
            this.txId = str;
        }

        int getLastSeen() {
            return this.lastSeen;
        }

        void setLastSeen(int i) {
            this.lastSeen = i;
        }

        void setExtFeature(String str) {
            this.mExtFeature = str;
        }

        public String getReason() {
            return this.reason;
        }

        public void setReason(String str) {
            this.reason = str;
        }

        public int getErrorResponseCode() {
            return this.errorResponseCode;
        }

        public void setErrorResponseCode(int i) {
            this.errorResponseCode = i;
        }
    }
}
