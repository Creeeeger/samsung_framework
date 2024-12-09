package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.gsma.services.rcs.IRcsServiceRegistrationListener;
import com.gsma.services.rcs.RcsServiceRegistration;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.extension.IMultimediaMessagingSession;
import com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener;
import com.gsma.services.rcs.extension.IMultimediaSessionService;
import com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration;
import com.gsma.services.rcs.extension.IMultimediaStreamingSession;
import com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener;
import com.gsma.services.rcs.extension.MultimediaSession;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.helper.os.TelephonyUtilsWrapper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.options.Intents;
import com.sec.internal.ims.servicemodules.session.IMessagingSessionListener;
import com.sec.internal.ims.servicemodules.session.SessionModule;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.MultimediaMessagingSessionEventBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.MultimediaStreamingSessionEventBroadcaster;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MultimediaSessionServiceImpl extends IMultimediaSessionService.Stub implements IMessagingSessionListener, IRegistrationStatusBroadcaster {
    private static final String LOG_TAG = MultimediaSessionServiceImpl.class.getSimpleName();
    private final ISessionModule mSessionModule;
    private UriGenerator mUriGenerator;
    private final Object lock = new Object();
    private final Map<String, IMultimediaMessagingSession> mMultimediaMessagingCache = new HashMap();
    private final MultimediaMessagingSessionEventBroadcaster mMultimediaMessagingSessionEventBroadcaster = new MultimediaMessagingSessionEventBroadcaster();
    private final Map<String, IMultimediaStreamingSession> mMultimediaStreamingCache = new HashMap();
    private final MultimediaStreamingSessionEventBroadcaster mMultimediaStreamingSessionEventBroadcaster = new MultimediaStreamingSessionEventBroadcaster();
    private final Map<String, Boolean> mSessionEstablishCache = new HashMap();
    private RemoteCallbackList<IRcsServiceRegistrationListener> serviceListeners = new RemoteCallbackList<>();
    private final Context mContext = ImsRegistry.getContext();

    public MultimediaSessionServiceImpl(ISessionModule iSessionModule) {
        this.mSessionModule = iSessionModule;
        iSessionModule.registerMessagingSessionListener(this);
        this.mUriGenerator = UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI);
    }

    public void addEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) {
        synchronized (this.lock) {
            this.serviceListeners.register(iRcsServiceRegistrationListener);
        }
    }

    public void addEventListener2(IMultimediaMessagingSessionListener iMultimediaMessagingSessionListener) {
        synchronized (this.lock) {
            this.mMultimediaMessagingSessionEventBroadcaster.addMultimediaMessagingEventListener(iMultimediaMessagingSessionListener);
        }
    }

    public void addEventListener3(IMultimediaStreamingSessionListener iMultimediaStreamingSessionListener) {
        synchronized (this.lock) {
            this.mMultimediaStreamingSessionEventBroadcaster.addMultimediaStreamingEventListener(iMultimediaStreamingSessionListener);
        }
    }

    private void addMultimediaMessaging(MultimediaMessagingSessionImpl multimediaMessagingSessionImpl) {
        this.mMultimediaMessagingCache.put(multimediaMessagingSessionImpl.getSessionId(), multimediaMessagingSessionImpl);
        this.mSessionEstablishCache.put(multimediaMessagingSessionImpl.getSessionId(), Boolean.FALSE);
    }

    public IMultimediaSessionServiceConfiguration getConfiguration() {
        return MultimediaSessionServiceConfigurationImpl.getInstance(this.mSessionModule);
    }

    public IMultimediaMessagingSession getMessagingSession(String str) throws ServerApiException {
        IMultimediaMessagingSession iMultimediaMessagingSession = this.mMultimediaMessagingCache.get(str);
        if (iMultimediaMessagingSession != null) {
            return iMultimediaMessagingSession;
        }
        ImSession messagingSession = this.mSessionModule.getMessagingSession(str);
        if (messagingSession == null) {
            Log.e(LOG_TAG, "Session not exists.");
            return null;
        }
        MultimediaMessagingSessionImpl multimediaMessagingSessionImpl = new MultimediaMessagingSessionImpl(this.mSessionModule, messagingSession);
        addMultimediaMessaging(multimediaMessagingSessionImpl);
        return multimediaMessagingSessionImpl;
    }

    public List<IBinder> getMessagingSessions(String str) throws ServerApiException {
        try {
            ArrayList arrayList = new ArrayList();
            for (IMultimediaMessagingSession iMultimediaMessagingSession : this.mMultimediaMessagingCache.values()) {
                if (iMultimediaMessagingSession.getServiceId().contains(str)) {
                    arrayList.add(iMultimediaMessagingSession.asBinder());
                }
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new ServerApiException(e.getMessage());
        }
    }

    public IMultimediaStreamingSession getStreamingSession(String str) throws ServerApiException {
        throw new ServerApiException("Unsupported operation");
    }

    public List<IBinder> getStreamingSessions(String str) throws ServerApiException {
        try {
            ArrayList arrayList = new ArrayList();
            for (IMultimediaStreamingSession iMultimediaStreamingSession : this.mMultimediaStreamingCache.values()) {
                if (iMultimediaStreamingSession.getServiceId().contains(str)) {
                    arrayList.add(iMultimediaStreamingSession.asBinder());
                }
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new ServerApiException(e.getMessage());
        }
    }

    public IMultimediaMessagingSession initiateMessagingSession(String str, ContactId contactId, String[] strArr, String[] strArr2) throws ServerApiException {
        Log.d(LOG_TAG, "initiateMessagingSession: " + str + " ContactId = " + IMSLog.checker(contactId));
        ImsRegistration imsRegistration = this.mSessionModule.getImsRegistration();
        if (imsRegistration == null) {
            return null;
        }
        UriGenerator uriGenerator = UriGeneratorFactory.getInstance().get(imsRegistration.getPreferredImpu().getUri(), UriGenerator.URIServiceType.RCS_URI);
        this.mUriGenerator = uriGenerator;
        ImsUri normalizedUri = uriGenerator.getNormalizedUri(contactId.toString(), true);
        if (normalizedUri == null || TextUtils.isEmpty(str)) {
            return null;
        }
        MultimediaMessagingSessionImpl multimediaMessagingSessionImpl = new MultimediaMessagingSessionImpl(this.mSessionModule, this.mSessionModule.initiateMessagingSession(str, normalizedUri, strArr, strArr2));
        addMultimediaMessaging(multimediaMessagingSessionImpl);
        return multimediaMessagingSessionImpl;
    }

    public IMultimediaStreamingSession initiateStreamingSession(String str, ContactId contactId) throws ServerApiException {
        throw new ServerApiException("Unsupported operation");
    }

    public boolean isServiceRegistered() {
        return this.mSessionModule.isServiceRegistered();
    }

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster
    public void notifyRegistrationEvent(boolean z, RcsServiceRegistration.ReasonCode reasonCode) {
        synchronized (this.lock) {
            int beginBroadcast = this.serviceListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                if (z) {
                    try {
                        this.serviceListeners.getBroadcastItem(i).onServiceRegistered();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    } catch (NullPointerException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    this.serviceListeners.getBroadcastItem(i).onServiceUnregistered(reasonCode);
                }
            }
            this.serviceListeners.finishBroadcast();
        }
    }

    public void removeEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) {
        synchronized (this.lock) {
            this.serviceListeners.unregister(iRcsServiceRegistrationListener);
        }
    }

    public void removeEventListener2(IMultimediaMessagingSessionListener iMultimediaMessagingSessionListener) {
        synchronized (this.lock) {
            this.mMultimediaMessagingSessionEventBroadcaster.removeMultimediaMessagingEventListener(iMultimediaMessagingSessionListener);
        }
    }

    public void removeEventListener3(IMultimediaStreamingSessionListener iMultimediaStreamingSessionListener) {
        synchronized (this.lock) {
            this.mMultimediaStreamingSessionEventBroadcaster.removeMultimediaStreamingEventListener(iMultimediaStreamingSessionListener);
        }
    }

    public void setInactivityTimeout(long j) throws ServerApiException {
        try {
            SessionModule.setInactivityTimeout(j);
        } catch (Exception e) {
            throw new ServerApiException(e.getMessage());
        }
    }

    public void sendInstantMultimediaMessage(String str, ContactId contactId, byte[] bArr, String str2) throws ServerApiException {
        Log.d(LOG_TAG, "sendInstantMultimediaMessage,serviceId=" + str + "contactId=" + IMSLog.checker(contactId));
        if (contactId == null) {
            return;
        }
        try {
            this.mSessionModule.sendInstantMultimediaMessage(str, UriUtil.parseNumber(contactId.toString()), bArr, str2);
        } catch (Exception e) {
            throw new ServerApiException(e.getMessage());
        }
    }

    void removeMultimediaMessaging(String str) {
        this.mMultimediaMessagingCache.remove(str);
        this.mSessionEstablishCache.remove(str);
    }

    @Override // com.sec.internal.ims.servicemodules.session.IMessagingSessionListener
    public void onIncomingSessionInvited(ImSession imSession, String str) {
        Log.d(LOG_TAG, "onIncomingSessionInvited: " + imSession.getChatId());
        Intent intent = new Intent(SessionModule.INTENT_FILTER_MESSAGE);
        intent.addCategory(Intents.INTENT_CATEGORY);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.addFlags(LogClass.SIM_EVENT);
        intent.setType(str);
        intent.putExtra("sessionId", imSession.getChatId());
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mSessionModule.getPhoneIdByIMSI(imSession.getOwnImsi())));
        if (subscriptionUserHandle != null) {
            IntentUtil.sendBroadcast(this.mContext, intent, subscriptionUserHandle, "com.gsma.services.permission.RCS");
        } else {
            IntentUtil.sendBroadcast(this.mContext, intent, ContextExt.CURRENT_OR_SELF, "com.gsma.services.permission.RCS");
        }
    }

    @Override // com.sec.internal.ims.servicemodules.session.IMessagingSessionListener
    public void onStateChanged(ImSession imSession, ImSession.SessionState sessionState) {
        Log.d(LOG_TAG, "onStateChanged: id=" + imSession.getChatId() + ", state=" + sessionState);
        ImsUri remoteUri = imSession.getRemoteUri();
        ImSessionClosedEvent imSessionClosedEvent = imSession.getImSessionClosedEvent();
        boolean isTimerExpired = imSession.isTimerExpired();
        MultimediaSession.ReasonCode reasonCode = MultimediaSession.ReasonCode.UNSPECIFIED;
        if (remoteUri != null) {
            if (sessionState == ImSession.SessionState.ESTABLISHED) {
                this.mSessionEstablishCache.put(imSession.getChatId(), Boolean.TRUE);
            }
            if (imSessionClosedEvent != null) {
                reasonCode = translateError(imSessionClosedEvent.mResult.getImError(), sessionState);
            }
            ImSession.SessionState sessionState2 = ImSession.SessionState.CLOSED;
            if (sessionState == sessionState2 && isTimerExpired) {
                reasonCode = MultimediaSession.ReasonCode.ABORTED_BY_INACTIVITY;
            }
            if (sessionState == sessionState2 || sessionState == ImSession.SessionState.FAILED_MEDIA) {
                removeMultimediaMessaging(imSession.getChatId());
            }
            this.mMultimediaMessagingSessionEventBroadcaster.broadcastStateChanged(new ContactId(remoteUri.getMsisdn()), imSession.getChatId(), translateState(sessionState, imSession.getDirection()), reasonCode);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.session.IMessagingSessionListener
    public void onMessageReceived(ImSession imSession, byte[] bArr, String str) {
        ImsUri remoteUri = imSession.getRemoteUri();
        this.mMultimediaMessagingSessionEventBroadcaster.broadcastMessageReceived(remoteUri != null ? new ContactId(remoteUri.getMsisdn()) : null, imSession.getChatId(), bArr, str);
    }

    @Override // com.sec.internal.ims.servicemodules.session.IMessagingSessionListener
    public void onMessagesFlushed(ImSession imSession) {
        Log.d(LOG_TAG, "onMessagesFlushed: " + imSession.getChatId());
        this.mMultimediaMessagingSessionEventBroadcaster.broadcastMessagesFlushed(new ContactId(imSession.getRemoteUri().getMsisdn()), imSession.getChatId());
    }

    private static MultimediaSession.ReasonCode translateError(ImError imError, ImSession.SessionState sessionState) {
        if (sessionState == ImSession.SessionState.FAILED_MEDIA) {
            return MultimediaSession.ReasonCode.FAILED_MEDIA;
        }
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()]) {
            case 1:
                return MultimediaSession.ReasonCode.REJECT_REASON_BUSY;
            case 2:
                return MultimediaSession.ReasonCode.REJECT_REASON_DECLINE;
            case 3:
                return MultimediaSession.ReasonCode.REJECT_REASON_TEMP_UNAVAILABLE;
            case 4:
                return MultimediaSession.ReasonCode.REJECT_REASON_BAD_REQUEST;
            case 5:
                return MultimediaSession.ReasonCode.REJECT_REASON_REQ_TERMINATED;
            case 6:
                return MultimediaSession.ReasonCode.REJECT_REASON_SERVICE_UNAVAILABLE;
            case 7:
                return MultimediaSession.ReasonCode.REJECT_REASON_USER_CALL_BLOCK;
            case 8:
                return MultimediaSession.ReasonCode.REJECTED_BY_TIMEOUT;
            case 9:
                return MultimediaSession.ReasonCode.REJECT_REASON_TEMP_NOT_ACCEPTABLE;
            case 10:
                return MultimediaSession.ReasonCode.REJECT_REASON_REQUEST_PENDING;
            case 11:
                return MultimediaSession.ReasonCode.REJECT_REASON_REMOTE_USER_INVALID;
            case 12:
                return MultimediaSession.ReasonCode.REJECT_REASON_NOT_IMPLEMENTED;
            case 13:
                return MultimediaSession.ReasonCode.REJECT_REASON_SERVER_TIMEOUT;
            default:
                return MultimediaSession.ReasonCode.UNSPECIFIED;
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.api.MultimediaSessionServiceImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState;

        static {
            int[] iArr = new int[ImSession.SessionState.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState = iArr;
            try {
                iArr[ImSession.SessionState.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.ESTABLISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.CLOSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.FAILED_MEDIA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr2;
            try {
                iArr2[ImError.BUSY_HERE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REMOTE_PARTY_DECLINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REMOTE_TEMPORARILY_UNAVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.INVALID_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.CONNECTION_RELEASED.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SERVICE_UNAVAILABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.FORBIDDEN_NO_WARNING_HEADER.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SESSION_TIMED_OUT.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NOT_ACCEPTABLE_HERE.ordinal()] = 9;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REQUEST_PENDING.ordinal()] = 10;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REMOTE_USER_INVALID.ordinal()] = 11;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NOT_IMPLEMENTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SERVER_TIMEOUT.ordinal()] = 13;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    private static MultimediaSession.State translateState(ImSession.SessionState sessionState, ImDirection imDirection) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[sessionState.ordinal()]) {
            case 1:
                if (imDirection == ImDirection.OUTGOING) {
                    return MultimediaSession.State.INITIATING;
                }
                return MultimediaSession.State.INVITED;
            case 2:
                if (imDirection == ImDirection.OUTGOING) {
                    return MultimediaSession.State.RINGING;
                }
                return MultimediaSession.State.ACCEPTING;
            case 3:
                return MultimediaSession.State.STARTED;
            case 4:
                return MultimediaSession.State.ABORTED;
            case 5:
                return MultimediaSession.State.ABORTED;
            case 6:
                return MultimediaSession.State.ABORTED;
            default:
                return MultimediaSession.State.FAILED;
        }
    }
}
