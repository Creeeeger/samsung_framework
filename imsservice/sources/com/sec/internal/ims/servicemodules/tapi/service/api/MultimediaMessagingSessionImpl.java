package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.os.Binder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.gsma.services.rcs.RcsService;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.extension.IMultimediaMessagingSession;
import com.gsma.services.rcs.extension.MultimediaSession;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule;

/* loaded from: classes.dex */
public class MultimediaMessagingSessionImpl extends IMultimediaMessagingSession.Stub {
    private static final String ENRICHED_CALL_PREFIX = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.";
    static final String LOG_TAG = "MMessagingSessionImpl";
    private final ImSession mSession;
    private final ISessionModule mSessionModule;

    public void flushMessages() throws RemoteException {
    }

    public MultimediaMessagingSessionImpl(ISessionModule iSessionModule, ImSession imSession) {
        this.mSessionModule = iSessionModule;
        this.mSession = imSession;
    }

    public void abortSession() throws ServerApiException {
        Log.d(LOG_TAG, "mypid: " + Process.myPid() + " calling pid:" + Binder.getCallingPid() + " calling uid:" + Binder.getCallingUid() + " called abortSession");
        this.mSessionModule.abortSession(this.mSession.getChatId());
    }

    public void acceptInvitation() throws ServerApiException {
        Log.d(LOG_TAG, "mypid: " + Process.myPid() + " calling pid:" + Binder.getCallingPid() + " calling uid:" + Binder.getCallingUid() + " called acceptInvitation");
        this.mSession.acceptSession(false);
    }

    public RcsService.Direction getDirection() {
        if (this.mSession.getDirection() == ImDirection.OUTGOING) {
            return RcsService.Direction.OUTGOING;
        }
        return RcsService.Direction.INCOMING;
    }

    public MultimediaSession.ReasonCode getReasonCode() {
        MultimediaSession.ReasonCode reasonCode = MultimediaSession.ReasonCode.UNSPECIFIED;
        ImSessionClosedEvent imSessionClosedEvent = this.mSession.getImSessionClosedEvent();
        if (imSessionClosedEvent == null) {
            return reasonCode;
        }
        MultimediaSession.ReasonCode translateErrorCode = translateErrorCode(imSessionClosedEvent.mResult.getImError());
        Log.d(LOG_TAG, "getReasonCode, event.mReason=" + imSessionClosedEvent.mResult.getImError() + " reasonCode=" + translateErrorCode);
        return translateErrorCode;
    }

    public ContactId getRemoteContact() {
        ImsUri remoteUri = this.mSession.getRemoteUri();
        if (remoteUri != null) {
            return new ContactId(remoteUri.getMsisdn());
        }
        return null;
    }

    public String getServiceId() {
        return translateServiceId(this.mSession.getServiceId());
    }

    private static String translateServiceId(String str) {
        Preconditions.checkNotNull(str);
        return str.startsWith(ENRICHED_CALL_PREFIX) ? str.substring(str.lastIndexOf("gsma")) : str;
    }

    public String getSessionId() {
        return this.mSession.getChatId();
    }

    public MultimediaSession.State getState() {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[this.mSession.getDetailedState().ordinal()];
        if (i == 1) {
            if (this.mSession.getDirection() == ImDirection.OUTGOING) {
                return MultimediaSession.State.INITIATING;
            }
            return MultimediaSession.State.INVITED;
        }
        if (i == 2) {
            if (this.mSession.getDirection() == ImDirection.OUTGOING) {
                return MultimediaSession.State.INITIATING;
            }
            return MultimediaSession.State.ACCEPTING;
        }
        if (i == 3) {
            return MultimediaSession.State.STARTED;
        }
        if (i == 4) {
            return MultimediaSession.State.ABORTED;
        }
        if (i == 5) {
            return MultimediaSession.State.ABORTED;
        }
        return MultimediaSession.State.FAILED;
    }

    public void rejectInvitation() throws ServerApiException {
        Log.d(LOG_TAG, "mypid: " + Process.myPid() + " calling pid:" + Binder.getCallingPid() + " calling uid:" + Binder.getCallingUid() + " called rejectInvitation");
        this.mSession.rejectSession();
    }

    public void rejectInvitation2(MultimediaSession.ReasonCode reasonCode) throws ServerApiException {
        Log.d(LOG_TAG, "mypid: " + Process.myPid() + " calling pid:" + Binder.getCallingPid() + " calling uid:" + Binder.getCallingUid() + " called rejectInvitation2 " + reasonCode);
        this.mSession.rejectSession();
    }

    public void sendMessage(byte[] bArr, String str) throws ServerApiException {
        Log.d(LOG_TAG, "contentType: " + str);
        MultimediaSession.State state = getState();
        if (state != MultimediaSession.State.INITIATING && state != MultimediaSession.State.ACCEPTING && state != MultimediaSession.State.STARTED) {
            throw new ServerApiException("Session not started");
        }
        this.mSessionModule.sendMultimediaMessage(this.mSession.getChatId(), bArr, str);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.api.MultimediaMessagingSessionImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState;

        static {
            int[] iArr = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr;
            try {
                iArr[ImError.BUSY_HERE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REMOTE_PARTY_DECLINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REMOTE_TEMPORARILY_UNAVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.INVALID_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.CONNECTION_RELEASED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SERVICE_UNAVAILABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.FORBIDDEN_NO_WARNING_HEADER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SESSION_TIMED_OUT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NOT_ACCEPTABLE_HERE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REQUEST_PENDING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.REMOTE_USER_INVALID.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NOT_IMPLEMENTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SERVER_TIMEOUT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr2 = new int[ImSession.SessionState.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState = iArr2;
            try {
                iArr2[ImSession.SessionState.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.ESTABLISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.CLOSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    private static MultimediaSession.ReasonCode translateErrorCode(ImError imError) {
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
}
