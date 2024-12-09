package com.sec.internal.ims.core.handler.secims;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.options.OptionsEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.ims.core.handler.OptionsHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.OptionsReceivedInfo;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ResipOptionsHandler extends OptionsHandler {
    public static final int EVENT_OPTIONS_RECEIVED_NOTIFY = 102;
    public static final int EVENT_OPTIONS_REQ_RESPONSE = 101;
    private static final String LOG_TAG = "ResipOptionsHandler";
    static Map<Long, Integer> mFeatureMap;
    private Registrant mCmcRegistrant;
    private final IImsFramework mImsFramework;
    private Registrant mP2pRegistrant;
    private Registrant mRegistrant;
    private StackIF mStackIf;

    static {
        HashMap hashMap = new HashMap();
        mFeatureMap = hashMap;
        hashMap.put(Long.valueOf(Capabilities.FEATURE_CHAT_CPM), 20);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_CHAT_SIMPLE_IM), 20);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_STANDALONE_MSG), 10);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_SF_GROUP_CHAT), 21);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_INTEGRATED_MSG), 27);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_PRESENCE_DISCOVERY), 19);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_SOCIAL_PRESENCE), 28);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_FT), 22);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_FT_HTTP), 25);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_FT_STORE), 24);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_FT_THUMBNAIL), 23);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_GEOLOCATION_PUSH), 31);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_MMTEL), 9);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_MMTEL_VIDEO), 6);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_MMTEL_CALL_COMPOSER), 55);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_IPCALL), 0);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_IPCALL_VIDEO), 1);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_IPCALL_VIDEO_ONLY), 2);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_ISH), 18);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_VSH), 3);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_FT_VIA_SMS), 38);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_STICKER), 37);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_GEO_VIA_SMS), 39);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), 14);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_ENRICHED_SHARED_MAP), 15);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), 17);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_ENRICHED_POST_CALL), 16);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_PUBLIC_MSG), 42);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_LAST_SEEN_ACTIVE), 43);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_CHATBOT_CHAT_SESSION), 44);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_CHATBOT_STANDALONE_MSG), 45);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_CHATBOT_EXTENDED_MSG), 46);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_CHATBOT_ROLE), 53);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_CANCEL_MESSAGE), 47);
        mFeatureMap.put(Long.valueOf(Capabilities.FEATURE_PLUG_IN), 48);
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void registerForOptionsEvent(Handler handler, int i, Object obj) {
        this.mRegistrant = new Registrant(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void registerForCmcOptionsEvent(Handler handler, int i, Object obj) {
        this.mCmcRegistrant = new Registrant(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void registerForP2pOptionsEvent(Handler handler, int i, Object obj) {
        this.mP2pRegistrant = new Registrant(handler, i, obj);
    }

    private void notifyEvent(OptionsEvent optionsEvent) {
        Registrant registrant = this.mRegistrant;
        if (registrant != null) {
            registrant.notifyResult(optionsEvent);
        }
    }

    private void notifyCmcEvent(OptionsEvent optionsEvent) {
        Registrant registrant = this.mCmcRegistrant;
        if (registrant != null) {
            registrant.notifyResult(optionsEvent);
        }
    }

    private void notifyP2pEvent(OptionsEvent optionsEvent) {
        Registrant registrant = this.mP2pRegistrant;
        if (registrant != null) {
            registrant.notifyResult(optionsEvent);
        }
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 101) {
            Log.i(LOG_TAG, "handleMessage: EVENT_OPTIONS_REQ_RESPONSE");
        } else if (i == 102) {
            handleNotify((Notify) ((AsyncResult) message.obj).result);
            Log.i(LOG_TAG, "handleMessage: EVENT_OPTIONS_RECEIVED_NOTIFY");
        } else {
            Log.i(LOG_TAG, "handleMessage: unknown event");
        }
    }

    public ResipOptionsHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mRegistrant = null;
        this.mCmcRegistrant = null;
        this.mP2pRegistrant = null;
        this.mImsFramework = iImsFramework;
    }

    @Override // com.sec.internal.ims.core.handler.BaseHandler
    public void init() {
        super.init();
        StackIF stackIF = StackIF.getInstance();
        this.mStackIf = stackIF;
        stackIF.registerOptionsHandler(this, 102, null);
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void setOwnCapabilities(long j, int i) {
        IMSLog.i(LOG_TAG, i, "setOwnCapabilities: " + j);
        UserAgent ua = getUa("options", i);
        if (ua == null) {
            Log.e(LOG_TAG, "setOwnCapabilities: UserAgent not found.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "setOwnCapabilities: handle = " + ua.getHandle());
        this.mStackIf.requestUpdateFeatureTag(ua.getHandle(), j);
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void requestCapabilityExchange(ImsUri imsUri, long j, int i, String str, List<String> list) {
        IMSLog.s(LOG_TAG, i, "requestCapabilityExchange: uri: " + imsUri + ", iari: " + str);
        UserAgent ua = getUa("options", i);
        if (ua == null) {
            Log.e(LOG_TAG, "requestCapabilityExchange: UserAgent not found.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: handle = " + ua.getHandle());
        this.mStackIf.requestOptionsReqCapabilityExchange(ua.getHandle(), imsUri.toString(), j, str, list);
    }

    @Override // com.sec.internal.ims.core.handler.OptionsHandler, com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void requestSendCmcCheckMsg(int i, int i2, String str) {
        IMSLog.s(LOG_TAG, i, "requestSendCmcCheckMsg: regId: " + i2 + ",uri: " + str);
        UserAgent uaByRegId = getUaByRegId(i2);
        if (uaByRegId == null) {
            Log.e(LOG_TAG, "requestSendCmcCheckMsg: UserAgent not found.");
            return;
        }
        Log.i(LOG_TAG, "requestSendCmcCheckMsg: handle = " + uaByRegId.getHandle());
        this.mStackIf.requestOptionsReqSendCmcCheckMsg(uaByRegId.getHandle(), str);
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void sendCapexResponse(ImsUri imsUri, long j, String str, int i, Message message, int i2, String str2) {
        IMSLog.s(LOG_TAG, i2, "sendCapexResponse: uri: " + imsUri);
        UserAgent ua = getUa("options", i2);
        if (ua == null) {
            Log.e(LOG_TAG, "sendCapexResponse: UserAgent not found.");
            return;
        }
        IMSLog.i(LOG_TAG, i2, "sendCapexResponse: handle = " + ua.getHandle());
        this.mStackIf.sendCapexResponse(ua.getHandle(), imsUri.toString(), j, str, i, message, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void sendCapexResponse(ImsUri imsUri, List<String> list, String str, int i, Message message, int i2) {
        IMSLog.s(LOG_TAG, i2, "sendCapexResponse: uri: " + imsUri);
        UserAgent ua = getUa("options", i2);
        if (ua == null) {
            Log.e(LOG_TAG, "sendCapexResponse: UserAgent not found.");
            return;
        }
        IMSLog.i(LOG_TAG, i2, "sendCapexResponse list : handle = " + ua.getHandle());
        this.mStackIf.sendCapexResponse(ua.getHandle(), imsUri.toString(), list, str, i, message);
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void sendCapexErrorResponse(ImsUri imsUri, String str, Message message, int i, int i2, String str2) {
        IMSLog.s(LOG_TAG, i, "sendCapexErrorResponse: uri: " + imsUri);
        UserAgent ua = getUa("options", i);
        if (ua == null) {
            Log.e(LOG_TAG, "sendCapexErrorResponse: UserAgent not found.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "sendCapexErrorResponse: handle = " + ua.getHandle());
        this.mStackIf.sendCapexErrorResponse(ua.getHandle(), imsUri.toString(), str, i2, str2, message);
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public int updateCmcExtCallCount(int i, int i2) {
        Log.i(LOG_TAG, "updateCmcExtCallCount: phoneId= " + i + ", callCnt= " + i2);
        this.mStackIf.updateCmcExtCallCount(i, i2);
        return 0;
    }

    private UserAgent getUa(String str, int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(str, i);
    }

    private UserAgent getUaByRegId(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentByRegId(i);
    }

    private void handleNotify(Notify notify) {
        if (notify.notifyid() == 15001) {
            Log.i(LOG_TAG, "handleNotify(), NOTIFY_OPTIONS_RECEIVED.");
            handleOptionsReceived(notify);
        } else {
            Log.w(LOG_TAG, "handleNotify(): unexpected id");
        }
    }

    private void handleOptionsReceived(Notify notify) {
        boolean z;
        int i;
        OptionsEvent.OptionsFailureReason optionsFailureReason;
        OptionsEvent optionsEvent;
        boolean z2;
        Log.i(LOG_TAG, "handleOptionsReceived()");
        if (notify.notiType() != 63) {
            Log.e(LOG_TAG, "Invalid notify");
            return;
        }
        OptionsReceivedInfo optionsReceivedInfo = (OptionsReceivedInfo) notify.noti(new OptionsReceivedInfo());
        String remoteUri = optionsReceivedInfo.remoteUri();
        boolean isResponse = optionsReceivedInfo.isResponse();
        boolean success = optionsReceivedInfo.success();
        int reason = optionsReceivedInfo.reason();
        int sessionId = (int) optionsReceivedInfo.sessionId();
        String txId = optionsReceivedInfo.txId();
        String extFeature = optionsReceivedInfo.extFeature();
        boolean isChatbotParticipant = optionsReceivedInfo.isChatbotParticipant();
        boolean isCmcCheck = optionsReceivedInfo.isCmcCheck();
        Log.i(LOG_TAG, "handleOptionsReceived: isResponse: " + isResponse + ", success: " + success + ", txId: " + txId + ", extfeature: " + extFeature + ", isCmcCheck: " + isCmcCheck);
        int tagsLength = optionsReceivedInfo.tagsLength();
        StringBuilder sb = new StringBuilder();
        sb.append("handleOptionsReceived: tagLength ");
        sb.append(tagsLength);
        Log.i(LOG_TAG, sb.toString());
        long j = 0;
        if (tagsLength != 0) {
            for (int i2 = 0; i2 < tagsLength; i2++) {
                int tags = optionsReceivedInfo.tags(i2);
                for (Map.Entry<Long, Integer> entry : mFeatureMap.entrySet()) {
                    int i3 = tagsLength;
                    boolean z3 = isCmcCheck;
                    if (entry.getValue().equals(Integer.valueOf(tags))) {
                        j |= entry.getKey().longValue();
                        Log.i(LOG_TAG, "handleOptionsReceived: key = " + entry.getKey());
                    }
                    tagsLength = i3;
                    isCmcCheck = z3;
                }
            }
            z = isCmcCheck;
            Log.i(LOG_TAG, "handleOptionsReceived: received tags " + j);
        } else {
            z = isCmcCheck;
        }
        long j2 = j;
        IRegistrationManager registrationManager = this.mImsFramework.getRegistrationManager();
        if (registrationManager.getUserAgent(sessionId) != null) {
            i = ((UserAgent) registrationManager.getUserAgent(sessionId)).getPhoneId();
        } else {
            Log.i(LOG_TAG, "handleOptionsReceived: uaHandle is invalid ");
            i = 0;
        }
        IMSLog.i(LOG_TAG, i, "handleOptionsReceived: sessionId = " + sessionId);
        UriGenerator uriGenerator = UriGeneratorFactory.getInstance().get(i, UriGenerator.URIServiceType.RCS_URI);
        if (uriGenerator == null) {
            IMSLog.e(LOG_TAG, i, "UriGenerator is null. IMS URIs won't be normalized!");
        }
        ImsUri parse = ImsUri.parse(remoteUri);
        if (uriGenerator != null) {
            parse = uriGenerator.normalize(parse);
        }
        ImsUri imsUri = parse;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < optionsReceivedInfo.pAssertedIdLength(); i4++) {
            arrayList.add(optionsReceivedInfo.pAssertedId(i4));
        }
        HashSet hashSet = new HashSet(2, 1.0f);
        Iterator it = arrayList.iterator();
        boolean z4 = false;
        while (it.hasNext()) {
            String str = (String) it.next();
            Iterator it2 = it;
            ImsUri parse2 = ImsUri.parse(str);
            if (parse2 != null) {
                if (z4 || !isChatbotParticipant || parse2.getParam("tk") == null) {
                    z2 = isChatbotParticipant;
                    z4 = z4;
                } else {
                    z2 = isChatbotParticipant;
                    z4 = parse2.getParam("tk").equals("on") ? true : z4;
                    parse2.removeParam("tk");
                }
                if (uriGenerator != null) {
                    parse2 = uriGenerator.normalize(parse2);
                }
                IMSLog.s(LOG_TAG, i, "adding " + parse2 + " to PAssertedIdSet");
                hashSet.add(parse2);
            } else {
                z2 = isChatbotParticipant;
                IMSLog.s(LOG_TAG, i, "parsing P-Asserted-Identity " + str + " returned null");
            }
            it = it2;
            isChatbotParticipant = z2;
        }
        boolean z5 = z4;
        int i5 = i;
        OptionsEvent optionsEvent2 = new OptionsEvent(success, imsUri, j2, i, isResponse, sessionId, txId, hashSet, extFeature);
        if (success) {
            optionsFailureReason = null;
        } else {
            if (reason == 7) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.INVALID_DATA;
            } else if (reason == 5) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.REQUEST_TIMED_OUT;
            } else if (reason == 6) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.AUTOMATA_PRESENT;
            } else if (reason == 1) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.USER_NOT_AVAILABLE;
            } else if (reason == 2) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.DOES_NOT_EXIST_ANYWHERE;
            } else if (reason == 4) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.USER_NOT_REACHABLE;
            } else if (reason == 3) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.USER_NOT_REGISTERED;
            } else if (reason == 8) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.FORBIDDEN_403;
            } else if (reason == 0) {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.USER_AVAILABLE_OFFLINE;
            } else {
                optionsFailureReason = OptionsEvent.OptionsFailureReason.ERROR;
            }
            IMSLog.i(LOG_TAG, i5, "handleOptionsReceived: error reason: " + optionsFailureReason);
        }
        if (optionsReceivedInfo.capsLength() != 0) {
            ArrayList arrayList2 = new ArrayList();
            for (int i6 = 0; i6 < optionsReceivedInfo.capsLength(); i6++) {
                arrayList2.add(optionsReceivedInfo.caps(i6));
            }
            optionsEvent = optionsEvent2;
            optionsEvent.setfeatureTags(arrayList2);
        } else {
            optionsEvent = optionsEvent2;
        }
        optionsEvent.setRespCode(optionsReceivedInfo.respCode());
        optionsEvent.setReasonHdr(optionsReceivedInfo.failReason());
        optionsEvent.setReason(optionsFailureReason);
        optionsEvent.setIsTokenUsed(z5);
        Log.i(LOG_TAG, "handleOptionsReceived: lastSeen " + IMSLog.checker(Integer.valueOf(optionsReceivedInfo.lastSeen())));
        if (optionsReceivedInfo.lastSeen() >= 0) {
            optionsEvent.setLastSeen(optionsReceivedInfo.lastSeen());
        }
        List<String> featureList = optionsEvent.getFeatureList();
        for (int i7 = 0; i7 < optionsReceivedInfo.capsLength(); i7++) {
            featureList.add(optionsReceivedInfo.caps(i7));
        }
        if (z) {
            Log.i(LOG_TAG, "handleOptionsReceived: recevied OPTION response msg for CMC");
            notifyCmcEvent(optionsEvent);
        } else if ("d2d.push".equals(extFeature)) {
            notifyP2pEvent(optionsEvent);
        } else {
            notifyEvent(optionsEvent);
        }
    }
}
