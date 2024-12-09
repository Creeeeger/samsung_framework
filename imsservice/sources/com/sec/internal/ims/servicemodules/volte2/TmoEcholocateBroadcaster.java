package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.ims.servicemodules.volte2.data.EcholocateEvent;
import com.sec.internal.log.IMSLog;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class TmoEcholocateBroadcaster {
    private static final String LOG_TAG = "Echolocate_Broadcaster";
    private final Context mContext;
    private TmoEcholocateController mEchoController;
    private TmoEcholocateInfo mEchoInfo;
    protected Queue<Intent> mPendingQue = new LinkedList();
    protected boolean[] mRetryINVITE;

    public TmoEcholocateBroadcaster(Context context, TmoEcholocateController tmoEcholocateController, TmoEcholocateInfo tmoEcholocateInfo) {
        this.mContext = context;
        this.mEchoController = tmoEcholocateController;
        this.mEchoInfo = tmoEcholocateInfo;
        this.mRetryINVITE = new boolean[tmoEcholocateController.getPhoneCount()];
    }

    public void reset(int i) {
        this.mRetryINVITE[i] = false;
        this.mPendingQue.clear();
    }

    protected void sendDetailCallEvent(int i, EcholocateEvent.EcholocateHandoverMessage echolocateHandoverMessage) {
        ImsCallSession foregroundSession;
        if (!this.mEchoInfo.checkSecurity(this.mEchoController.getSalescode())) {
            Log.i(LOG_TAG, "sendDetailCallEvent - Do not broadcast.");
            return;
        }
        if ("PSHO_SUCCESSFUL".equals(echolocateHandoverMessage.getCallState()) && (foregroundSession = this.mEchoController.mModule.getForegroundSession(i)) != null) {
            Log.i(LOG_TAG, "DedicatedBearer:" + foregroundSession.getDedicatedBearerState(1));
            if (foregroundSession.getDedicatedBearerState(1) == 3) {
                echolocateHandoverMessage.setCallState("PSHO_FAILED");
            }
        }
        Intent intent = new Intent("diagandroid.phone.detailedCallState");
        intent.putExtra("CallNumber", echolocateHandoverMessage.getCallNumber());
        intent.putExtra("CallState", echolocateHandoverMessage.getCallState());
        intent.putExtra("VoiceAccessNetworkStateType", echolocateHandoverMessage.getNetworkType());
        intent.putExtra("VoiceAccessNetworkStateBand", echolocateHandoverMessage.getNetworkBand());
        intent.putExtra("VoiceAccessNetworkStateSignal", echolocateHandoverMessage.getNetworkSignal());
        intent.putExtra("CallID", echolocateHandoverMessage.getCallId());
        intent.putExtra("oemIntentTimestamp", echolocateHandoverMessage.getTime());
        intent.putExtra("cellid", echolocateHandoverMessage.getCellId());
        intent.putExtra("EpdgHoFailureCause", "NA");
        this.mContext.sendBroadcast(intent, "diagandroid.phone.receiveDetailedCallState");
        Log.i(LOG_TAG, "sendEPSFB state for now");
    }

    protected void sendPendingSignallingMSG(long j) {
        while (!this.mPendingQue.isEmpty()) {
            Intent poll = this.mPendingQue.poll();
            if (j > 0) {
                poll.putExtra("cellid", String.valueOf(j));
                poll.putExtra("RAT", "3GPP-E-UTRAN-FDD");
            }
            Log.i(LOG_TAG, "sendPendingSignallingMSG :: Origin " + poll.getStringExtra("IMSSignallingMessageOrigin") + " oemIntentTimestamp " + poll.getStringExtra("oemIntentTimestamp"));
            this.mContext.sendBroadcast(poll, "diagandroid.phone.receiveDetailedCallState");
        }
    }

    protected void sendTmoEcholocateHandoverFail(EcholocateEvent.EchoSignallingIntentData echoSignallingIntentData) {
        String str;
        int i;
        String str2;
        if (!this.mEchoInfo.checkSecurity(this.mEchoController.getSalescode())) {
            Log.i(LOG_TAG, "sendTmoEcholocateHandoverFail: sendDetailCallEvent - Do not broadcast.");
            return;
        }
        Intent intent = new Intent("diagandroid.phone.detailedCallState");
        intent.putExtra("VoiceAccessNetworkStateBand", echoSignallingIntentData.getNetworkBand());
        intent.putExtra("VoiceAccessNetworkStateSignal", echoSignallingIntentData.getNetworkSignal());
        intent.putExtra("oemIntentTimestamp", echoSignallingIntentData.getTime());
        String networkType = echoSignallingIntentData.getNetworkType();
        intent.putExtra("VoiceAccessNetworkStateType", networkType);
        EcholocateEvent.EcholocateSignalMessage signalMsg = echoSignallingIntentData.getSignalMsg();
        ImsCallSession sessionByRegId = this.mEchoController.mModule.getSessionByRegId(Integer.parseInt(signalMsg.getSessionid()));
        if (sessionByRegId == null || sessionByRegId.getCallProfile() == null) {
            str = null;
            i = 0;
            str2 = null;
        } else {
            str = sessionByRegId.getCallProfile().getDialingNumber();
            str2 = sessionByRegId.getCallProfile().getEchoCallId();
            i = sessionByRegId.getPhoneId();
        }
        intent.putExtra("cellid", this.mEchoInfo.getCellId(i, networkType, signalMsg.isEpdgCall()));
        intent.putExtra("CallState", "EPDG_HO_FAILED");
        intent.putExtra("CallID", str2);
        intent.putExtra("CallNumber", str);
        String str3 = "IMS_REGISTRATION_FAILURE_AFTER_HO_" + signalMsg.getLine1().split(" ")[1];
        intent.putExtra("EpdgHoFailureCause", str3);
        this.mContext.sendBroadcast(intent, "diagandroid.phone.receiveDetailedCallState");
        Log.i(LOG_TAG, "sendTmoEcholocateHandoverFail :: Origin [" + signalMsg.getOrigin() + "] Line1 [ " + IMSLog.checker(signalMsg.getLine1()) + "] Cseq [" + signalMsg.getCseq() + "] Reason [" + signalMsg.getReason() + "] callId_App [" + str2 + "] callId_IMS [" + signalMsg.getCallId() + "] handoverFailString [" + str3 + "]");
    }

    protected void sendTmoEcholocateSignallingMSG(EcholocateEvent.EchoSignallingIntentData echoSignallingIntentData) {
        String str;
        String str2;
        String str3;
        boolean z;
        int i;
        String str4;
        int indexOf;
        String str5;
        String str6;
        EcholocateEvent.EcholocateSignalMessage signalMsg = echoSignallingIntentData.getSignalMsg();
        Intent intent = new Intent("diagandroid.phone.imsSignallingMessage");
        int parseInt = Integer.parseInt(signalMsg.getSessionid());
        int phoneIdFromSessionId = this.mEchoInfo.getPhoneIdFromSessionId(parseInt);
        if ("SENT".equals(signalMsg.getOrigin()) && signalMsg.getLine1().contains("INVITE")) {
            Log.i(LOG_TAG, "Check mRetryINVITE[" + phoneIdFromSessionId + "]: " + this.mRetryINVITE[phoneIdFromSessionId]);
            boolean[] zArr = this.mRetryINVITE;
            if (zArr[phoneIdFromSessionId]) {
                zArr[phoneIdFromSessionId] = false;
            } else {
                TmoEcholocateController tmoEcholocateController = this.mEchoController;
                tmoEcholocateController.sendMessageDelayed(tmoEcholocateController.obtainMessage(2, echoSignallingIntentData), 100L);
                this.mRetryINVITE[phoneIdFromSessionId] = true;
                return;
            }
        }
        String callId = signalMsg.getCallId();
        String str7 = "CSeq: " + signalMsg.getCseq();
        String contents = signalMsg.getContents();
        String str8 = "NA";
        String sDPContents = TextUtils.isEmpty(contents) ? "NA" : this.mEchoInfo.getSDPContents(contents);
        intent.putExtra("VoiceAccessNetworkStateBand", echoSignallingIntentData.getNetworkBand());
        intent.putExtra("VoiceAccessNetworkStateSignal", echoSignallingIntentData.getNetworkSignal());
        intent.putExtra("IMSSignallingMessageCallID", callId);
        intent.putExtra("IMSSignallingCSeq", str7);
        intent.putExtra("IMSSignallingMessageLine1", signalMsg.getLine1());
        intent.putExtra("IMSSignallingMessageOrigin", signalMsg.getOrigin());
        intent.putExtra("IMSSignallingMessageSDP", sDPContents);
        intent.putExtra("oemIntentTimestamp", echoSignallingIntentData.getTime());
        String networkType = echoSignallingIntentData.getNetworkType();
        ImsCallSession session = this.mEchoController.mModule.getSession(parseInt);
        if (session == null || session.getCallProfile() == null) {
            str = sDPContents;
            str2 = null;
            str3 = null;
            z = false;
            i = 0;
        } else {
            str2 = session.getCallProfile().getDialingNumber();
            String echoCallId = session.getCallProfile().getEchoCallId();
            boolean isEpdgCall = session.isEpdgCall();
            int endReason = session.getEndReason();
            if (TextUtils.isEmpty(echoCallId)) {
                str6 = this.mEchoController.mCallIDList.get(session.getCallProfile().getSipCallId());
                if (TextUtils.isEmpty(str6)) {
                    str6 = this.mEchoInfo.getNewAppCallId();
                    StringBuilder sb = new StringBuilder();
                    str = sDPContents;
                    sb.append("create the echo callID ");
                    sb.append(str6);
                    Log.i(LOG_TAG, sb.toString());
                } else {
                    str = sDPContents;
                }
                session.getCallProfile().setEchoCallId(str6);
            } else {
                str = sDPContents;
                str6 = echoCallId;
            }
            if (!this.mEchoController.mCallIDList.containsKey(callId)) {
                Log.i(LOG_TAG, "mCallIDList add [s:" + callId + ", e:" + str6 + "]");
                this.mEchoController.mCallIDList.put(callId, str6);
            }
            str3 = str6;
            z = isEpdgCall;
            i = endReason;
        }
        if (this.mEchoInfo.isEndCall(str7)) {
            if ("SENT".equals(signalMsg.getOrigin()) && (signalMsg.getLine1().contains("CANCEL") || signalMsg.getLine1().contains("BYE"))) {
                if (i == 14) {
                    str8 = "DeviceReason:De-Reg";
                } else {
                    if (TextUtils.isEmpty(signalMsg.getReason())) {
                        str5 = "DeviceReason:Normal";
                    } else {
                        str5 = "DeviceReason:" + signalMsg.getReason();
                    }
                    str8 = str5;
                }
            } else if (!TextUtils.isEmpty(signalMsg.getReason())) {
                str5 = "Reason:" + signalMsg.getReason();
                str8 = str5;
            }
        } else if (!TextUtils.isEmpty(signalMsg.getReason())) {
            str8 = "Reason:" + signalMsg.getReason();
        }
        intent.putExtra("IMSSignallingMessageReason", str8);
        String cellId = this.mEchoInfo.getCellId(phoneIdFromSessionId, networkType, z);
        intent.putExtra("VoiceAccessNetworkStateType", networkType);
        intent.putExtra("cellid", cellId);
        intent.putExtra("RAT", this.mEchoInfo.getRatType(phoneIdFromSessionId, networkType));
        if (session == null) {
            String peerNumber = signalMsg.getPeerNumber();
            Log.i(LOG_TAG, "CallNumber from h_from:" + IMSLog.checker(peerNumber));
            if (TextUtils.isEmpty(peerNumber)) {
                Log.i(LOG_TAG, "Can't find callNumber :: STOP");
                return;
            }
            String str9 = this.mEchoController.mCallIDList.get(callId);
            if (TextUtils.isEmpty(str9)) {
                str9 = this.mEchoInfo.getNewAppCallId();
                Log.i(LOG_TAG, "mCallIDList add [s:" + callId + ", e:" + str9 + "]");
                this.mEchoController.mCallIDList.put(callId, str9);
            }
            str4 = str9;
            int indexOf2 = peerNumber.indexOf(58);
            if (indexOf2 > 0) {
                String substring = peerNumber.substring(0, indexOf2);
                if (("sip".equalsIgnoreCase(substring) || "tel".equalsIgnoreCase(substring)) && (indexOf = (peerNumber = peerNumber.substring(indexOf2 + 1)).indexOf(64)) > 0) {
                    peerNumber = peerNumber.substring(0, indexOf);
                }
            }
            str2 = peerNumber;
            Log.i(LOG_TAG, "Extracted callNumber:" + IMSLog.checker(str2));
        } else {
            str4 = str3;
        }
        String str10 = str2;
        if (this.mEchoInfo.isEndCall(str7)) {
            TmoEcholocateController tmoEcholocateController2 = this.mEchoController;
            tmoEcholocateController2.sendMessageDelayed(tmoEcholocateController2.obtainMessage(3, callId), 1000L);
        }
        intent.putExtra("CallID", str4);
        intent.putExtra("CallNumber", str10);
        if (this.mEchoController.getCallState() == 1) {
            if (this.mEchoController.getDiffTime() == 0) {
                this.mEchoController.setDiffTime(System.currentTimeMillis() - 100);
                this.mEchoController.setEPSFBsuccess(phoneIdFromSessionId, true);
                if (session != null && session.getCallProfile() != null) {
                    session.getCallProfile().setEPSFBsuccess(true);
                    session.getCallProfile().setEchoCellId("-1");
                }
            }
            this.mPendingQue.add(intent);
            Log.i(LOG_TAG, "sendTmoEcholocateSignallingMSG :: pending case with EPSFB before SUCCESS");
            return;
        }
        this.mContext.sendBroadcast(intent, "diagandroid.phone.receiveDetailedCallState");
        Log.i(LOG_TAG, "sendTmoEcholocateSignallingMSG :: Origin [" + signalMsg.getOrigin() + "] Line1 [ " + IMSLog.checker(signalMsg.getLine1()) + "] Cseq [" + signalMsg.getCseq() + "] Reason [" + signalMsg.getReason() + "] callId_App [" + str4 + "] callId_IMS [" + signalMsg.getCallId() + "] sdpContents [" + str + "]");
    }

    protected void sendTmoEcholocateRTP(EcholocateEvent.EcholocateRtpMessage echolocateRtpMessage) {
        Intent intent;
        if (TextUtils.isEmpty(echolocateRtpMessage.getId())) {
            Log.i(LOG_TAG, "sendTmoEcholocateRTP :: Session Id is NULL");
            return;
        }
        String dir = echolocateRtpMessage.getDir();
        if ("DL".equals(dir)) {
            intent = new Intent("diagandroid.phone.RTPDLStat");
            intent.putExtra("RTPDownlinkStatusLossRate", echolocateRtpMessage.getLossrate());
            intent.putExtra("RTPDownlinkStatusDelay", echolocateRtpMessage.getDelay());
            intent.putExtra("RTPDownlinkStatusJitter", echolocateRtpMessage.getJitter());
            intent.putExtra("RTPDownlinkStatusMeasuredPeriod", echolocateRtpMessage.getMeasuredperiod());
        } else {
            intent = new Intent("diagandroid.phone.RTPULStat");
            intent.putExtra("RTPUplinkStatusLossRate", echolocateRtpMessage.getLossrate());
            intent.putExtra("RTPUplinkStatusDelay", echolocateRtpMessage.getDelay());
            intent.putExtra("RTPUplinkStatusJitter", echolocateRtpMessage.getJitter());
            intent.putExtra("RTPUplinkStatusMeasuredPeriod", echolocateRtpMessage.getMeasuredperiod());
        }
        int parseInt = Integer.parseInt(echolocateRtpMessage.getId());
        int phoneIdFromSessionId = this.mEchoInfo.getPhoneIdFromSessionId(parseInt);
        ImsCallSession session = this.mEchoController.mModule.getSession(parseInt);
        if (session == null) {
            Log.e(LOG_TAG, "Can't get call num from sessionID");
            return;
        }
        boolean isEpdgCall = session.isEpdgCall();
        String networkType = this.mEchoInfo.getNetworkType(phoneIdFromSessionId, isEpdgCall);
        intent.putExtra("VoiceAccessNetworkStateType", networkType);
        intent.putExtra("VoiceAccessNetworkStateSignal", this.mEchoInfo.getNwStateSignal(phoneIdFromSessionId, isEpdgCall));
        intent.putExtra("VoiceAccessNetworkStateBand", this.mEchoInfo.getLteBand(phoneIdFromSessionId, isEpdgCall, networkType));
        String dialingNumber = session.getCallProfile().getDialingNumber();
        if (TextUtils.isEmpty(dialingNumber)) {
            dialingNumber = "null";
        }
        String echoCallId = session.getCallProfile().getEchoCallId();
        if (TextUtils.isEmpty(echoCallId)) {
            Log.e(LOG_TAG, "Can't find echo CallId from session");
            return;
        }
        String cellId = this.mEchoInfo.getCellId(phoneIdFromSessionId, networkType, isEpdgCall);
        intent.putExtra("CallNumber", dialingNumber);
        intent.putExtra("CallID", echoCallId);
        intent.putExtra("oemIntentTimestamp", this.mEchoInfo.getTimeStamp(0));
        intent.putExtra("cellid", cellId);
        this.mContext.sendBroadcast(intent, "diagandroid.phone.receiveDetailedCallState");
        Log.i(LOG_TAG, "sendTmoEcholocateRTP :: dir [" + dir + "] LossRate [" + echolocateRtpMessage.getLossrate() + "] Jitter [" + echolocateRtpMessage.getJitter() + "] Measuredperiod [" + echolocateRtpMessage.getMeasuredperiod() + "] Delay [" + echolocateRtpMessage.getDelay() + "]");
    }

    protected void sendEmergencyCallTimerStateMSG(int i, EcholocateEvent.EcholocateEmergencyMessage echolocateEmergencyMessage) {
        boolean isEpdgCall = echolocateEmergencyMessage.isEpdgCall();
        String networkType = this.mEchoInfo.getNetworkType(i, isEpdgCall);
        Intent intent = new Intent("diagandroid.phone.emergencyCallTimerState");
        intent.putExtra("CallNumber", echolocateEmergencyMessage.getCallNumber());
        intent.putExtra("TimerName", echolocateEmergencyMessage.getTimerName());
        intent.putExtra("TimerState", echolocateEmergencyMessage.getStateName());
        intent.putExtra("VoiceAccessNetworkStateType", networkType);
        intent.putExtra("VoiceAccessNetworkStateSignal", this.mEchoInfo.getNwStateSignal(i, isEpdgCall));
        intent.putExtra("VoiceAccessNetworkStateBand", this.mEchoInfo.getLteBand(i, isEpdgCall, networkType));
        intent.putExtra("CallID", echolocateEmergencyMessage.getCallId());
        intent.putExtra("oemIntentTimestamp", this.mEchoInfo.getTimeStamp(0));
        intent.putExtra("cellid", this.mEchoInfo.getCellId(i, networkType, isEpdgCall));
        Log.i(LOG_TAG, "sendEmergencyCallTimerStateMSG[" + i + "], callId = " + echolocateEmergencyMessage.getCallId() + ", timer=" + echolocateEmergencyMessage.getTimerName() + " state=" + echolocateEmergencyMessage.getStateName());
        this.mContext.sendBroadcastAsUser(intent, UserHandle.SEM_CURRENT, "diagandroid.phone.receiveDetailedCallState");
    }

    protected void sendTmoEcholocateCarrierConfig(int i, int i2, String str) {
        if (!this.mEchoInfo.checkSecurity(this.mEchoController.getSalescode())) {
            Log.i(LOG_TAG, "Do not broadcast. ICDV or Signature key is wrong");
            return;
        }
        if (i2 != 1 && i2 != 2) {
            Log.i(LOG_TAG, "sendTmoEcholocateCarrierConfig ignore callstate ");
            return;
        }
        ImsCallSession preCallSession = this.mEchoInfo.getPreCallSession(i);
        if (preCallSession == null) {
            Log.i(LOG_TAG, "phoneId is not valid - STOP");
            return;
        }
        String echoCallId = preCallSession.getCallProfile().getEchoCallId();
        if (TextUtils.isEmpty(str)) {
            Log.i(LOG_TAG, "phoneNumber is not valid - use call profile number");
            str = preCallSession.getCallProfile().getDialingNumber();
        }
        Intent intent = new Intent("diagandroid.phone.carrierConfig");
        String voiceConfig = this.mEchoInfo.getVoiceConfig();
        String voWiFiConfig = this.mEchoInfo.getVoWiFiConfig();
        LinkedHashMap<String, String> sa5gBandConfig = this.mEchoInfo.getSa5gBandConfig(i);
        String configVersion = this.mEchoInfo.getConfigVersion();
        Log.i(LOG_TAG, "sendTmoEcholocateCarrierConfig voiceconfig : " + voiceConfig + ", vowificonfig : " + voWiFiConfig + ", Sa5gbandconfig : " + sa5gBandConfig + ", configversion : " + configVersion + ", phoneId : " + i + ", callNumber : " + IMSLog.checker(str));
        intent.putExtra("carrierVoiceConfig", voiceConfig);
        intent.putExtra("carrierVoWiFiConfig", voWiFiConfig);
        intent.putExtra("carrierSa5gBandConfig", sa5gBandConfig);
        intent.putExtra("carrierConfigVersion", configVersion);
        intent.putExtra("CallID", echoCallId);
        intent.putExtra("CallNumber", str);
        intent.putExtra("oemIntentTimestamp", this.mEchoInfo.getTimeStamp(0));
        this.mContext.sendBroadcast(intent, "diagandroid.phone.receiveDetailedCallState");
    }

    public void sendDedicatedEventAfterHandover(int i) {
        Log.i(LOG_TAG, "sendDedicatedEventAfterHandover:" + i);
        ImsCallSession foregroundSession = this.mEchoController.mModule.getForegroundSession(i);
        if (foregroundSession == null) {
            Log.i(LOG_TAG, "sendDedicatedEventAfterHandover - No call session.");
            return;
        }
        if (foregroundSession.isEpdgCall()) {
            Log.i(LOG_TAG, "sendDedicatedEventAfterHandover - call is on EPDG.");
            return;
        }
        Log.i(LOG_TAG, "DedicatedBearer:" + foregroundSession.getDedicatedBearerState(1));
        if (foregroundSession.getDedicatedBearerState(1) == 3) {
            Intent intent = new Intent("diagandroid.phone.detailedCallState");
            intent.putExtra("CallNumber", foregroundSession.getCallProfile().getDialingNumber());
            intent.putExtra("CallState", "EPDG_HO_FAILED");
            String networkType = this.mEchoInfo.getNetworkType(i, false);
            intent.putExtra("VoiceAccessNetworkStateType", networkType);
            intent.putExtra("VoiceAccessNetworkStateBand", this.mEchoInfo.getLteBand(i, false, networkType));
            intent.putExtra("VoiceAccessNetworkStateSignal", this.mEchoInfo.getNwStateSignal(i, false));
            intent.putExtra("CallID", foregroundSession.getCallProfile().getEchoCallId());
            intent.putExtra("oemIntentTimestamp", this.mEchoInfo.getTimeStamp(0));
            intent.putExtra("cellid", this.mEchoInfo.getCellId(i, networkType, false));
            intent.putExtra("EpdgHoFailureCause", "5QI_QCI_1_FLOW_SETUP_FAILURE");
            this.mContext.sendBroadcast(intent, "diagandroid.phone.receiveDetailedCallState");
            Log.i(LOG_TAG, "sendDedicatedEventAfterHandover : 5QI_QCI_1_FLOW_SETUP_FAILURE, CallNumber:" + IMSLog.checker(foregroundSession.getCallProfile().getDialingNumber()) + ", CallID:" + foregroundSession.getCallProfile().getEchoCallId());
        }
    }
}
