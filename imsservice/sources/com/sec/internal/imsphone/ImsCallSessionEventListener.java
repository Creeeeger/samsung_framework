package com.sec.internal.imsphone;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.telephony.CallQuality;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.aidl.IImsCallSessionListener;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallSession;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.ims.volte2.data.MediaProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.ImsGeneralEvent;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class ImsCallSessionEventListener extends IImsCallSessionEventListener.Stub {
    private static final int EVENT_CALL_RETRY = 100;
    private static final int EVENT_RETRY_AFTER_TIMEOUT = 101;
    private static final String LOG_TAG = "ImsCallSessionEventListener";
    private static int USSD_MODE_NW_ERROR = -1;
    private static int mEventCallRetryCounter;
    private static int mEventCallRetryTotalTimer;
    private static final Object mLock = new Object();
    ImsCallSessionImpl mIcsi;
    private HandlerThread mHandlerThread = null;
    private Handler mHandler = null;
    private int mPrevOnEndedError = -1;
    private int mPrevOnErrorVal = -1;
    private String mPrevErrorString = "";
    private int mPrevRetryAfter = -1;
    private boolean mForceUpdateCallProfileForDtmfEvent = false;
    private boolean mTelephonyReadyToHandleImsCallbacks = false;
    private final ExecutorService mExecutorService = Executors.newSingleThreadExecutor();

    public void onEPdgUnavailable(int i) {
    }

    public void onSessionUpdateRequested(int i, byte[] bArr) {
    }

    public void onStopAlertTone() {
    }

    public void onTtyTextRequest(int i, byte[] bArr) {
    }

    public void onUssdResponse(int i) throws RemoteException {
    }

    public ImsCallSessionEventListener(ImsCallSessionImpl imsCallSessionImpl) {
        this.mIcsi = imsCallSessionImpl;
    }

    public void notifyReadyToHandleImsCallbacks() throws RemoteException {
        synchronized (mLock) {
            StringBuilder sb = new StringBuilder();
            sb.append("notifyReadyToHandleImsCallbacks() ");
            IImsCallSession iImsCallSession = this.mIcsi.mSession;
            sb.append(iImsCallSession != null ? Integer.valueOf(iImsCallSession.getSessionId()) : "null");
            sb.append(" mTelephonyReadyToHandleImsCallbacks = ");
            sb.append(this.mTelephonyReadyToHandleImsCallbacks);
            sb.append(" mPrevOnEndedError = ");
            sb.append(this.mPrevOnEndedError);
            sb.append(" mPrevOnErrorVal = ");
            sb.append(this.mPrevOnErrorVal);
            sb.append(" mPrevErrorString = ");
            sb.append(this.mPrevErrorString);
            sb.append(" mPrevRetryAfter = ");
            sb.append(this.mPrevRetryAfter);
            sb.append(" mForceUpdateCallProfileForDtmfEvent = ");
            sb.append(this.mForceUpdateCallProfileForDtmfEvent);
            Log.i(LOG_TAG, sb.toString());
            if (this.mTelephonyReadyToHandleImsCallbacks) {
                return;
            }
            if (this.mForceUpdateCallProfileForDtmfEvent) {
                this.mExecutorService.submit(new Runnable() { // from class: com.sec.internal.imsphone.ImsCallSessionEventListener$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImsCallSessionEventListener.this.lambda$notifyReadyToHandleImsCallbacks$0();
                    }
                });
            }
            if (this.mPrevOnErrorVal > -1) {
                this.mExecutorService.submit(new Runnable() { // from class: com.sec.internal.imsphone.ImsCallSessionEventListener$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImsCallSessionEventListener.this.lambda$notifyReadyToHandleImsCallbacks$1();
                    }
                });
            }
            if (this.mPrevOnEndedError > -1) {
                this.mExecutorService.submit(new Runnable() { // from class: com.sec.internal.imsphone.ImsCallSessionEventListener$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImsCallSessionEventListener.this.lambda$notifyReadyToHandleImsCallbacks$2();
                    }
                });
            }
            this.mTelephonyReadyToHandleImsCallbacks = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyReadyToHandleImsCallbacks$0() {
        try {
            updateCallProfileForDtmfEvent();
            this.mForceUpdateCallProfileForDtmfEvent = false;
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyReadyToHandleImsCallbacks$1() {
        try {
            Log.i(LOG_TAG, "Telephoy gets ready. Invoke onError()");
            onError(this.mPrevOnErrorVal, this.mPrevErrorString, this.mPrevRetryAfter);
            this.mPrevOnErrorVal = -1;
            this.mPrevErrorString = "";
            this.mPrevRetryAfter = -1;
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyReadyToHandleImsCallbacks$2() {
        try {
            Log.i(LOG_TAG, "Telephoy gets ready. Invoke onEnded()");
            onEnded(this.mPrevOnEndedError);
            this.mPrevOnEndedError = -1;
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onCalling() {
        try {
            IImsCallSession iImsCallSession = this.mIcsi.mSession;
            if (iImsCallSession == null || !ImsCallUtil.isCmcPrimaryType(iImsCallSession.getCmcType())) {
                return;
            }
            this.mIcsi.updateCallProfile();
            ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
            if (imsCallSessionImpl.mListener != null) {
                imsCallSessionImpl.updateRingbackToneDirection(0);
                ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
                ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
                imsCallSessionImpl3.mListener.callSessionProgressing(imsCallSessionImpl3.getCallProfile().getMediaProfile());
            }
        } catch (RemoteException unused) {
        }
    }

    public void onTrying() throws RemoteException {
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        if (imsCallSessionImpl.mListener != null) {
            IImsCallSession iImsCallSession = imsCallSessionImpl.mSession;
            if (iImsCallSession != null) {
                if (ImsCallUtil.isCmcSecondaryType(iImsCallSession.getCmcType())) {
                    ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                    imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
                }
                this.mIcsi.getCallProfile().getMediaProfile().mAudioQuality = 0;
                this.mIcsi.setCallProfile(3);
            }
            ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
            imsCallSessionImpl3.mListener.callSessionInitiating(imsCallSessionImpl3.getCallProfile());
        }
    }

    public void onRingingBack() throws RemoteException {
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        imsCallSessionImpl.mState = 2;
        imsCallSessionImpl.updateCallProfile();
        if (this.mIcsi.mListener != null) {
            notifyAlertInfo();
            this.mIcsi.updateRingbackToneDirection(0);
            ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
            imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
            ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
            imsCallSessionImpl3.mListener.callSessionProgressing(imsCallSessionImpl3.getCallProfile().getMediaProfile());
        }
    }

    public void onSessionProgress(int i) throws RemoteException {
        if (SimUtil.getSimMno(this.mIcsi.mSession.getPhoneId()) == Mno.CMCC) {
            this.mIcsi.updateCallProfile();
            if (this.mIcsi.mListener != null) {
                notifyAlertInfo();
                ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
                imsCallSessionImpl.mListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
                return;
            }
            return;
        }
        ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
        imsCallSessionImpl2.mState = 2;
        imsCallSessionImpl2.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
        if (imsCallSessionImpl3.mListener != null) {
            if (i == -1) {
                i = 0;
            }
            imsCallSessionImpl3.updateRingbackToneDirection(i);
            ImsCallSessionImpl imsCallSessionImpl4 = this.mIcsi;
            imsCallSessionImpl4.mListener.callSessionUpdated(imsCallSessionImpl4.getCallProfile());
            ImsCallSessionImpl imsCallSessionImpl5 = this.mIcsi;
            imsCallSessionImpl5.mListener.callSessionProgressing(imsCallSessionImpl5.getCallProfile().getMediaProfile());
        }
    }

    public void onEarlyMediaStarted(int i) throws RemoteException {
        int videoCrbtSupportType = this.mIcsi.mSession.getVideoCrbtSupportType();
        CallProfile callProfile = this.mIcsi.mSession.getCallProfile();
        this.mForceUpdateCallProfileForDtmfEvent = false;
        if (!this.mTelephonyReadyToHandleImsCallbacks && callProfile.getDirection() == 1 && (videoCrbtSupportType & 4) == 4) {
            Log.i(LOG_TAG, "Telephony not ready to handle ims callbacks. Postpone mForceUpdateCallProfileForDtmfEvent");
            this.mForceUpdateCallProfileForDtmfEvent = true;
        }
        if (SimUtil.getSimMno(this.mIcsi.mSession.getPhoneId()) != Mno.DOCOMO || i == 180) {
            this.mIcsi.mState = 2;
        }
        this.mIcsi.updateCallProfile();
        if (this.mIcsi.mListener == null || callProfile == null || callProfile.getDelayRinging()) {
            return;
        }
        notifyAlertInfo();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        imsCallSessionImpl.mListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
        if (this.mIcsi.mState != 2 || callProfile.getDirection() == 1) {
            return;
        }
        this.mIcsi.updateRingbackToneDirection(3);
        this.mIcsi.getCallProfile().getMediaProfile().mAudioQuality = 2;
        ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
        imsCallSessionImpl2.mListener.callSessionProgressing(imsCallSessionImpl2.getCallProfile().getMediaProfile());
    }

    public void onEstablished(int i) throws RemoteException {
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        int i2 = imsCallSessionImpl.mState;
        imsCallSessionImpl.mState = 4;
        Mno simMno = SimUtil.getSimMno(imsCallSessionImpl.mSession.getPhoneId());
        if (this.mIcsi.isEmergencyCall() && (simMno == Mno.VZW || simMno == Mno.USCC || (simMno == Mno.SPRINT && !this.mIcsi.isWifiCall()))) {
            this.mIcsi.mIsEcbmSupport = true;
        }
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
        if (imsCallSessionImpl2.mListener != null) {
            CallProfile callProfile = imsCallSessionImpl2.mSession.getCallProfile();
            if (callProfile != null && callProfile.isMTCall() && i2 == 4) {
                ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
                imsCallSessionImpl3.mListener.callSessionUpdated(imsCallSessionImpl3.getCallProfile());
            } else {
                ImsCallSessionImpl imsCallSessionImpl4 = this.mIcsi;
                imsCallSessionImpl4.mListener.callSessionInitiated(imsCallSessionImpl4.getCallProfile());
            }
            ImsCallSessionImpl imsCallSessionImpl5 = this.mIcsi;
            int ttyModeFromCallType = imsCallSessionImpl5.getTtyModeFromCallType(imsCallSessionImpl5.mSession.getPhoneId(), i);
            if (ttyModeFromCallType != 0) {
                this.mIcsi.mListener.callSessionTtyModeReceived(ttyModeFromCallType);
            }
        }
    }

    public void onFailure(int i) throws RemoteException {
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        if (imsCallSessionImpl.mSession == null) {
            return;
        }
        if (imsCallSessionImpl.mListener != null) {
            if (imsCallSessionImpl.mState < 2) {
                this.mIcsi.mListener.callSessionInitiatingFailed(new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i));
            } else {
                this.mIcsi.mListener.callSessionTerminated(new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i));
            }
        }
        this.mIcsi.releaseSessionListeners();
    }

    public void onSwitched(int i) throws RemoteException {
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl.mListener;
        if (iImsCallSessionListener != null) {
            iImsCallSessionListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
            ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
            int ttyModeFromCallType = imsCallSessionImpl2.getTtyModeFromCallType(imsCallSessionImpl2.mSession.getPhoneId(), i);
            if (ttyModeFromCallType != 0) {
                this.mIcsi.mListener.callSessionTtyModeReceived(ttyModeFromCallType);
            }
        }
    }

    public void onHeld(boolean z, boolean z2) throws RemoteException {
        this.mIcsi.updateCallProfile();
        this.mIcsi.updateHoldToneType(z2);
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl.mListener;
        if (iImsCallSessionListener != null) {
            iImsCallSessionListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
            if (z) {
                ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                imsCallSessionImpl2.mListener.callSessionHeld(imsCallSessionImpl2.getCallProfile());
            } else {
                ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
                imsCallSessionImpl3.mListener.callSessionHoldReceived(imsCallSessionImpl3.getCallProfile());
            }
        }
    }

    public void onResumed(boolean z) throws RemoteException {
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl.mListener;
        if (iImsCallSessionListener != null) {
            iImsCallSessionListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
            if (z) {
                ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                imsCallSessionImpl2.mListener.callSessionResumed(imsCallSessionImpl2.getCallProfile());
            } else {
                ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
                imsCallSessionImpl3.mListener.callSessionResumeReceived(imsCallSessionImpl3.getCallProfile());
            }
        }
    }

    public void onForwarded() throws RemoteException {
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        if (imsCallSessionImpl.mListener != null) {
            int direction = imsCallSessionImpl.mSession.getCallProfile().getDirection();
            if (direction == 0) {
                this.mIcsi.onSuppServiceReceived(direction, 2);
            }
            ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
            imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
        }
    }

    private boolean needSkipUntilTelephonyReady(IImsCallSession iImsCallSession) throws RemoteException {
        if (iImsCallSession == null) {
            return false;
        }
        CallProfile callProfile = iImsCallSession.getCallProfile();
        int cmcType = iImsCallSession.getCmcType();
        StringBuilder sb = new StringBuilder();
        sb.append("needSkipUntilTelephonyReady() mTelephonyReadyToHandleImsCallbacks: ");
        sb.append(this.mTelephonyReadyToHandleImsCallbacks);
        sb.append(" callType: ");
        sb.append(callProfile != null ? Integer.valueOf(callProfile.getCallType()) : "null");
        sb.append(" cmcType: ");
        sb.append(cmcType);
        Log.i(LOG_TAG, sb.toString());
        return (this.mTelephonyReadyToHandleImsCallbacks || callProfile == null || callProfile.getCallType() == 12 || (cmcType != 0 && !ImsCallUtil.isCmcSecondaryType(cmcType))) ? false : true;
    }

    public void onEnded(int i) throws RemoteException {
        ImsReasonInfo imsReasonInfo;
        ImsReasonInfo imsReasonInfo2;
        synchronized (mLock) {
            mEventCallRetryCounter = 0;
            mEventCallRetryTotalTimer = 0;
            IImsCallSession iImsCallSession = this.mIcsi.mSession;
            if (iImsCallSession == null) {
                return;
            }
            if (needSkipUntilTelephonyReady(iImsCallSession)) {
                Log.i(LOG_TAG, "Telephony not ready to handle ims callbacks. Postpone onEnded()");
                this.mPrevOnEndedError = i;
                return;
            }
            Mno simMno = SimUtil.getSimMno(this.mIcsi.mSession.getPhoneId());
            int videoCrbtSupportType = this.mIcsi.mSession.getVideoCrbtSupportType();
            ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
            boolean z = true;
            if (imsCallSessionImpl.mListener != null && ((videoCrbtSupportType & 1) == 1 || (videoCrbtSupportType & 2) == 2)) {
                imsCallSessionImpl.updateCallProfile();
                ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
            }
            CallProfile callProfile = this.mIcsi.mSession.getCallProfile();
            Log.i(LOG_TAG, "onEnded(), cmcType: " + this.mIcsi.mSession.getCmcType() + ", sessionState: " + this.mIcsi.mState + ", error: " + i);
            ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
            if (imsCallSessionImpl3.mListener != null) {
                if (imsCallSessionImpl3.getPrevInternalState() == CallConstants.STATE.HeldCall && i == 210) {
                    this.mIcsi.onSuppServiceReceived(1, 5);
                }
                ImsCallSessionImpl imsCallSessionImpl4 = this.mIcsi;
                if (imsCallSessionImpl4.mState < 2) {
                    if (callProfile == null || !callProfile.isPullCall() || !ImsCallUtil.isCmcSecondaryType(this.mIcsi.mSession.getCmcType())) {
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("onEnded(), CallDirection: ");
                    sb.append(callProfile == null ? "cp is null" : Integer.valueOf(callProfile.getDirection()));
                    sb.append(", isSdPulling: ");
                    sb.append(z);
                    Log.i(LOG_TAG, sb.toString());
                    if (callProfile != null && callProfile.isMTCall() && !z) {
                        if (this.mIcsi.needDeclineDuringQecCall()) {
                            imsReasonInfo2 = new ImsReasonInfo(Id.REQUEST_IM_START_MEDIA, i);
                        } else {
                            imsReasonInfo2 = new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i);
                        }
                        this.mIcsi.mListener.callSessionTerminated(imsReasonInfo2);
                    } else {
                        if (callProfile != null && callProfile.isMOCall()) {
                            ImsCallSessionImpl imsCallSessionImpl5 = this.mIcsi;
                            if (imsCallSessionImpl5.mVolteServiceModule.isVolteRetryRequired(imsCallSessionImpl5.mSession.getPhoneId(), callProfile.getCallType(), new SipError(i))) {
                                if (simMno == Mno.TMOUS && i == 2414) {
                                    imsReasonInfo = new ImsReasonInfo(ImSessionEvent.SEND_MESSAGE, i);
                                } else {
                                    imsReasonInfo = new ImsReasonInfo(147, i);
                                }
                                this.mIcsi.mListener.callSessionInitiatingFailed(imsReasonInfo);
                            }
                        }
                        if (callProfile != null && callProfile.hasCSFBError()) {
                            this.mIcsi.mListener.callSessionInitiatingFailed(new ImsReasonInfo(146, i));
                        } else {
                            this.mIcsi.mListener.callSessionInitiatingFailed(new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i));
                        }
                    }
                } else {
                    if (imsCallSessionImpl4.mSession.getCmcType() > 0) {
                        ImsCallSessionImpl imsCallSessionImpl6 = this.mIcsi;
                        if (imsCallSessionImpl6.mState == 4) {
                            this.mIcsi.mListener.callSessionTerminated(imsCallSessionImpl6.changeCmcErrorReason(imsCallSessionImpl6.mSession.getCmcType(), i));
                        }
                    }
                    if (callProfile != null && callProfile.hasCSFBError() && simMno.isKor() && this.mIcsi.mState < 4) {
                        this.mIcsi.mListener.callSessionTerminated(new ImsReasonInfo(146, i));
                    } else if (callProfile != null && callProfile.hasCSFBError() && simMno == Mno.TMOUS && i == 503 && !SemSystemProperties.get("ro.boot.hardware", "").contains("qcom")) {
                        this.mIcsi.mListener.callSessionInitiatingFailed(new ImsReasonInfo(146, i, "100 Trying Timeout"));
                    } else {
                        this.mIcsi.mListener.callSessionTerminated(new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i));
                    }
                }
            } else if (imsCallSessionImpl3.mMmTelFeatureImpl.hasConferenceHost()) {
                ImsCallSessionImpl conferenceHost = this.mIcsi.mMmTelFeatureImpl.getConferenceHost();
                if (conferenceHost.getListener() != null) {
                    conferenceHost.getListener().callSessionMergeFailed(new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i, ""));
                }
            }
            if (this.mIcsi.isMultiparty()) {
                this.mIcsi.mMmTelFeatureImpl.setConferenceHost(null);
            }
            ImsCallSessionImpl imsCallSessionImpl7 = this.mIcsi;
            if (imsCallSessionImpl7.mIsEcbmSupport) {
                imsCallSessionImpl7.mMmTelFeatureImpl.getImsEcbmImpl().enterEmergencyCallbackMode();
            }
            ImsCallSessionImpl imsCallSessionImpl8 = this.mIcsi;
            imsCallSessionImpl8.mState = 8;
            imsCallSessionImpl8.mIsEcbmSupport = false;
            imsCallSessionImpl8.releaseSessionListeners();
            ImsVideoCallProviderImpl imsVideoCallProviderImpl = this.mIcsi.mImsVideoCallProvider;
            if (imsVideoCallProviderImpl != null) {
                imsVideoCallProviderImpl.setCallback(null);
            }
        }
    }

    public void onError(int i, String str, int i2) throws RemoteException {
        synchronized (mLock) {
            IImsCallSession iImsCallSession = this.mIcsi.mSession;
            if (iImsCallSession == null) {
                return;
            }
            if (needSkipUntilTelephonyReady(iImsCallSession)) {
                Log.i(LOG_TAG, "Telephony not ready to handle ims callbacks. Postpone onError()");
                this.mPrevOnErrorVal = i;
                this.mPrevErrorString = str;
                this.mPrevRetryAfter = i2;
                return;
            }
            CallProfile callProfile = this.mIcsi.mSession.getCallProfile();
            int cmcType = this.mIcsi.mSession.getCmcType();
            if (cmcType > 0) {
                Log.i(LOG_TAG, "onError(), error: " + i + ", sessionState: " + this.mIcsi.mState);
                if (ImsCallUtil.isCmcPrimaryType(cmcType)) {
                    ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
                    if (imsCallSessionImpl.mState <= 2 && imsCallSessionImpl.getCmcCallSessionManager() != null && (this.mIcsi.getCmcCallSessionManager().getP2pSessionSize() > 0 || this.mIcsi.getCmcCallSessionManager().isExistP2pConnection())) {
                        if (i == 603) {
                            this.mIcsi.mState = 2;
                        } else {
                            Log.i(LOG_TAG, "onError(), ignore error of cmcCall. just return: " + this.mIcsi.getCmcCallSessionManager().getP2pSessionSize());
                            return;
                        }
                    }
                }
                this.mIcsi.updateCallProfile();
                ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl2.mListener;
                if (iImsCallSessionListener != null) {
                    iImsCallSessionListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
                }
            }
            ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
            if (imsCallSessionImpl3.mListener != null) {
                if (callProfile != null && i == 603 && "Outgoing Call Barred".equals(str)) {
                    this.mIcsi.onSuppServiceReceived(callProfile.getDirection(), 5);
                }
                if (this.mIcsi.mState < 2) {
                    if (onErrorBeforeNego(i, str, i2)) {
                        return;
                    }
                } else if (onErrorWhileNegoOrLater(i, str, i2)) {
                    return;
                }
            } else if (imsCallSessionImpl3.mMmTelFeatureImpl.hasConferenceHost()) {
                ImsCallSessionImpl conferenceHost = this.mIcsi.mMmTelFeatureImpl.getConferenceHost();
                conferenceHost.mIsConferenceHost = false;
                if (conferenceHost.getListener() != null) {
                    ImsReasonInfo imsReasonInfo = new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i, str);
                    conferenceHost.getListener().callSessionMergeFailed(imsReasonInfo);
                    if (this.mIcsi.mMmTelFeatureImpl.isInitialMerge() && i == 1105) {
                        conferenceHost.getListener().callSessionTerminated(imsReasonInfo);
                    }
                }
            }
            if (callProfile != null && callProfile.isConferenceCall()) {
                this.mIcsi.mMmTelFeatureImpl.setConferenceHost(null);
            }
        }
    }

    private boolean onErrorBeforeNego(int i, String str, int i2) throws RemoteException {
        ImsReasonInfo imsReasonInfo;
        ImsReasonInfo imsReasonInfo2;
        Mno simMno = SimUtil.getSimMno(this.mIcsi.mSession.getPhoneId());
        CallProfile callProfile = this.mIcsi.mSession.getCallProfile();
        if (simMno == Mno.TMOUS && i == 503 && !SemSystemProperties.get("ro.boot.hardware", "").contains("qcom")) {
            Log.i(LOG_TAG, "TMO E911 SERVICE_UNAVAILABLE will be handled onEnded()");
            return false;
        }
        if (callProfile != null && callProfile.isMTCall()) {
            if (ImsCallUtil.isCmcSecondaryType(this.mIcsi.mSession.getCmcType()) && callProfile.isPullCall()) {
                ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
                this.mIcsi.mListener.callSessionInitiatingFailed(imsCallSessionImpl.changeCmcErrorReason(imsCallSessionImpl.mSession.getCmcType(), i, str));
            } else {
                if (this.mIcsi.needDeclineDuringQecCall()) {
                    imsReasonInfo2 = new ImsReasonInfo(Id.REQUEST_IM_START_MEDIA, i);
                } else if ((i > 5000 && i < 6000) || (i >= 6034 && i <= 6127)) {
                    imsReasonInfo2 = new ImsReasonInfo(Id.REQUEST_GC_UPDATE_PARTICIPANTS, i);
                } else {
                    imsReasonInfo2 = new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i);
                }
                this.mIcsi.mListener.callSessionTerminated(imsReasonInfo2);
            }
        } else {
            if (callProfile != null && callProfile.isMOCall()) {
                ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                if (imsCallSessionImpl2.mVolteServiceModule.isVolteRetryRequired(imsCallSessionImpl2.mSession.getPhoneId(), callProfile.getCallType(), new SipError(i, str), i2)) {
                    if (simMno == Mno.TMOUS && i == 2414) {
                        imsReasonInfo = new ImsReasonInfo(ImSessionEvent.SEND_MESSAGE, i);
                    } else {
                        imsReasonInfo = new ImsReasonInfo(147, i, str);
                    }
                    if (simMno == Mno.KDDI || simMno == Mno.GCF || (simMno.isDish() && SipErrorBase.SipErrorType.ERROR_5XX.equals(i) && i2 > 0)) {
                        if (handleSilentRetry(simMno, i2, i, str)) {
                            return true;
                        }
                        imsReasonInfo = new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i, str);
                    }
                    this.mIcsi.mListener.callSessionInitiatingFailed(imsReasonInfo);
                }
            }
            if (ImsCallUtil.isCmcSecondaryType(this.mIcsi.mSession.getCmcType())) {
                ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
                this.mIcsi.mListener.callSessionInitiatingFailed(imsCallSessionImpl3.changeCmcErrorReason(imsCallSessionImpl3.mSession.getCmcType(), i, str));
            } else if (callProfile != null && callProfile.hasCSFBError() && i != 381 && i != 382) {
                this.mIcsi.mListener.callSessionInitiatingFailed(new ImsReasonInfo(146, i, str));
            } else {
                if ("LTE Retry in UAC Barred".equals(str)) {
                    if (simMno == Mno.VZW) {
                        this.mIcsi.mSession.removeCallStateMachineMessage(301);
                    }
                    SecImsNotifier.getInstance().onTriggerEpsFallback(this.mIcsi.mSession.getPhoneId(), 2);
                    return false;
                }
                ImsReasonInfo imsReasonInfo3 = new ImsReasonInfo(DataTypeConvertor.convertCallErrorReasonToFw(i), i, str);
                if (i == 381 || i == 382) {
                    imsReasonInfo3.mExtraCode = i;
                    int convertUrnToEccCat = DataTypeConvertor.convertUrnToEccCat(str);
                    imsReasonInfo3.mExtraMessage = String.valueOf(convertUrnToEccCat);
                    if (convertUrnToEccCat == 254) {
                        this.mIcsi.mMmTelFeatureImpl.setServiceUrn(str);
                    }
                }
                this.mIcsi.mListener.callSessionInitiatingFailed(imsReasonInfo3);
            }
        }
        ImsCallSessionImpl imsCallSessionImpl4 = this.mIcsi;
        imsCallSessionImpl4.mState = 8;
        imsCallSessionImpl4.releaseSessionListeners();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean onErrorWhileNegoOrLater(int r10, java.lang.String r11, int r12) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 332
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.ImsCallSessionEventListener.onErrorWhileNegoOrLater(int, java.lang.String, int):boolean");
    }

    private boolean handleSilentRetry(Mno mno, int i, int i2, String str) {
        HandlerThread handlerThread = new HandlerThread("ImsCallSessionImpl");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.sec.internal.imsphone.ImsCallSessionEventListener.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 100) {
                    return;
                }
                try {
                    Log.i(ImsCallSessionEventListener.LOG_TAG, "Received Event ");
                    ImsCallSessionEventListener.this.mIcsi.mListener.callSessionInitiatingFailed((ImsReasonInfo) message.obj);
                } catch (RemoteException unused) {
                }
            }
        };
        ImsReasonInfo imsReasonInfo = new ImsReasonInfo(147, i2, str);
        if (mno.isDish()) {
            int i3 = mEventCallRetryCounter + 1;
            mEventCallRetryCounter = i3;
            if (i3 <= 1) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(100, imsReasonInfo), i * 1000);
                return true;
            }
        } else if (mno == Mno.KDDI || mno == Mno.GCF) {
            int i4 = mEventCallRetryTotalTimer + i;
            mEventCallRetryTotalTimer = i4;
            int i5 = mEventCallRetryCounter + 1;
            mEventCallRetryCounter = i5;
            if (i > 0 && i5 < 5 && i4 < 45) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(100, imsReasonInfo), i * 1000);
                return true;
            }
        }
        mEventCallRetryCounter = 0;
        mEventCallRetryTotalTimer = 0;
        this.mHandlerThread.quit();
        return false;
    }

    public void onProfileUpdated(MediaProfile mediaProfile, MediaProfile mediaProfile2) throws RemoteException {
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl.mListener;
        if (iImsCallSessionListener != null) {
            iImsCallSessionListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
        }
    }

    public void onConferenceEstablished() throws RemoteException {
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        imsCallSessionImpl.mState = 4;
        imsCallSessionImpl.updateCallProfile();
    }

    public void onParticipantUpdated(int i, String[] strArr, int[] iArr, int[] iArr2) throws RemoteException {
        this.mIcsi.mMmTelFeatureImpl.clearConferenceStateList();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            String str = strArr[i2];
            if (str.startsWith("*23#")) {
                str = str.substring(4, str.length());
            }
            String replaceAll = str.replaceAll("[^0-9]", "");
            if (replaceAll.startsWith("010")) {
                replaceAll = replaceAll.substring(3, replaceAll.length());
            }
            if (replaceAll.length() > 8) {
                replaceAll = replaceAll.substring(0, 8);
            }
            this.mIcsi.mMmTelFeatureImpl.putConferenceStateList(Integer.parseInt(replaceAll), this.mIcsi.mSession.getCallId(), strArr[i2], Integer.toString(this.mIcsi.mSession.getCallId()), ImsCallUtil.participantStatus(iArr[i2]), iArr2[i2], this.mIcsi.getCallProfile());
        }
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        imsCallSessionImpl.mMmTelFeatureImpl.updateSecConferenceInfo(imsCallSessionImpl.mCallProfile);
        ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
        imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.mCallProfile);
        ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
        imsCallSessionImpl3.mListener.callSessionConferenceStateUpdated(imsCallSessionImpl3.mMmTelFeatureImpl.getImsConferenceState());
    }

    public void onParticipantAdded(int i) throws RemoteException {
        ImsCallSessionImpl callSession = this.mIcsi.mMmTelFeatureImpl.getCallSession(i);
        if (!this.mIcsi.mMmTelFeatureImpl.hasConferenceHost() || callSession == null) {
            return;
        }
        ImsCallSessionImpl conferenceHost = this.mIcsi.mMmTelFeatureImpl.getConferenceHost();
        IImsCallSession sessionByCallId = this.mIcsi.mVolteServiceModule.getSessionByCallId(i);
        if (sessionByCallId != null) {
            CallProfile callProfile = sessionByCallId.getCallProfile();
            String dialingNumber = callProfile.getDialingNumber();
            if (!TextUtils.isEmpty(dialingNumber)) {
                this.mIcsi.mMmTelFeatureImpl.putConferenceState(i, dialingNumber, Integer.toString(i), "connected", this.mIcsi.getCallProfile(), callProfile.getLetteringText());
            }
            ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
            if (imsCallSessionImpl.mListener == null) {
                if (conferenceHost.getListener() != null) {
                    ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
                    imsCallSessionImpl2.mMmTelFeatureImpl.updateSecConferenceInfo(imsCallSessionImpl2.mCallProfile);
                    conferenceHost.getListener().callSessionUpdated(this.mIcsi.mCallProfile);
                    conferenceHost.getListener().callSessionConferenceStateUpdated(this.mIcsi.mMmTelFeatureImpl.getImsConferenceState());
                }
            } else {
                imsCallSessionImpl.mMmTelFeatureImpl.updateSecConferenceInfo(imsCallSessionImpl.mCallProfile);
                ImsCallSessionImpl imsCallSessionImpl3 = this.mIcsi;
                imsCallSessionImpl3.mListener.callSessionUpdated(imsCallSessionImpl3.mCallProfile);
                ImsCallSessionImpl imsCallSessionImpl4 = this.mIcsi;
                imsCallSessionImpl4.mListener.callSessionConferenceStateUpdated(imsCallSessionImpl4.mMmTelFeatureImpl.getImsConferenceState());
            }
            callSession.mIsConferenceParticipant = true;
        }
        if (callSession.mIsConferenceHost && conferenceHost.getListener() != null) {
            conferenceHost.getListener().callSessionMergeComplete(this.mIcsi.mImpl);
            ImsCallSessionImpl imsCallSessionImpl5 = this.mIcsi;
            imsCallSessionImpl5.mMmTelFeatureImpl.setConferenceHost((ImsCallSessionImpl) imsCallSessionImpl5.mImpl);
            ImsCallSessionImpl imsCallSessionImpl6 = this.mIcsi;
            IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl6.mListener;
            if (iImsCallSessionListener == null) {
                conferenceHost.getListener().callSessionResumed(this.mIcsi.getCallProfile());
            } else {
                iImsCallSessionListener.callSessionResumed(imsCallSessionImpl6.getCallProfile());
            }
        }
        if (this.mIcsi.mMmTelFeatureImpl.isInitialMerge()) {
            return;
        }
        callSession.getListener().callSessionMergeComplete((com.android.ims.internal.IImsCallSession) null);
        if (this.mIcsi.mMmTelFeatureImpl.getConferenceHost().getInternalState() == CallConstants.STATE.HeldCall) {
            this.mIcsi.mMmTelFeatureImpl.getConferenceHost().resume(null);
        }
    }

    public void onParticipantRemoved(int i) {
        this.mIcsi.updateConferenceStatus(i, "disconnected");
        this.mIcsi.mMmTelFeatureImpl.removeConferenceState(i);
    }

    public void onConfParticipantHeld(int i, boolean z) throws RemoteException {
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        if (imsCallSessionImpl.mListener != null) {
            imsCallSessionImpl.onSuppServiceReceived(1, 32);
        }
        this.mIcsi.updateConferenceStatus(i, "on-hold");
    }

    public void onConfParticipantResumed(int i, boolean z) throws RemoteException {
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        if (imsCallSessionImpl.mListener != null) {
            imsCallSessionImpl.onSuppServiceReceived(1, 3);
        }
        this.mIcsi.updateConferenceStatus(i, "connected");
    }

    public void onUssdReceived(int i, int i2, byte[] bArr) throws RemoteException {
        String str;
        try {
            str = new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            str = null;
        }
        if (i == 2) {
            this.mIcsi.mListener.callSessionUssdMessageReceived(1, str);
            return;
        }
        if (str != null && str.contains("error-code")) {
            ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
            if (imsCallSessionImpl.mIsUssdTerminatedByUser) {
                Log.i(LOG_TAG, "Ignoring USSD error because session was terminated by user");
                return;
            } else {
                imsCallSessionImpl.mListener.callSessionUssdMessageReceived(USSD_MODE_NW_ERROR, str);
                return;
            }
        }
        this.mIcsi.mListener.callSessionUssdMessageReceived(0, str);
    }

    public void onEpdgStateChanged() throws RemoteException {
        this.mIcsi.updateCallProfile();
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        IImsCallSessionListener iImsCallSessionListener = imsCallSessionImpl.mListener;
        if (iImsCallSessionListener != null) {
            iImsCallSessionListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
        }
    }

    public void onSessionChanged(int i) throws RemoteException {
        IImsCallSession sessionByCallId = this.mIcsi.mVolteServiceModule.getSessionByCallId(i);
        if (sessionByCallId != null) {
            this.mIcsi.mSession = sessionByCallId;
        }
    }

    public void onImsGeneralEvent(String str, Bundle bundle) throws RemoteException {
        if (this.mIcsi.mListener != null) {
            Log.i(LOG_TAG, "onImsGeneralEvent:" + str);
            if (ImsGeneralEvent.isOnlyCallProfileChanged(str)) {
                this.mIcsi.updateCallProfile();
                ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
                imsCallSessionImpl.mListener.callSessionUpdated(imsCallSessionImpl.getCallProfile());
                return;
            }
            this.mIcsi.mListener.callSessionImsCallEvent(str, bundle);
        }
    }

    public void onRetryingVoLteOrCsCall(int i) throws RemoteException {
        if (i == 1) {
            this.mIcsi.mListener.callSessionInitiatedFailed(new ImsReasonInfo(147, NSDSNamespaces.NSDSResponseCode.ERROR_SERVER_ERROR, "PS Retry Required"));
        } else {
            this.mIcsi.mListener.callSessionInitiatedFailed(new ImsReasonInfo(146, 1112, "CS Retry Required"));
        }
        ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
        imsCallSessionImpl.mState = 8;
        imsCallSessionImpl.releaseSessionListeners();
    }

    private void notifyAlertInfo() throws RemoteException {
        CallProfile callProfile = this.mIcsi.mSession.getCallProfile();
        String alertInfo = callProfile.getAlertInfo();
        Mno simMno = SimUtil.getSimMno(this.mIcsi.mSession.getPhoneId());
        if ("<urn:alert:service:call-waiting>".equals(alertInfo)) {
            ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
            if (!imsCallSessionImpl.mIsCWNotified) {
                imsCallSessionImpl.mIsCWNotified = true;
                imsCallSessionImpl.onSuppServiceReceived(0, 3);
                return;
            }
        }
        if (simMno == Mno.CMCC) {
            if ("<urn:alert:service:forward>".equals(alertInfo) && callProfile.getDirection() == 0) {
                this.mIcsi.onSuppServiceReceived(callProfile.getDirection(), 2);
            } else if ("<urn:alert:service:normal>".equals(alertInfo)) {
                this.mIcsi.onSuppServiceReceived(0, 9);
            }
        }
    }

    private void updateCallProfileForDtmfEvent() throws RemoteException {
        this.mIcsi.updateCallProfile();
        CallProfile callProfile = this.mIcsi.mSession.getCallProfile();
        if (this.mForceUpdateCallProfileForDtmfEvent) {
            ImsCallSessionImpl imsCallSessionImpl = this.mIcsi;
            if (imsCallSessionImpl.mState != 2 || imsCallSessionImpl.mListener == null || callProfile == null || callProfile.getDelayRinging()) {
                return;
            }
            Log.i(LOG_TAG, "updateCallProfileForDtmfEvent");
            ImsCallSessionImpl imsCallSessionImpl2 = this.mIcsi;
            imsCallSessionImpl2.mListener.callSessionUpdated(imsCallSessionImpl2.getCallProfile());
        }
    }

    public void onCallQualityChanged() throws RemoteException {
        this.mIcsi.updateCallProfile();
        if (this.mIcsi.mListener != null) {
            Log.i(LOG_TAG, "onCallQualityChanged()");
            this.mIcsi.mListener.callQualityChanged(new CallQuality());
        }
    }
}
