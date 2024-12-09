package com.sec.internal.imsphone;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.ims.AudioCodecAttributes;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsStreamMediaProfile;
import android.telephony.ims.ImsSuppServiceNotification;
import android.telephony.ims.RtpHeaderExtension;
import android.telephony.ims.aidl.IImsCallSessionListener;
import android.text.TextUtils;
import android.util.Log;
import android.util.Range;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsVideoCallProvider;
import com.sec.ims.Dialog;
import com.sec.ims.DialogEvent;
import com.sec.ims.IRttEventListener;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.ims.volte2.data.MediaProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.helper.os.ServiceStateWrapper;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.imsphone.cmc.CmcCallSessionManager;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.List;

/* loaded from: classes.dex */
public class ImsCallSessionImpl extends IImsCallSession.Stub {
    private static final String LOG_TAG = "ImsCallSessionImpl";
    protected static final int SET_LOCAL_CALL_PROFILE = 1;
    protected static final int SET_LOCAL_REMOTE_CALL_PROFILE = 3;
    protected static final int SET_REMOTE_CALL_PROFILE = 2;
    protected String mCallId;
    public int mCallIdInt;
    public ImsCallProfile mCallProfile;
    public IImsCallSession mImpl;
    public ImsVideoCallProviderImpl mImsVideoCallProvider;
    public IImsCallSessionListener mListener;
    public final MmTelFeatureImpl mMmTelFeatureImpl;
    public final IRttEventListener mRttEventListener;
    public com.sec.ims.volte2.IImsCallSession mSession;
    protected final IImsCallSessionEventListener mVolteEventListener;
    public final IVolteServiceModule mVolteServiceModule;
    protected ImsCallProfile mLocalCallProfile = new ImsCallProfile(1, 3);
    protected ImsCallProfile mRemoteCallProfile = new ImsCallProfile(1, 3);
    protected int mRingbackToneDirection = 0;
    public boolean mIsConferenceHost = false;
    public boolean mIsConferenceParticipant = false;
    public boolean mIsEcbmSupport = false;
    public boolean mIsCWNotified = false;
    public boolean mIsMultiparty = false;
    public boolean mIsUssdTerminatedByUser = false;
    public int mState = 0;
    private boolean mIsDeclined = false;

