package com.sec.internal.ims.core.handler;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.Dialog;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.ims.core.handler.secims.UserAgent;
import com.sec.internal.ims.servicemodules.volte2.data.CallSetupData;
import com.sec.internal.ims.servicemodules.volte2.data.ConfCallSetupData;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class VolteHandler extends BaseHandler implements IVolteServiceInterface {
    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int addParticipantToNWayConferenceCall(int i, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int addParticipantToNWayConferenceCall(int i, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int addUserForConferenceCall(int i, ConfCallSetupData confCallSetupData, boolean z) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int answerCallWithCallType(int i, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int answerCallWithCallType(int i, int i2, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int answerCallWithCallType(int i, int i2, String str, String str2) {
        return 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void clearAllCallInternal(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int deleteTcpSocket(int i, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int endCall(int i, int i2, SipReason sipReason) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int handleDtmf(int i, int i2, int i3, int i4, Message message) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int holdCall(int i) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int makeCall(int i, CallSetupData callSetupData, HashMap<String, String> hashMap, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int modifyCallType(int i, int i2, int i3) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int proceedIncomingCall(int i, boolean z, HashMap<String, String> hashMap, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForAudioPathUpdated(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCallStateEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCdpnInfoEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCmcInfoEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForCurrentLocationDiscoveryDuringEmergencyCallEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDedicatedBearerNotifyEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDialogEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDialogSubscribeStatus(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForDtmfEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForIncomingCallEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForReferStatus(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForRrcConnectionEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForRtpLossRateNoti(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForSIPMSGEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForTextEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerForUssdEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void registerQuantumSecurityStatusEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int rejectCall(int i, int i2, SipError sipError) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int rejectModifyCallType(int i, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int removeParticipantFromNWayConferenceCall(int i, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int removeParticipantFromNWayConferenceCall(int i, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void replaceSipCallId(int i, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void replaceUserAgent(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int replyModifyCallType(int i, int i2, int i3, int i4) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int replyModifyCallType(int i, int i2, int i3, int i4, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int replyWithIdc(int i, int i2, int i3, int i4, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int resumeCall(int i) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void sendDtmfEvent(int i, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendEmergencyLocationPublish(int i) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void sendNegotiatedLocalSdp(int i, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendReInvite(int i, SipReason sipReason) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendReInviteWithIdcExtra(int i, String str) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendText(int i, String str, int i2) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendTtyData(int i, byte[] bArr) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setAutomaticMode(int i, boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setOutOfService(boolean z, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setRttMode(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int setTtyMode(int i, int i2, int i3) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setTtyMode(String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void setVideoCrtAudio(int i, boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int startNWayConferenceCall(int i, ConfCallSetupData confCallSetupData) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForAudioPathUpdated(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCallStateEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCdpnInfoEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCmcInfoEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDedicatedBearerNotifyEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDialogEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDialogSubscribeStatus(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForDtmfEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForIncomingCallEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForReferStatus(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForRrcConnectionEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForRtpLossRateNoti(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForSIPMSGEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForTextEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterForUssdEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void unregisterQuantumSecurityStatusEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateAirplaneMode(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateAudioInterface(int i, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateAudioInterface(int i, String str, UserAgent userAgent) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateNrSaModeOnStart(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateScreenOnOff(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public void updateXqEnable(int i, boolean z) {
    }

    protected VolteHandler(Looper looper) {
        super(looper);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int transferCall(int i, String str) {
        Log.i(this.LOG_TAG, "transferCall: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int cancelTransferCall(int i) {
        Log.i(this.LOG_TAG, "cancelTransferCall: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int pullingCall(int i, String str, String str2, String str3, Dialog dialog, List<String> list) {
        Log.i(this.LOG_TAG, "pullingCall: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int publishDialog(int i, String str, String str2, String str3, int i2, boolean z) {
        Log.i(this.LOG_TAG, "publishDialog: not implemented.");
        return -1;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendInfo(int i, int i2, String str, int i3) {
        Log.i(this.LOG_TAG, "sendInfo: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendCmcInfo(int i, Bundle bundle) {
        Log.i(this.LOG_TAG, "sendCmcInfo: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int sendVcsInfo(int i, Bundle bundle) {
        Log.i(this.LOG_TAG, "sendVcsInfo: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int enableQuantumSecurityService(int i, boolean z) {
        Log.i(this.LOG_TAG, "enableQuantumSecurityService: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int setQuantumSecurityInfo(int i, Bundle bundle) {
        Log.i(this.LOG_TAG, "setQuantumSecurityInfo: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int startVideoEarlyMedia(int i) {
        Log.i(this.LOG_TAG, "startVideoEarlyMedia: not implemented.");
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface
    public int handleCmcCsfb(int i) {
        Log.i(this.LOG_TAG, "handleCmcCsfb: not implemented.");
        return -1;
    }
}
