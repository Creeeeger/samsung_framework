package com.sec.internal.ims.core.handler.secims;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.presence.ServiceTuple;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceNotifyInfo;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.constants.ims.servicemodules.presence.PublishResponse;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.handler.PresenceHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ContactInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.NewPresenceInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.PresenceNotifyStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.PresencePublishStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.PresenceSubscribeStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.PresenceServiceStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.GeneralResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.SubscriptionFailureReason;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.SubscriptionState;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.log.IMSLog;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ResipPresenceHandler extends PresenceHandler {
    public static final int EVENT_PRESENCE_NOTIFY = 103;
    public static final int EVENT_PRESENCE_PUBLISH_RESPONSE = 101;
    public static final int EVENT_PRESENCE_SUBSCRIBE_RESPONSE = 102;
    private static final String LOG_TAG = ResipPresenceHandler.class.getSimpleName();
    private HashMap<Message, String> mCallbackMessageToSubscriptionId;
    private final IImsFramework mImsFramework;
    private Mno mMno;
    private Registrant mPresenceInfoRegistrant;
    private Registrant mPresenceNotifyInfoRegistrant;
    private Registrant mPresenceNotifyStatusRegistrant;
    protected final PhoneIdKeyMap<Integer> mPresenceServiceHandles;
    private Registrant mPublishResponseRegistrant;
    private HashMap<Message, Message> mRequestCallbackMessages;
    private StackIF mStackIf;
    protected HashMap<String, Message> mSubscriptionIdToCallbackMessage;

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForWatcherInfo(Handler handler, int i, Object obj) {
    }

    public ResipPresenceHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mMno = Mno.DEFAULT;
        this.mStackIf = null;
        this.mPresenceInfoRegistrant = null;
        this.mPublishResponseRegistrant = null;
        this.mPresenceNotifyInfoRegistrant = null;
        this.mPresenceNotifyStatusRegistrant = null;
        this.mImsFramework = iImsFramework;
        this.mRequestCallbackMessages = new HashMap<>();
        this.mSubscriptionIdToCallbackMessage = new HashMap<>();
        this.mCallbackMessageToSubscriptionId = new HashMap<>();
        this.mPresenceServiceHandles = new PhoneIdKeyMap<>(SimManagerFactory.getAllSimManagers().size(), -1);
    }

    @Override // com.sec.internal.ims.core.handler.BaseHandler
    public void init() {
        super.init();
        StackIF stackIF = StackIF.getInstance();
        this.mStackIf = stackIF;
        stackIF.registerPresenceEvent(this, 103, null);
        this.mRequestCallbackMessages.clear();
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void publish(PresenceInfo presenceInfo, Message message, int i) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "presence publish:");
        UserAgent ua = getUa(SipMsg.EVENT_PRESENCE, i);
        if (ua == null) {
            IMSLog.e(str, i, "publish: UserAgent not found.");
            return;
        }
        IMSLog.i(str, i, "presence publish: handle = " + ua.getHandle());
        this.mPresenceServiceHandles.put(i, Integer.valueOf(ua.getHandle()));
        this.mMno = SimUtil.getSimMno(i);
        Message obtainMessage = obtainMessage(101);
        this.mRequestCallbackMessages.put(obtainMessage, message);
        ua.requestPublish(presenceInfo, obtainMessage);
    }

    private UserAgent getUa(String str, int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(str, i);
    }

    private UserAgent getUa(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(i);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 101:
                Log.i(LOG_TAG, "handleMessage(), EVENT_PRESENCE_PUBLISH_RESPONSE.");
                handlePublishResponse(message);
                break;
            case 102:
                Log.i(LOG_TAG, "handleMessage(), EVENT_PRESENCE_SUBSCRIBE_RESPONSE.");
                handleSubscribeResponse(message);
                break;
            case 103:
                Log.i(LOG_TAG, "handleMessage(), EVENT_PRESENCE_NOTIFY.");
                handleNotify(message);
                break;
        }
    }

    private void handlePublishResponse(Message message) {
        PresenceResponse presenceResponse = getPresenceResponse(message);
        String str = LOG_TAG;
        Log.i(str, "handlePublishResponse() isSuccess = " + presenceResponse.isSuccess());
        if (!presenceResponse.isSuccess()) {
            Log.i(str, "handlePublishResponse(): ");
            callbackPresenceResponse(message, presenceResponse);
        } else {
            this.mRequestCallbackMessages.remove(message);
        }
    }

    private void handleSubscribeResponse(Message message) {
        PresenceResponse presenceResponse = getPresenceResponse(message);
        String str = LOG_TAG;
        Log.i(str, "handleSubscribeResponse() isSuccess = " + presenceResponse.isSuccess());
        Message message2 = this.mRequestCallbackMessages.get(message);
        if (!presenceResponse.isSuccess()) {
            Log.i(str, "handleSubscribeResponse(): ");
            this.mSubscriptionIdToCallbackMessage.remove(this.mCallbackMessageToSubscriptionId.get(message2));
            this.mCallbackMessageToSubscriptionId.remove(message2);
            callbackPresenceResponse(message, presenceResponse);
            return;
        }
        this.mCallbackMessageToSubscriptionId.remove(message2);
        this.mRequestCallbackMessages.remove(message);
    }

    private void callbackPresenceResponse(Message message, PresenceResponse presenceResponse) {
        Message message2 = this.mRequestCallbackMessages.get(message);
        this.mRequestCallbackMessages.remove(message);
        if (message2 != null) {
            Log.i(LOG_TAG, "callbackPresenceResponse() : callback found");
            AsyncResult.forMessage(message2, presenceResponse, null);
            message2.sendToTarget();
            return;
        }
        Log.i(LOG_TAG, "callbackPresenceResponse() : cannot find callback");
    }

    private PresenceResponse getPresenceResponse(Message message) {
        GeneralResponse generalResponse = (GeneralResponse) ((AsyncResult) message.obj).result;
        UserAgent ua = getUa((int) generalResponse.handle());
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (ua != null) {
            activeDataPhoneId = ua.getPhoneId();
        }
        return new PresenceResponse(generalResponse.result() == 0, (int) generalResponse.sipError(), generalResponse.errorStr(), 0, activeDataPhoneId);
    }

    private void handleNotify(Message message) {
        Notify notify = (Notify) ((AsyncResult) message.obj).result;
        switch (notify.notifyid()) {
            case Id.NOTIFY_PRESENCE_SUBSCRIBE /* 13001 */:
                Log.i(LOG_TAG, "handleNotify(), EVENT_PRESENCE_SUBSCRIBE.");
                handleNewPresenceInfo(notify);
                break;
            case Id.NOTIFY_PRESENCE_PUBLISH_STATUS /* 13002 */:
                Log.i(LOG_TAG, "handleNotify(), EVENT_PUBLISH_STATUS.");
                handlePublishStatusUpdate(notify);
                break;
            case Id.NOTIFY_PRESENCE_UNPUBLISH_STATUS /* 13003 */:
                Log.i(LOG_TAG, "handleNotify(), NOTIFY_PRESENCE_UNPUBLISH_STATUS, just ignore...");
                break;
            case Id.NOTIFY_PRESENCE_SUBSCRIBE_STATUS /* 13004 */:
                Log.i(LOG_TAG, "handleNotify(), EVENT_SUBSCRIBE_STATUS.");
                handleSubscribeStatusUpdate(notify);
                break;
            case Id.NOTIFY_PRESENCE_NOTIFY_STATUS /* 13005 */:
                Log.i(LOG_TAG, "handleNotify(), EVENT_NOTIFY_STATUS.");
                handleNotifyStatusUpdate(notify);
                break;
            default:
                Log.w(LOG_TAG, "handleNotify(): unexpected id");
                break;
        }
    }

    private void handlePublishStatusUpdate(Notify notify) {
        PresencePublishStatus presencePublishStatus = (PresencePublishStatus) notify.noti(new PresencePublishStatus());
        UserAgent ua = getUa((int) presencePublishStatus.handle());
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (ua != null) {
            activeDataPhoneId = ua.getPhoneId();
        }
        PublishResponse publishResponse = new PublishResponse(presencePublishStatus.isSuccess(), (int) presencePublishStatus.sipErrorCode(), presencePublishStatus.sipErrorPhrase(), (int) presencePublishStatus.minExpires(), presencePublishStatus.etag(), presencePublishStatus.remoteExpires(), presencePublishStatus.isRefresh(), presencePublishStatus.retryAfter(), activeDataPhoneId);
        Log.i(LOG_TAG, "handlePublishStatusUpdate: " + publishResponse);
        this.mPublishResponseRegistrant.notifyResult(publishResponse);
    }

    private void handleSubscribeStatusUpdate(Notify notify) {
        PresenceSubscribeStatus presenceSubscribeStatus = (PresenceSubscribeStatus) notify.noti(new PresenceSubscribeStatus());
        UserAgent ua = getUa((int) presenceSubscribeStatus.handle());
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (ua != null) {
            activeDataPhoneId = ua.getPhoneId();
        }
        PresenceResponse presenceResponse = new PresenceResponse(presenceSubscribeStatus.isSuccess(), (int) presenceSubscribeStatus.sipErrorCode(), presenceSubscribeStatus.sipErrorPhrase(), (int) presenceSubscribeStatus.minExpires(), activeDataPhoneId);
        String str = LOG_TAG;
        IMSLog.i(str, activeDataPhoneId, "handleSubscribeStatusUpdate: " + presenceResponse);
        String subscriptionId = presenceSubscribeStatus.subscriptionId();
        Message message = this.mSubscriptionIdToCallbackMessage.get(subscriptionId);
        this.mSubscriptionIdToCallbackMessage.remove(subscriptionId);
        if (message != null) {
            AsyncResult.forMessage(message, presenceResponse, null);
            message.sendToTarget();
        } else {
            IMSLog.i(str, activeDataPhoneId, "handleSubscribeStatusUpdate: no call back");
        }
    }

    private void handleNotifyStatusUpdate(Notify notify) {
        PresenceNotifyStatus presenceNotifyStatus = (PresenceNotifyStatus) notify.noti(new PresenceNotifyStatus());
        UserAgent ua = getUa((int) presenceNotifyStatus.handle());
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (ua != null) {
            activeDataPhoneId = ua.getPhoneId();
        }
        PresenceResponse presenceResponse = new PresenceResponse(presenceNotifyStatus.isSuccess(), presenceNotifyStatus.subscribeTerminatedReason(), presenceNotifyStatus.subscriptionId(), activeDataPhoneId);
        IMSLog.i(LOG_TAG, activeDataPhoneId, "handleNotifyStatus: " + presenceResponse);
        this.mPresenceNotifyStatusRegistrant.notifyResult(presenceResponse);
    }

    private void handleNewPresenceInfo(Notify notify) {
        int i;
        int i2;
        NewPresenceInfo newPresenceInfo = (NewPresenceInfo) notify.noti(new NewPresenceInfo());
        UserAgent ua = getUa((int) newPresenceInfo.handle());
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (ua != null) {
            activeDataPhoneId = ua.getPhoneId();
        }
        PresenceNotifyInfo presenceNotifyInfo = new PresenceNotifyInfo(activeDataPhoneId, newPresenceInfo.subscriptionId());
        int contactInfoLength = newPresenceInfo.contactInfoLength();
        String str = LOG_TAG;
        IMSLog.i(str, activeDataPhoneId, "handleNewPresenceInfo(): subscriptionID = " + newPresenceInfo.subscriptionId());
        IMSLog.i(str, activeDataPhoneId, "handleNewPresenceInfo(): contactinfo size = " + contactInfoLength);
        int i3 = 0;
        while (i3 < contactInfoLength) {
            ContactInfo contactInfo = newPresenceInfo.contactInfo(i3);
            if (contactInfo == null) {
                IMSLog.i(LOG_TAG, activeDataPhoneId, "contact info is null for index: " + i3);
                i = i3;
            } else {
                int serviceStatusLength = contactInfo.serviceStatusLength();
                PresenceInfo presenceInfo = new PresenceInfo(activeDataPhoneId);
                String uri = contactInfo.uri();
                String entityUri = contactInfo.entityUri();
                String str2 = LOG_TAG;
                IMSLog.s(str2, "handleNewPresenceInfo(): entity uri = " + entityUri + ", contact uri = " + uri);
                presenceInfo.setUri(uri);
                if (!TextUtils.isEmpty(entityUri) && !entityUri.equals(uri)) {
                    IMSLog.i(str2, activeDataPhoneId, "handleNewPresenceInfo: set TelUri from entity");
                    presenceInfo.setTelUri(entityUri);
                } else {
                    presenceInfo.setTelUri(uri);
                }
                presenceInfo.setPhoneId(activeDataPhoneId);
                presenceInfo.setSubscriptionId(newPresenceInfo.subscriptionId());
                int i4 = 0;
                while (i4 < serviceStatusLength) {
                    PresenceServiceStatus serviceStatus = contactInfo.serviceStatus(i4);
                    if (serviceStatus != null) {
                        int mediaCapabilitiesLength = serviceStatus.mediaCapabilitiesLength();
                        String[] strArr = new String[mediaCapabilitiesLength];
                        for (int i5 = 0; i5 < mediaCapabilitiesLength; i5++) {
                            strArr[i5] = serviceStatus.mediaCapabilities(i5);
                        }
                        ServiceTuple serviceTuple = ServiceTuple.getServiceTuple(serviceStatus.serviceId(), serviceStatus.version(), strArr);
                        if (serviceTuple == null) {
                            i2 = i3;
                            serviceTuple = new ServiceTuple(Capabilities.FEATURE_OFFLINE_RCS_USER, serviceStatus.serviceId(), serviceStatus.version(), strArr);
                        } else {
                            i2 = i3;
                        }
                        if (serviceStatus.status() != null && !"".equals(serviceStatus.status())) {
                            serviceTuple.basicStatus = serviceStatus.status();
                        } else {
                            IMSLog.i(LOG_TAG, activeDataPhoneId, "handleNewPresenceInfo(): status is null");
                        }
                        presenceInfo.addService(serviceTuple);
                        IMSLog.i(LOG_TAG, activeDataPhoneId, "handleNewPresenceInfo(): " + serviceTuple.toString());
                    } else {
                        i2 = i3;
                    }
                    i4++;
                    i3 = i2;
                }
                i = i3;
                if (contactInfo.rawPidf() != null) {
                    presenceInfo.setPidf(contactInfo.rawPidf());
                    presenceNotifyInfo.addPidfXmls(contactInfo.rawPidf());
                } else {
                    IMSLog.e(LOG_TAG, activeDataPhoneId, "handleNewPresenceInfo(): empty pidf");
                }
                String str3 = LOG_TAG;
                IMSLog.i(str3, activeDataPhoneId, "handleNewPresenceInfo: state - " + contactInfo.subscriptionState() + ", state reason - " + contactInfo.subscriptionFailureReason());
                if (contactInfo.subscriptionState() != null && contactInfo.subscriptionState().toUpperCase().equals(SubscriptionState.name(4))) {
                    if (contactInfo.subscriptionFailureReason() != null) {
                        String upperCase = contactInfo.subscriptionFailureReason().toUpperCase();
                        presenceNotifyInfo.addUriTerminatedReason(Uri.parse(uri), upperCase);
                        if (upperCase.equals(SubscriptionFailureReason.name(6))) {
                            if (this.mMno == Mno.VZW) {
                                presenceInfo.addService(new ServiceTuple(Capabilities.FEATURE_NOT_UPDATED, (String) null, (String) null));
                            } else {
                                presenceInfo.addService(new ServiceTuple(Capabilities.FEATURE_NON_RCS_USER, (String) null, (String) null));
                            }
                        } else if (upperCase.equals(SubscriptionFailureReason.name(3))) {
                            Mno mno = this.mMno;
                            if (mno == Mno.VZW) {
                                presenceInfo.addService(new ServiceTuple(Capabilities.FEATURE_NOT_UPDATED, (String) null, (String) null));
                            } else {
                                Mno[] mnoArr = new Mno[2];
                                try {
                                    mnoArr[0] = Mno.TMOUS;
                                    mnoArr[1] = Mno.BELL;
                                    if (mno.isOneOf(mnoArr)) {
                                        presenceInfo.addService(new ServiceTuple(Capabilities.FEATURE_NON_RCS_USER, (String) null, (String) null));
                                    } else {
                                        try {
                                            presenceInfo.setFetchState(false);
                                        } catch (IllegalArgumentException unused) {
                                            IMSLog.e(LOG_TAG, activeDataPhoneId, "State or Reason is not understandable.");
                                            this.mPresenceInfoRegistrant.notifyResult(presenceInfo);
                                            i3 = i + 1;
                                        }
                                    }
                                } catch (IllegalArgumentException unused2) {
                                }
                            }
                        } else {
                            if (!upperCase.equals(SubscriptionFailureReason.name(1)) && !upperCase.equals(SubscriptionFailureReason.name(5)) && !upperCase.equals(SubscriptionFailureReason.name(2))) {
                                IMSLog.i(str3, activeDataPhoneId, "handleNewPresenceInfo: state failure reason - " + contactInfo.subscriptionFailureReason());
                            }
                            try {
                                presenceInfo.setFetchState(false);
                            } catch (IllegalArgumentException unused3) {
                                IMSLog.e(LOG_TAG, activeDataPhoneId, "State or Reason is not understandable.");
                                this.mPresenceInfoRegistrant.notifyResult(presenceInfo);
                                i3 = i + 1;
                            }
                        }
                    } else {
                        IMSLog.i(str3, activeDataPhoneId, "handleNewPresenceInfo: no reason");
                        if (this.mMno.isKor()) {
                            presenceInfo.addService(new ServiceTuple(Capabilities.FEATURE_NOT_UPDATED, (String) null, (String) null));
                        }
                    }
                    this.mPresenceInfoRegistrant.notifyResult(presenceInfo);
                }
                this.mPresenceInfoRegistrant.notifyResult(presenceInfo);
            }
            i3 = i + 1;
        }
        presenceNotifyInfo.setSubscriptionState(newPresenceInfo.subscriptionState());
        presenceNotifyInfo.setSubscriptionStateReason(newPresenceInfo.subscriptionStateReason());
        this.mPresenceNotifyInfoRegistrant.notifyResult(presenceNotifyInfo);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPresenceInfo(Handler handler, int i, Object obj) {
        this.mPresenceInfoRegistrant = new Registrant(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPublishFailure(Handler handler, int i, Object obj) {
        this.mPublishResponseRegistrant = new Registrant(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPresenceNotifyInfo(Handler handler, int i, Object obj) {
        this.mPresenceNotifyInfoRegistrant = new Registrant(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPresenceNotifyStatus(Handler handler, int i, Object obj) {
        this.mPresenceNotifyStatusRegistrant = new Registrant(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void subscribeList(List<ImsUri> list, boolean z, Message message, String str, boolean z2, int i, int i2) {
        UserAgent ua = getUa(SipMsg.EVENT_PRESENCE, i2);
        if (ua == null) {
            IMSLog.e(LOG_TAG, i2, "subscribeList: UserAgent not found");
            return;
        }
        IMSLog.i(LOG_TAG, i2, "subscribeList: subscription id =" + str);
        Message obtainMessage = obtainMessage(102);
        this.mRequestCallbackMessages.put(obtainMessage, message);
        this.mSubscriptionIdToCallbackMessage.put(str, message);
        this.mCallbackMessageToSubscriptionId.put(message, str);
        this.mStackIf.requestSubscribeList(ua.getHandle(), list, z, str, z2, i, obtainMessage);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void subscribe(ImsUri imsUri, boolean z, Message message, String str, int i) {
        UserAgent ua = getUa(SipMsg.EVENT_PRESENCE, i);
        if (ua == null) {
            IMSLog.e(LOG_TAG, i, "subscribe: UserAgent not found.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "subscribe: subscription id =" + str);
        Message obtainMessage = obtainMessage(102);
        this.mRequestCallbackMessages.put(obtainMessage, message);
        this.mSubscriptionIdToCallbackMessage.put(str, message);
        this.mCallbackMessageToSubscriptionId.put(message, str);
        this.mStackIf.requestSubscribe(ua.getHandle(), imsUri, z, str, obtainMessage);
    }

    @Override // com.sec.internal.ims.core.handler.PresenceHandler, com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void unpublish(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "presence unpublish:");
        UserAgent ua = getUa(this.mPresenceServiceHandles.get(i).intValue());
        if (ua == null) {
            IMSLog.e(str, i, "unpublish: UserAgent not found. UserAgent already was de-registerd");
            this.mPresenceServiceHandles.put(i, -1);
            return;
        }
        IMSLog.i(str, i, "presence unpublish: handle = " + ua.getHandle());
        ua.requestUnpublish();
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void updateServiceVersion(int i, HashMap<String, String> hashMap) {
        Log.i(LOG_TAG, "presence updateServiceVersion:");
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            Log.i(LOG_TAG + "[" + i + "]", entry.getKey() + " : " + entry.getValue());
        }
        this.mStackIf.updateServiceVersion(i, hashMap);
    }
}