    private int convertDtmfToCode(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c == '*') {
            return 10;
        }
        return c == '#' ? 11 : -1;
    }

    public void callSessionNotifyAnbr(int i, int i2, int i3) {
    }

    public void deflect(String str) {
    }

    public void sendRtpHeaderExtensions(List<RtpHeaderExtension> list) {
    }

    public void setMute(boolean z) {
    }

    public void update(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    protected void updateCmcCallExtras(CallProfile callProfile) throws RemoteException {
    }

    public ImsCallSessionImpl(ImsCallProfile imsCallProfile, com.sec.ims.volte2.IImsCallSession iImsCallSession, IImsCallSessionListener iImsCallSessionListener, MmTelFeatureImpl mmTelFeatureImpl) {
        this.mImsVideoCallProvider = null;
        this.mCallId = "";
        this.mCallIdInt = -1;
        IRttEventListener iRttEventListener = new IRttEventListener.Stub() { // from class: com.sec.internal.imsphone.ImsCallSessionImpl.1
            public void onRttEvent(String str) throws RemoteException {
                ImsCallSessionImpl.this.mListener.callSessionRttMessageReceived(str);
            }

            public void onRttEventBySession(int i, String str) throws RemoteException {
                if (ImsCallSessionImpl.this.getSessionId() == i) {
                    ImsCallSessionImpl.this.mListener.callSessionRttMessageReceived(str);
                }
            }

            public void onSendRttSessionModifyRequest(int i, boolean z) throws RemoteException {
                if (ImsCallSessionImpl.this.getCallIdInt() == i) {
                    ImsCallSessionImpl.this.mCallProfile.mMediaProfile.setRttMode(z ? 1 : 0);
                    ImsCallSessionImpl imsCallSessionImpl = ImsCallSessionImpl.this;
                    imsCallSessionImpl.mListener.callSessionRttModifyRequestReceived(imsCallSessionImpl.mCallProfile);
                }
            }

            public void onSendRttSessionModifyResponse(int i, boolean z, boolean z2) throws RemoteException {
                if (ImsCallSessionImpl.this.getCallIdInt() == i) {
                    if (z == z2) {
                        ImsCallSessionImpl.this.mCallProfile.mMediaProfile.setRttMode(1);
                    } else {
                        ImsCallSessionImpl.this.mCallProfile.mMediaProfile.setRttMode(0);
                    }
                    if (z2) {
                        ImsCallSessionImpl.this.mListener.callSessionRttModifyResponseReceived(1);
                    } else {
                        ImsCallSessionImpl.this.mListener.callSessionRttModifyResponseReceived(2);
                    }
                }
            }
        };
        this.mRttEventListener = iRttEventListener;
        ImsCallSessionEventListener imsCallSessionEventListener = new ImsCallSessionEventListener(this);
        this.mVolteEventListener = imsCallSessionEventListener;
        this.mCallProfile = imsCallProfile;
        setCallProfile(3);
        this.mSession = iImsCallSession;
        this.mListener = iImsCallSessionListener;
        this.mImpl = this;
        this.mMmTelFeatureImpl = mmTelFeatureImpl;
        IVolteServiceModule volteServiceModule = ImsRegistry.getServiceModuleManager().getVolteServiceModule();
        this.mVolteServiceModule = volteServiceModule;
        if (iImsCallSession == null) {
            return;
        }
        try {
            this.mSession.registerSessionEventListener(imsCallSessionEventListener);
            volteServiceModule.registerRttEventListener(this.mSession.getPhoneId(), iRttEventListener);
            int callId = this.mSession.getCallId();
            this.mCallIdInt = callId;
            if (callId > 0) {
                this.mCallId = Integer.toString(callId);
            }
        } catch (RemoteException unused) {
        }
        this.mImsVideoCallProvider = new ImsVideoCallProviderImpl(this.mSession);
    }

    public void initP2pImpl() {
        Log.d(LOG_TAG, "initP2pImpl(), duplicate");
    }

    public CmcCallSessionManager getCmcCallSessionManager() {
        Log.d(LOG_TAG, "getCmcCallSessionManager(), duplicate");
        return null;
    }

    public void close() {
        this.mMmTelFeatureImpl.onCallClosed(this.mCallIdInt);
        try {
            ImsVideoCallProviderImpl imsVideoCallProviderImpl = this.mImsVideoCallProvider;
            if (imsVideoCallProviderImpl != null) {
                imsVideoCallProviderImpl.setCallback(null);
            }
        } catch (RemoteException unused) {
        }
    }

    public String getCallId() {
        return this.mCallId;
    }

    public int getCallIdInt() {
        return this.mCallIdInt;
    }

    protected void releaseSessionListeners() {
        try {
            com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
            if (iImsCallSession != null) {
                iImsCallSession.unregisterSessionEventListener(this.mVolteEventListener);
                IVolteServiceModule iVolteServiceModule = this.mVolteServiceModule;
                if (iVolteServiceModule != null) {
                    iVolteServiceModule.unregisterRttEventListener(this.mSession.getPhoneId(), this.mRttEventListener);
                }
                this.mListener = null;
                this.mSession = null;
            }
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSessionId() throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return -1;
        }
        return iImsCallSession.getSessionId();
    }

    public ImsCallProfile getCallProfile() {
        return this.mCallProfile;
    }

    public ImsCallProfile getLocalCallProfile() {
        int i = !this.mCallProfile.getCallExtraBoolean("call_mode_changeable", false) ? 2 : 3;
        ImsCallProfile imsCallProfile = this.mLocalCallProfile;
        imsCallProfile.mCallType = i;
        return imsCallProfile;
    }

    protected void setCallProfile(int i) {
        Parcel obtain = Parcel.obtain();
        this.mCallProfile.writeToParcel(obtain, 0);
        if ((i & 1) == 1) {
            obtain.setDataPosition(0);
            ImsCallProfile imsCallProfile = (ImsCallProfile) ImsCallProfile.CREATOR.createFromParcel(obtain);
            this.mLocalCallProfile = imsCallProfile;
            ImsCallProfile imsCallProfile2 = this.mCallProfile;
            imsCallProfile.mRestrictCause = imsCallProfile2.mRestrictCause;
            imsCallProfile.mMediaProfile.copyFrom(imsCallProfile2.mMediaProfile);
        }
        if ((i & 2) == 2) {
            obtain.setDataPosition(0);
            ImsCallProfile imsCallProfile3 = (ImsCallProfile) ImsCallProfile.CREATOR.createFromParcel(obtain);
            this.mRemoteCallProfile = imsCallProfile3;
            ImsCallProfile imsCallProfile4 = this.mCallProfile;
            imsCallProfile3.mRestrictCause = imsCallProfile4.mRestrictCause;
            imsCallProfile3.mMediaProfile.copyFrom(imsCallProfile4.mMediaProfile);
        }
        obtain.recycle();
    }

    public ImsCallProfile getRemoteCallProfile() {
        int i = !this.mCallProfile.getCallExtraBoolean("call_mode_changeable", false) ? 2 : 3;
        ImsCallProfile imsCallProfile = this.mRemoteCallProfile;
        imsCallProfile.mCallType = i;
        return imsCallProfile;
    }

    public String getProperty(String str) {
        if (this.mSession != null && TextUtils.equals("RawInviteMessage", str)) {
            try {
                return this.mSession.getIncomingInviteRawSip();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public CallConstants.STATE getInternalState() throws RemoteException {
        if (this.mSession == null) {
            return CallConstants.STATE.Idle;
        }
        return CallConstants.STATE.values()[this.mSession.getCallStateOrdinal()];
    }

    public CallConstants.STATE getPrevInternalState() throws RemoteException {
        if (this.mSession == null) {
            return CallConstants.STATE.Idle;
        }
        return CallConstants.STATE.values()[this.mSession.getPrevCallStateOrdinal()];
    }

    public int getState() {
        if (this.mIsConferenceParticipant) {
            return 8;
        }
        return this.mState;
    }

    /* renamed from: com.sec.internal.imsphone.ImsCallSessionImpl$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE;

        static {
            int[] iArr = new int[CallConstants.STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE = iArr;
            try {
                iArr[CallConstants.STATE.InCall.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.IncomingCall.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.OutGoingCall.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.AlertingCall.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.HoldingCall.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.HeldCall.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ResumingCall.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ModifyingCall.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ModifyRequested.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.HoldingVideo.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.VideoHeld.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ResumingVideo.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public boolean isInCall() throws RemoteException {
        if (this.mState != 4 || this.mSession == null) {
            return false;
        }
        switch (AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[getInternalState().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return true;
            default:
                return false;
        }
    }

    public void setListener(IImsCallSessionListener iImsCallSessionListener) {
        this.mListener = iImsCallSessionListener;
    }

    public IImsCallSessionListener getListener() {
        return this.mListener;
    }

    public void start(String str, ImsCallProfile imsCallProfile) throws RemoteException {
        int i;
        int idForString;
        if (this.mSession == null || this.mVolteServiceModule == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionInitiatingFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        this.mState = 1;
        this.mCallProfile = imsCallProfile;
        setCallProfile(3);
        CallProfile callProfile = this.mSession.getCallProfile();
        callProfile.setDialingNumber(str);
        if (isEmergencyCall()) {
            this.mCallProfile.setCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE", ServiceStateWrapper.rilRadioTechnologyToNetworkType(this.mSession.getCallProfile().getRadioTech()));
            this.mCallProfile.setCallExtraBoolean("android.telephony.ims.extra.IS_CROSS_SIM_CALL", this.mSession.getCallProfile().isCrossSimCall());
        }
        this.mVolteServiceModule.setAutomaticMode(this.mSession.getPhoneId(), this.mCallProfile.mMediaProfile.isRttCall());
        callProfile.getMediaProfile().setRttMode(this.mCallProfile.mMediaProfile.getRttMode());
        if (this.mCallProfile.getCallExtraBoolean("CallPull")) {
            Bundle bundle = this.mCallProfile.mCallExtras.getBundle("android.telephony.ims.extra.OEM_EXTRAS");
            DialogEvent lastDialogEvent = this.mVolteServiceModule.getLastDialogEvent(this.mSession.getPhoneId());
            if (lastDialogEvent != null && bundle != null) {
                int i2 = bundle.getInt("android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID");
                for (Dialog dialog : lastDialogEvent.getDialogList()) {
                    if (dialog != null) {
                        if (SimUtil.getSimMno(this.mSession.getPhoneId()) == Mno.VZW) {
                            idForString = ImsCallUtil.getIdForString(dialog.getSipCallId());
                        } else {
                            try {
                                idForString = Integer.parseInt(dialog.getDialogId());
                            } catch (NumberFormatException unused) {
                                continue;
                            }
                        }
                        if (i2 == idForString && !TextUtils.isEmpty(dialog.getSipCallId()) && !TextUtils.isEmpty(dialog.getSipLocalTag()) && !TextUtils.isEmpty(dialog.getSipRemoteTag())) {
                            this.mCallProfile.mCallType = DataTypeConvertor.convertToGoogleCallType(dialog.getCallType());
                            callProfile.setCallType(dialog.getCallType());
                            callProfile.setPullCall(true);
                            if (ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType())) {
                                callProfile.setCmcEdCallSlot(dialog.getCallSlot());
                            }
                            try {
                                this.mSession.pulling(lastDialogEvent.getMsisdn(), dialog);
                                return;
                            } catch (RemoteException unused2) {
                                i = 1015;
                            }
                        }
                    }
                }
            }
            i = 101;
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionInitiatingFailed(new ImsReasonInfo(i, 0));
                return;
            }
            return;
        }
        try {
            if (this.mSession.start(str, callProfile) < 0) {
                throw new RemoteException("start return -1");
            }
        } catch (RemoteException unused3) {
            IImsCallSessionListener iImsCallSessionListener3 = this.mListener;
            if (iImsCallSessionListener3 != null) {
                iImsCallSessionListener3.callSessionInitiatingFailed(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void startConference(String[] strArr, ImsCallProfile imsCallProfile) throws RemoteException {
        if (this.mSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionInitiatingFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        try {
            this.mState = 1;
            this.mCallProfile = imsCallProfile;
            setCallProfile(3);
            com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
            iImsCallSession.startConference(strArr, iImsCallSession.getCallProfile());
        } catch (RemoteException unused) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionInitiatingFailed(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void accept(int i, ImsStreamMediaProfile imsStreamMediaProfile) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionTerminated(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        int callType = iImsCallSession.getCallProfile().getCallType();
        int convertToSecCallType = DataTypeConvertor.convertToSecCallType(i);
        if (!ImsCallUtil.isTtyCall(callType) && callType != 12) {
            callType = convertToSecCallType;
        }
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(callType);
        callProfile.getMediaProfile().setRttMode(imsStreamMediaProfile.mRttMode);
        try {
            this.mSession.accept(callProfile);
        } catch (RemoteException unused) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionTerminated(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void reject(int i) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionTerminated(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        try {
            this.mIsDeclined = true;
            iImsCallSession.reject(DataTypeConvertor.convertCallRejectReasonFromFW(i));
        } catch (RemoteException e) {
            if ("Reject Failed".equals(e.getMessage())) {
                throw new UnsupportedOperationException(e.getMessage());
            }
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionTerminated(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void terminate(int i) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionTerminated(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        try {
            if (iImsCallSession.getCallProfile().getCallType() == 12) {
                this.mIsUssdTerminatedByUser = true;
                this.mSession.info(3, "1");
            } else {
                this.mSession.terminate(DataTypeConvertor.convertCallEndReasonFromFW(i));
            }
        } catch (RemoteException unused) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionTerminated(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void hold(ImsStreamMediaProfile imsStreamMediaProfile) throws RemoteException {
        if (this.mSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionHoldFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        try {
            this.mSession.hold(new MediaProfile());
        } catch (RemoteException unused) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionHoldFailed(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void resume(ImsStreamMediaProfile imsStreamMediaProfile) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionResumeFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        try {
            iImsCallSession.resume();
        } catch (RemoteException unused) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionResumeFailed(new ImsReasonInfo(103, 0));
            }
        }
    }

    private void inviteParticipants(int i) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        try {
            iImsCallSession.inviteParticipants(i);
        } catch (RemoteException unused) {
        }
    }

    public void merge() throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession;
        com.sec.ims.volte2.IImsCallSession iImsCallSession2 = this.mSession;
        if (iImsCallSession2 == null || this.mVolteServiceModule == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionMergeFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        int callId = iImsCallSession2.getCallId();
        if (this.mMmTelFeatureImpl.hasConferenceHost()) {
            callId = this.mMmTelFeatureImpl.getConferenceHost().getCallIdInt();
        }
        int participantIdForMerge = this.mVolteServiceModule.getParticipantIdForMerge(this.mSession.getPhoneId(), callId);
        if (participantIdForMerge == -1) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionMergeFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        if (this.mMmTelFeatureImpl.hasConferenceHost()) {
            this.mMmTelFeatureImpl.setInitialMerge(false);
            this.mMmTelFeatureImpl.getConferenceHost().inviteParticipants(participantIdForMerge);
            return;
        }
        CallProfile convertToSecCallProfile = DataTypeConvertor.convertToSecCallProfile(this.mSession.getPhoneId(), this.mCallProfile, this.mVolteServiceModule.getTtyMode(this.mSession.getPhoneId()) != 0);
        convertToSecCallProfile.setConferenceCall(1);
        convertToSecCallProfile.setLineMsisdn(this.mSession.getCallProfile().getLineMsisdn());
        convertToSecCallProfile.setOriginatingUri(this.mSession.getCallProfile().getOriginatingUri());
        try {
            iImsCallSession = this.mVolteServiceModule.createSession(convertToSecCallProfile);
        } catch (RemoteException unused) {
            iImsCallSession = null;
        }
        if (iImsCallSession == null) {
            IImsCallSessionListener iImsCallSessionListener3 = this.mListener;
            if (iImsCallSessionListener3 != null) {
                iImsCallSessionListener3.callSessionMergeFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        iImsCallSession.setEpdgState(this.mCallProfile.getCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE") == 18);
        this.mIsConferenceHost = true;
        this.mMmTelFeatureImpl.setInitialMerge(true);
        this.mMmTelFeatureImpl.setConferenceHost(this);
        ImsCallSessionImpl imsCallSessionImpl = new ImsCallSessionImpl(this.mCallProfile, iImsCallSession, null, this.mMmTelFeatureImpl);
        imsCallSessionImpl.notifyReadyToHandleImsCallbacks();
        iImsCallSession.merge(participantIdForMerge, callId);
        this.mListener.callSessionMergeStarted(imsCallSessionImpl, imsCallSessionImpl.getCallProfile());
    }

    public void extendToConference(String[] strArr) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener != null) {
                iImsCallSessionListener.callSessionConferenceExtendFailed(new ImsReasonInfo(102, 0));
                return;
            }
            return;
        }
        try {
            iImsCallSession.extendToConference(strArr);
        } catch (RemoteException unused) {
            IImsCallSessionListener iImsCallSessionListener2 = this.mListener;
            if (iImsCallSessionListener2 != null) {
                iImsCallSessionListener2.callSessionConferenceExtendFailed(new ImsReasonInfo(103, 0));
            }
        }
    }

    public void inviteParticipants(String[] strArr) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        try {
            iImsCallSession.extendToConference(strArr);
        } catch (RemoteException unused) {
        }
    }

    public void removeParticipants(String[] strArr) throws RemoteException {
        if (this.mSession == null) {
            return;
        }
        try {
            for (String str : strArr) {
                int participantId = this.mMmTelFeatureImpl.getParticipantId(str);
                this.mMmTelFeatureImpl.updateParticipant(participantId, "disconnecting", 3);
                this.mSession.removeParticipants(participantId);
            }
        } catch (RemoteException unused) {
        }
    }

    public void sendDtmf(char c, Message message) throws RemoteException {
        Messenger messenger;
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        iImsCallSession.sendDtmf(convertDtmfToCode(c), 0, (Message) null);
        if (message == null || (messenger = message.replyTo) == null) {
            return;
        }
        messenger.send(message);
    }

    public void startDtmf(char c) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        iImsCallSession.startDtmf(convertDtmfToCode(c));
    }

    public void stopDtmf() throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        iImsCallSession.stopDtmf();
    }

    public void sendUssd(String str) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            return;
        }
        this.mIsUssdTerminatedByUser = false;
        iImsCallSession.info(2, str);
    }

    public boolean isMultiparty() throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        return iImsCallSession == null ? this.mIsMultiparty : iImsCallSession.getCallProfile().isConferenceCall();
    }

    public boolean isEmergencyCall() {
        return this.mCallProfile.getCallExtraBoolean("e_call") || this.mCallProfile.mServiceType == 2;
    }

    public boolean isWifiCall() {
        return 18 == this.mCallProfile.getCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE");
    }

    public IImsVideoCallProvider getVideoCallProvider() {
        return this.mImsVideoCallProvider;
    }

    public void updateConferenceStatus(int i, String str) {
        if ("disconnected".equals(str)) {
            this.mMmTelFeatureImpl.updateParticipant(i, str, 2);
        } else {
            this.mMmTelFeatureImpl.updateParticipant(i, str);
        }
        try {
            ImsCallSessionImpl conferenceHost = this.mMmTelFeatureImpl.getConferenceHost();
            this.mMmTelFeatureImpl.updateSecConferenceInfo(this.mCallProfile);
            IImsCallSessionListener iImsCallSessionListener = this.mListener;
            if (iImsCallSessionListener == null) {
                if (conferenceHost == null || conferenceHost.getListener() == null) {
                    return;
                }
                conferenceHost.getListener().callSessionUpdated(this.mCallProfile);
                conferenceHost.getListener().callSessionConferenceStateUpdated(this.mMmTelFeatureImpl.getImsConferenceState());
                return;
            }
            iImsCallSessionListener.callSessionUpdated(this.mCallProfile);
            this.mListener.callSessionConferenceStateUpdated(this.mMmTelFeatureImpl.getImsConferenceState());
        } catch (RemoteException unused) {
        }
    }

    public void onSuppServiceReceived(int i, int i2) throws RemoteException {
        this.mListener.callSessionSuppServiceReceived(new ImsSuppServiceNotification(i, i2, 1, 0, (String) null, (String[]) null));
    }

    public ImsReasonInfo changeCmcErrorReason(int i, int i2) {
        return changeCmcErrorReason(i, i2, "");
    }

    public ImsReasonInfo changeCmcErrorReason(int i, int i2, String str) {
        ImsReasonInfo imsReasonInfo = new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i2), i2, str);
        if (ImsCallUtil.isCmcPrimaryType(i)) {
            if (i2 == 1115 || i2 == 1401) {
                imsReasonInfo.mCode = 501;
                imsReasonInfo.mExtraCode = 200;
            } else if (i2 == 403 && "SERVER_RELAY_RESTRICTED".equals(str)) {
                imsReasonInfo.mCode = 333;
                imsReasonInfo.mExtraCode = 6012;
            }
        } else if (ImsCallUtil.isCmcSecondaryType(i)) {
            if (i2 == 404 && "PD_NOT_REGISTERED".equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6001;
            } else if (i2 == 404 && "SD_NOT_REGISTERED".equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6004;
            } else if (i2 == 480 && "REJECT_REASON_PD_UNREACHABLE".equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6002;
            } else if (i2 == 486 && SipErrorBase.E911_NOT_ALLOWED_ON_SD.getReason().equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6003;
            } else if (i2 == 1401) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = Id.REQUEST_CHATBOT_ANONYMIZE;
            } else if (i2 == 415 && "SD_NOT_SUPPORTED_VT".equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6005;
            } else if (i2 == 1115) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6006;
            } else if (i2 == 486 && "PD_CALL_EXISTS_ON_THE_OTHER_SLOT".equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6011;
            } else if (i2 == 403 && "SERVER_RELAY_RESTRICTED".equals(str)) {
                imsReasonInfo.mCode = 352;
                imsReasonInfo.mExtraCode = 6012;
            }
        }
        return imsReasonInfo;
    }

    public void updateCallProfile() throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            throw new RemoteException();
        }
        Mno simMno = SimUtil.getSimMno(iImsCallSession.getPhoneId());
        CallProfile callProfile = this.mSession.getCallProfile();
        if (callProfile == null) {
            return;
        }
        if (callProfile.getHDIcon() == 1) {
            this.mCallProfile.mRestrictCause = 0;
        } else {
            this.mCallProfile.mRestrictCause = 3;
        }
        if (callProfile.isConferenceCall()) {
            this.mCallProfile.setCallExtraBoolean("android.telephony.ims.extra.CONFERENCE", true);
            this.mCallProfile.setCallExtraInt("dialstring", 1);
        } else {
            this.mCallProfile.setCallExtraBoolean("android.telephony.ims.extra.CONFERENCE", false);
            this.mCallProfile.setCallExtraInt("dialstring", 0);
        }
        int oir = getOir(simMno, callProfile);
        this.mCallProfile.setCallExtraInt("oir", oir);
        this.mCallProfile.setCallExtraInt("cnap", oir);
        this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.IS_TWO_PHONE_MODE", !TextUtils.isEmpty(callProfile.getNumberPlus()));
        this.mCallProfile.setCallExtra("com.samsung.telephony.extra.PHOTO_RING_AVAILABLE", callProfile.getPhotoRing());
        this.mCallProfile.setCallExtra("com.samsung.telephony.extra.ALERT_INFO", callProfile.getAlertInfo());
        this.mCallProfile.setCallExtraStringArray("android.telephony.ims.extra.FORWARDED_NUMBER", new String[]{callProfile.getNumberPlus()});
        this.mCallProfile.setCallExtra("com.samsung.telephony.extra.SKT_CONFERENCE_CALL_SUPPORT", callProfile.getConferenceSupported());
        if (callProfile.getHistoryInfo() != null) {
            this.mCallProfile.setCallExtraStringArray("android.telephony.ims.extra.FORWARDED_NUMBER", new String[]{callProfile.getHistoryInfo()});
            if ("anonymous".equalsIgnoreCase(callProfile.getHistoryInfo())) {
                this.mCallProfile.setCallExtra("com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION", "1");
            } else {
                this.mCallProfile.setCallExtra("com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION", "0");
            }
        }
        if (callProfile.getRejectCode() != -1) {
            this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.VCRBT_CAUSE", callProfile.getRejectCode());
        }
        if (callProfile.getRejectProtocol() != null) {
            this.mCallProfile.setCallExtra("com.samsung.telephony.extra.VCRBT_REASON_PROTOCOL", callProfile.getRejectProtocol());
        }
        if (callProfile.getRejectText() != null) {
            this.mCallProfile.setCallExtra("com.samsung.telephony.extra.TEXT_DESCRIPTION", callProfile.getRejectText());
        }
        if (callProfile.getDtmfEvent() != null) {
            this.mCallProfile.setCallExtra("com.samsung.telephony.extra.DTMF_EVENT", callProfile.getDtmfEvent());
        }
        this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.MT_CONFERENCE", "1".equals(callProfile.getIsFocus()));
        this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.REMOTE_HELD", callProfile.isRemoteHeld());
        if (callProfile.getDirection() == 0) {
            if (ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType())) {
                this.mCallProfile.setCallExtra("oi", callProfile.getLetteringText());
            } else if (TextUtils.isEmpty(this.mCallProfile.getCallExtra("oi")) && simMno.isLatin()) {
                Log.d(LOG_TAG, "mCallProfile.setCallExtra: EXTRA_OI = " + IMSLog.checker(callProfile.getDialingNumber()));
                this.mCallProfile.setCallExtra("oi", callProfile.getDialingNumber());
            }
        } else if (simMno == Mno.KT) {
            this.mCallProfile.setCallExtra("oi", ImsCallUtil.removeUriPlusPrefix(callProfile.getDialingNumber(), "+82", "0", Debug.isProductShip()));
        } else if (simMno.isAus()) {
            this.mCallProfile.setCallExtra("oi", ImsCallUtil.removeUriPlusPrefix(callProfile.getDialingNumber(), "+61", "0", Debug.isProductShip()));
        } else if (TextUtils.isEmpty(this.mCallProfile.getCallExtra("oi"))) {
            this.mCallProfile.setCallExtra("oi", callProfile.getDialingNumber());
        }
        if (!ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType()) || callProfile.getDirection() != 0) {
            this.mCallProfile.setCallExtra("cna", callProfile.getLetteringText());
        }
        this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.CMC_RECORDING_EVENT", callProfile.getCmcRecordEvent());
        this.mCallProfile.mCallType = DataTypeConvertor.convertToGoogleCallType(callProfile.getCallType());
        this.mCallProfile.mMediaProfile = DataTypeConvertor.convertToGoogleMediaProfile(callProfile.getMediaProfile());
        setAudioCodecAttr(callProfile.getMediaProfile().getAudioBitRate());
        if (this.mState <= 2 && callProfile.isMOCall()) {
            this.mCallProfile.mMediaProfile.mAudioDirection = this.mRingbackToneDirection;
        }
        this.mCallProfile.setCallExtraBoolean("call_mode_changeable", callProfile.hasRemoteVideoCapa());
        if (callProfile.isVideoCRBT()) {
            if (callProfile.getDirection() == 0) {
                this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.VIDEO_CRBT", true);
                if (ImsCallUtil.isVideoCall(callProfile.getCallType())) {
                    this.mCallProfile.setCallExtraBoolean("ims_call_extra_cvat_video", true);
                } else {
                    this.mCallProfile.setCallExtraBoolean("ims_call_extra_cvat_voice", true);
                }
            } else if (callProfile.getDirection() == 1) {
                this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.VIDEO_CRT_MT", callProfile.getDelayRinging() ? ImsConstants.VcrtPost.NO_VCRT : ImsConstants.VcrtPost.VCRT_AVAILABLE);
                if (ImsCallUtil.isVideoCall(callProfile.getCallType())) {
                    this.mCallProfile.setCallExtraBoolean("ims_call_extra_cvrs_video", true);
                } else {
                    this.mCallProfile.setCallExtraBoolean("ims_call_extra_cvrs_voice", true);
                }
            }
        } else {
            this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.VIDEO_CRBT", false);
            this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.VIDEO_CRT_MT", ImsConstants.VcrtPost.NO_VCRT);
        }
        if (ImsCallUtil.isCmcSecondaryType(this.mSession.getCmcType())) {
            this.mCallProfile.setCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE", 13);
        } else {
            this.mCallProfile.setCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE", ServiceStateWrapper.rilRadioTechnologyToNetworkType(callProfile.getRadioTech()));
        }
        if (simMno.isKor() && this.mSession.getRegistration() != null && this.mSession.getCmcType() == 0) {
            int currentRat = this.mSession.getRegistration().getCurrentRat();
            if (!NetworkUtil.is3gppPsVoiceNetwork(currentRat)) {
                Log.i(LOG_TAG, "set EXTRA_CALL_NETWORK_TYPE for 3gvt  currentRat[" + currentRat + "]");
                this.mCallProfile.setCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE", currentRat);
            }
        }
        this.mCallProfile.setCallExtraBoolean("android.telephony.ims.extra.IS_CROSS_SIM_CALL", callProfile.isCrossSimCall());
        this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.CAN_TRANSFER_CALL", this.mVolteServiceModule.isVolteSupportECT(this.mSession.getPhoneId()));
        this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.CALL_DIRECTION", callProfile.getDirection());
        this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.AUDIO_RX_TRACK_ID", callProfile.getAudioRxTrackId());
        this.mCallProfile.setCallExtra("feature_caps", callProfile.getFeatureCaps());
        this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.VIDEO_SCREEN_SHARE", callProfile.getIdcScreenShareRunning());
        this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.VIDEO_ARCALL", callProfile.getIdcArCallRunning());
        if (simMno.isOneOf(Mno.TMOUS, Mno.SPRINT)) {
            Log.i(LOG_TAG, "mSession:" + this.mSession.getSessionId() + ", EPSFB:" + callProfile.getEPSFBsuccess());
            this.mCallProfile.setCallExtraBoolean("com.samsung.ims.extra.EPSFB_SUCCESS", callProfile.getEPSFBsuccess());
            if (callProfile.getEchoCellId() != null) {
                this.mCallProfile.setCallExtra("com.samsung.ims.extra.ECHO_CELL_ID", callProfile.getEchoCellId());
            }
        }
        this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.VT_RECORDING_STATE", callProfile.getRecordState());
        if (this.mIsEcbmSupport) {
            this.mCallProfile.setCallExtraBoolean("imsEcmSupport", true);
        }
        if (simMno == Mno.CMCC) {
            this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.VIDEO_CRT_IS_ALERTING", callProfile.getVCrtIsAlerting());
            this.mCallProfile.setCallExtraBoolean("com.samsung.telephony.extra.VCS_TOUCH_SCREEN_ENABLED", callProfile.getTouchScreenEnabled());
        }
        if (this.mSession.isQuantumEncryptionServiceAvailable()) {
            Log.i(LOG_TAG, "update extra com.samsung.telephony.extra.QUANTUM_ENCRYPTION_STATUS: " + callProfile.getQuantumSecurityInfo().getEncryptStatus());
            this.mCallProfile.setCallExtraInt("com.samsung.telephony.extra.QUANTUM_ENCRYPTION_STATUS", callProfile.getQuantumSecurityInfo().getEncryptStatus());
        }
        if (this.mVolteServiceModule.getCmcServiceHelper().isCmcRegExist(this.mSession.getPhoneId())) {
            updateCmcCallExtras(callProfile);
        }
        this.mIsMultiparty = this.mSession.getCallProfile().isConferenceCall();
        setCallProfile(3);
    }

    private int getOir(Mno mno, CallProfile callProfile) {
        String dialingNumber = callProfile.getDialingNumber();
        if (callProfile.isConferenceCall()) {
            if (mno.isKor()) {
                return DataTypeConvertor.getOirExtraFromDialingNumber(dialingNumber);
            }
            return 2;
        }
        if (TextUtils.isEmpty(dialingNumber)) {
            dialingNumber = "unknown";
        }
        if (mno == Mno.DOCOMO) {
            return DataTypeConvertor.getOirExtraFromDialingNumberForDcm(callProfile.getLetteringText());
        }
        return DataTypeConvertor.getOirExtraFromDialingNumber(dialingNumber);
    }

    public void updateHoldToneType(boolean z) {
        if (z) {
            this.mCallProfile.mMediaProfile.mAudioDirection = 0;
        }
    }

    public void updateRingbackToneDirection(int i) {
        this.mRingbackToneDirection = i;
        ImsStreamMediaProfile imsStreamMediaProfile = this.mCallProfile.mMediaProfile;
        imsStreamMediaProfile.mAudioDirection = i;
        imsStreamMediaProfile.mVideoDirection = -1;
    }

    private void setAudioCodecAttr(String str) {
        Log.d(LOG_TAG, "setAudioCodecAttr() bitrate:" + str);
        float[] fArr = {0.0f, 0.0f};
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(CmcConstants.E_NUM_SLOT_SPLIT);
            try {
                if (split.length == 1) {
                    float floatValue = Float.valueOf(split[0].trim()).floatValue() / 1000.0f;
                    fArr[1] = floatValue;
                    fArr[0] = floatValue;
                } else if (split.length == 2) {
                    if (this.mCallProfile.mMediaProfile.getAudioQuality() < 3) {
                        fArr[0] = Float.valueOf(split[0].trim()).floatValue() / 1000.0f;
                        fArr[1] = Float.valueOf(split[1].trim()).floatValue() / 1000.0f;
                    } else {
                        fArr[0] = Float.valueOf(split[0].trim()).floatValue();
                        fArr[1] = Float.valueOf(split[1].trim()).floatValue();
                    }
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        this.mCallProfile.mMediaProfile.setAudioCodecAttributes(new AudioCodecAttributes(fArr[1], new Range(Float.valueOf(fArr[0]), Float.valueOf(fArr[1])), fArr[1], new Range(Float.valueOf(fArr[0]), Float.valueOf(fArr[1]))));
    }

    public void sendRttMessage(String str) throws RemoteException {
        this.mSession.sendText(str, str.length());
    }

    public void sendRttModifyRequest(ImsCallProfile imsCallProfile) throws RemoteException {
        this.mVolteServiceModule.sendRttSessionModifyRequest(this.mSession.getCallId(), imsCallProfile.mMediaProfile.isRttCall());
    }

    public void sendRttModifyResponse(boolean z) throws RemoteException {
        this.mCallProfile.mMediaProfile.setRttMode(z ? 1 : 0);
        this.mVolteServiceModule.sendRttSessionModifyResponse(this.mSession.getCallId(), z);
    }

    public void transfer(String str, boolean z) throws RemoteException {
        if (z) {
            throw new RemoteException("not support assured transfer");
        }
        this.mVolteServiceModule.pushCall(this.mSession.getCallId(), str);
    }

    public void consultativeTransfer(IImsCallSession iImsCallSession) throws RemoteException {
        this.mVolteServiceModule.consultativeTransferCall(Integer.parseInt(iImsCallSession.getCallId()), this.mSession.getCallId());
    }

    public void cancelTransferCall() throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            throw new RemoteException();
        }
        iImsCallSession.cancelTransfer();
    }

    public void sendImsCallEvent(String str, Bundle bundle) throws RemoteException {
        com.sec.ims.volte2.IImsCallSession iImsCallSession = this.mSession;
        if (iImsCallSession == null) {
            throw new RemoteException();
        }
        iImsCallSession.sendImsCallEvent(str, bundle);
    }

    public void notifyReadyToHandleImsCallbacks() throws RemoteException {
        if (this.mSession == null) {
            throw new RemoteException();
        }
        try {
            this.mVolteEventListener.notifyReadyToHandleImsCallbacks();
        } catch (RemoteException unused) {
        }
    }

    public int getTtyModeFromCallType(int i, int i2) {
        IVolteServiceModule iVolteServiceModule = this.mVolteServiceModule;
        if (iVolteServiceModule == null) {
            return 0;
        }
        if (!(iVolteServiceModule.getTtyMode(i) == 0)) {
            return 0;
        }
        switch (i2) {
            case 9:
                return 1;
            case 10:
                return 2;
            case 11:
                return 3;
            default:
                return 0;
        }
    }

    public boolean needDeclineDuringQecCall() throws RemoteException {
        return this.mIsDeclined && this.mVolteServiceModule.hasQecInCall();
    }
}
