package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SemSystemProperties;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.SignalStrengthWrapper;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.servicemodules.volte2.data.EcholocateEvent;
import com.sec.internal.ims.util.ImsPhoneStateManager;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.handler.IMiscHandler;
import com.sec.internal.log.IMSLog;
import com.sec.sve.generalevent.VcidEvent;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;

/* loaded from: classes.dex */
public class TmoEcholocateController extends Handler {
    private static final int EVENT_CALL_STATUS_CHANGE_EVENT = 4;
    private static final int EVENT_ECHOLOCATE_EMERGENCY_TIMER_STATE_RECEIVED = 7;
    private static final int EVENT_ECHOLOCATE_HANDOVER_RECEIVED = 8;
    private static final int EVENT_ECHOLOCATE_RECEIVED = 1;
    protected static final int EVENT_ECHOLOCATE_REMOVE_CALLID_CACHE = 3;
    protected static final int EVENT_ECHOLOCATE_SIP_RECEIVED = 2;
    private static final int EVENT_HANDOVER_SUCCESS = 5;
    private static final int EVENT_PDN_DISCONNECT = 6;
    private static final String LOG_TAG = "Echolocate_Controller";
    protected Map<String, String> mCallIDList;
    private boolean mCallOffhook;
    private int mCallState;
    private final Context mContext;
    private long mDiffTime;
    private boolean[] mEPSFBsuccess;
    protected TmoEcholocateBroadcaster mEchoBroadcaster;
    protected TmoEcholocateInfo mEchoInfo;
    private IMiscHandler mMiscHandler;
    protected VolteServiceModuleInternal mModule;
    private int mPhoneCount;
    private ImsPhoneStateManager mPhoneStateManager;
    private String mSalesCode;
    private SignalStrengthWrapper[] mSignalStrength;

    private class PhoneStateListenerInternal extends PhoneStateListener {
        int mPhoneId;
        int mState = 0;

        public PhoneStateListenerInternal(int i) {
            this.mPhoneId = i;
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (signalStrength != null) {
                TmoEcholocateController.this.mSignalStrength[this.mPhoneId] = new SignalStrengthWrapper(signalStrength);
            } else {
                Log.i(TmoEcholocateController.LOG_TAG, "getLteSignalStrength is null");
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            if (this.mState != i) {
                if (i == 2) {
                    TmoEcholocateController.this.mCallOffhook = true;
                } else {
                    TmoEcholocateController.this.mCallOffhook = false;
                    if (i == 0 && TmoEcholocateController.this.mModule.getSessionCount(this.mPhoneId) == 0) {
                        TmoEcholocateController tmoEcholocateController = TmoEcholocateController.this;
                        TmoEcholocateInfo tmoEcholocateInfo = tmoEcholocateController.mEchoInfo;
                        tmoEcholocateController.mCallState = 0;
                        TmoEcholocateController.this.mEPSFBsuccess[this.mPhoneId] = false;
                        TmoEcholocateController.this.mDiffTime = 0L;
                        TmoEcholocateController.this.mEchoBroadcaster.reset(this.mPhoneId);
                    }
                }
                Log.i(TmoEcholocateController.LOG_TAG, "onCallStateChanged[" + this.mPhoneId + "] " + this.mState + "->" + i + ", mCallOffhook:" + TmoEcholocateController.this.mCallOffhook + " Number [" + IMSLog.checker(str) + "]");
                this.mState = i;
                TmoEcholocateController tmoEcholocateController2 = TmoEcholocateController.this;
                tmoEcholocateController2.sendMessageDelayed(tmoEcholocateController2.obtainMessage(4, this.mPhoneId, i, str), 1000L);
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onDataConnectionStateChanged(int i, int i2) {
            if (i == 0 && i2 == 20) {
                TmoEcholocateController tmoEcholocateController = TmoEcholocateController.this;
                tmoEcholocateController.sendMessage(tmoEcholocateController.obtainMessage(6, Integer.valueOf(this.mPhoneId)));
            }
        }
    }

    public TmoEcholocateController(Context context, VolteServiceModuleInternal volteServiceModuleInternal, IPdnController iPdnController, int i, Looper looper) {
        super(looper);
        this.mMiscHandler = null;
        this.mSignalStrength = null;
        this.mSalesCode = "";
        this.mModule = null;
        this.mEchoInfo = null;
        this.mEchoBroadcaster = null;
        this.mCallIDList = new HashMap();
        this.mPhoneCount = 1;
        this.mDiffTime = 0L;
        this.mCallOffhook = false;
        this.mModule = volteServiceModuleInternal;
        this.mContext = context;
        this.mMiscHandler = ImsRegistry.getHandlerFactory().getMiscHandler();
        this.mPhoneCount = i;
        this.mSignalStrength = new SignalStrengthWrapper[i];
        this.mEPSFBsuccess = new boolean[i];
        this.mPhoneStateManager = new ImsPhoneStateManager(context, MNO.MOD_QATAR);
        TmoEcholocateInfo tmoEcholocateInfo = new TmoEcholocateInfo(context, this, iPdnController, volteServiceModuleInternal);
        this.mEchoInfo = tmoEcholocateInfo;
        this.mEchoBroadcaster = new TmoEcholocateBroadcaster(context, this, tmoEcholocateInfo);
    }

    public void start() {
        this.mMiscHandler.registerForEcholocateEvent(this, 1, null);
        for (int i = 0; i < this.mPhoneCount; i++) {
            if (this.mPhoneStateManager.hasListener(i)) {
                this.mPhoneStateManager.unRegisterListener(i);
            }
            int subId = SimUtil.getSubId(i);
            Log.i(LOG_TAG, "registerListener pCnt[" + i + "], subId[" + subId + "]");
            this.mPhoneStateManager.registerListener(new PhoneStateListenerInternal(i), subId, i);
        }
        setSalesCode();
        Log.i(LOG_TAG, "start");
    }

    public void stop() {
        this.mMiscHandler.unregisterForEcholocateEvent(this);
        for (int i = 0; i < this.mPhoneCount; i++) {
            if (this.mPhoneStateManager.hasListener(i)) {
                this.mPhoneStateManager.unRegisterListener(i);
            }
        }
        Log.i(LOG_TAG, VcidEvent.BUNDLE_VALUE_ACTION_STOP);
    }

    public void handleEcholocateSipReceived(Message message) {
        EcholocateEvent.EchoSignallingIntentData echoSignallingIntentData = (EcholocateEvent.EchoSignallingIntentData) message.obj;
        EcholocateEvent.EcholocateSignalMessage signalMsg = echoSignallingIntentData.getSignalMsg();
        String origin = signalMsg.getOrigin();
        String cseq = signalMsg.getCseq();
        Log.i(LOG_TAG, "handleEcholocateSipReceived: origin = " + origin + ", cseq = " + cseq);
        if ("RECEIVED".equals(origin) && cseq.contains("REGISTER")) {
            ImsRegistration imsRegistration = (ImsRegistration) Optional.ofNullable(this.mModule.getSessionByRegId(Integer.parseInt(signalMsg.getSessionid()))).map(new Function() { // from class: com.sec.internal.ims.servicemodules.volte2.TmoEcholocateController$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ImsCallSession) obj).getRegistration();
                }
            }).orElse(null);
            if (imsRegistration == null) {
                Log.i(LOG_TAG, "handleEcholocateSipReceived: No VoLTE registration. Return..");
                return;
            }
            boolean z = imsRegistration.getRegiRat() == 18;
            Log.i(LOG_TAG, "handleEcholocateSipReceived: isEpdgRegistered = " + z + ", isEpdgCall = " + signalMsg.isEpdgCall());
            if (signalMsg.isEpdgCall() != z) {
                this.mEchoBroadcaster.sendTmoEcholocateHandoverFail(echoSignallingIntentData);
                return;
            }
            return;
        }
        this.mEchoBroadcaster.sendTmoEcholocateSignallingMSG(echoSignallingIntentData);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.i(LOG_TAG, "handleMessage: evt " + message.what);
        switch (message.what) {
            case 1:
                handleEcholocateEventReceived((AsyncResult) message.obj);
                break;
            case 2:
                handleEcholocateSipReceived(message);
                break;
            case 3:
                handleRemoveCallId((String) message.obj);
                break;
            case 4:
                this.mEchoBroadcaster.sendTmoEcholocateCarrierConfig(message.arg1, message.arg2, (String) message.obj);
                break;
            case 5:
                this.mEchoBroadcaster.sendDetailCallEvent(message.arg1, (EcholocateEvent.EcholocateHandoverMessage) message.obj);
                break;
            case 6:
                if (this.mCallState == 1) {
                    handleTmoEcholocateEPSFB(message.arg1, 3, 0L);
                    break;
                }
                break;
            case 7:
                this.mEchoBroadcaster.sendEmergencyCallTimerStateMSG(message.arg1, (EcholocateEvent.EcholocateEmergencyMessage) message.obj);
                break;
            case 8:
                this.mEchoBroadcaster.sendDedicatedEventAfterHandover(((Integer) message.obj).intValue());
                break;
            default:
                Log.i(LOG_TAG, "This message is not supported");
                break;
        }
    }

    private void handleEcholocateEventReceived(AsyncResult asyncResult) {
        if (this.mEchoInfo.checkSecurity(this.mSalesCode)) {
            EcholocateEvent echolocateEvent = (EcholocateEvent) asyncResult.result;
            if (echolocateEvent.getType() == EcholocateEvent.EcholocateType.signalMsg) {
                EcholocateEvent.EcholocateSignalMessage signalData = echolocateEvent.getSignalData();
                int parseInt = Integer.parseInt(signalData.getSessionid());
                boolean isEpdgCall = signalData.isEpdgCall();
                int phoneIdFromSessionId = this.mEchoInfo.getPhoneIdFromSessionId(parseInt);
                String networkType = this.mEchoInfo.getNetworkType(phoneIdFromSessionId, isEpdgCall);
                sendMessage(obtainMessage(2, new EcholocateEvent.EchoSignallingIntentData(signalData, this.mEchoInfo.getLteBand(phoneIdFromSessionId, isEpdgCall, networkType), this.mEchoInfo.getNwStateSignal(phoneIdFromSessionId, isEpdgCall), networkType, this.mEchoInfo.getTimeStamp(0))));
                return;
            }
            if (echolocateEvent.getType() == EcholocateEvent.EcholocateType.rtpMsg) {
                this.mEchoBroadcaster.sendTmoEcholocateRTP(echolocateEvent.getRtpData());
                return;
            }
            return;
        }
        Log.i(LOG_TAG, "Do not broadcast. ICDV or Signature key is wrong");
    }

    private void handleRemoveCallId(String str) {
        if (this.mCallIDList.containsKey(str)) {
            Log.i(LOG_TAG, "Remove Call id on cache");
            if (this.mCallIDList.size() == 1) {
                this.mCallIDList.clear();
            } else {
                this.mCallIDList.remove(str);
            }
        }
    }

    public void handleTmoEcholocatePSHO(int i, int i2, int i3, int i4, long j) {
        Log.i(LOG_TAG, "sendTmoEcholocatePSHO state : " + i2 + " mCallState : " + this.mCallState);
        ImsCallSession foregroundSession = this.mModule.getForegroundSession(i);
        if (foregroundSession == null) {
            Log.i(LOG_TAG, "imsCallSession is not valid - STOP");
            return;
        }
        String networkTypeForPSHO = this.mEchoInfo.getNetworkTypeForPSHO(i, i2, i3, i4);
        String lteBand = this.mEchoInfo.getLteBand(i, false, networkTypeForPSHO);
        String pSHOState = this.mEchoInfo.getPSHOState(i2);
        String dialingNumber = foregroundSession.getCallProfile().getDialingNumber();
        String echoCallId = foregroundSession.getCallProfile().getEchoCallId();
        String cellId = this.mEchoInfo.getCellId(i, networkTypeForPSHO, false);
        if (i2 == 2 || "0".equals(cellId) || "-1".equals(cellId)) {
            cellId = String.valueOf(j);
        }
        EcholocateEvent.EcholocateHandoverMessage echolocateHandoverMessage = new EcholocateEvent.EcholocateHandoverMessage(dialingNumber, pSHOState, networkTypeForPSHO, this.mEchoInfo.getNwStateSignal(i, false), lteBand, echoCallId, this.mEchoInfo.getTimeStamp(0), cellId);
        if (i2 == 1) {
            this.mEchoBroadcaster.sendDetailCallEvent(i, echolocateHandoverMessage);
            this.mCallState = 1;
            return;
        }
        if (i2 == 4 || i2 == 3) {
            if (hasMessages(5)) {
                removeMessages(5);
            }
            this.mEchoBroadcaster.sendDetailCallEvent(i, echolocateHandoverMessage);
            this.mCallState = 0;
            return;
        }
        if (this.mCallState == 1 && i2 == 2) {
            sendMessageDelayed(obtainMessage(5, i, 0, echolocateHandoverMessage), 200L);
            this.mCallState = 0;
        }
    }

    public void handleTmoEcholocateEPSFB(int i, int i2, long j) {
        Log.i(LOG_TAG, "sendTmoEcholocateEPSFB state : " + i2 + " mCallState : " + this.mCallState + " EPSFBsuccess[" + i + "]: " + this.mEPSFBsuccess[i]);
        ImsCallSession preCallSession = this.mEchoInfo.getPreCallSession(i);
        if (preCallSession == null) {
            Log.i(LOG_TAG, "imsCallSession is not valid - STOP");
            return;
        }
        String networkTypeForEPSFB = this.mEchoInfo.getNetworkTypeForEPSFB(i2);
        String lteBand = this.mEchoInfo.getLteBand(i, false, networkTypeForEPSFB);
        String ePSFBState = this.mEchoInfo.getEPSFBState(i2);
        String dialingNumber = preCallSession.getCallProfile().getDialingNumber();
        String echoCallId = preCallSession.getCallProfile().getEchoCallId();
        String cellId = this.mEchoInfo.getCellId(i, networkTypeForEPSFB, false);
        if (i2 == 2 || "0".equals(cellId) || "-1".equals(cellId)) {
            cellId = String.valueOf(j);
        }
        EcholocateEvent.EcholocateHandoverMessage echolocateHandoverMessage = new EcholocateEvent.EcholocateHandoverMessage(dialingNumber, ePSFBState, networkTypeForEPSFB, this.mEchoInfo.getNwStateSignal(i, false), lteBand, echoCallId, this.mEchoInfo.getTimeStamp(0), cellId);
        if (i2 == 1) {
            this.mEchoBroadcaster.sendDetailCallEvent(i, echolocateHandoverMessage);
            this.mCallState = 1;
            this.mEPSFBsuccess[i] = false;
            return;
        }
        if (i2 == 4 || i2 == 3) {
            if (hasMessages(5)) {
                removeMessages(5);
            }
            this.mEchoBroadcaster.sendDetailCallEvent(i, echolocateHandoverMessage);
            this.mCallState = 0;
            this.mEPSFBsuccess[i] = false;
            this.mEchoBroadcaster.sendPendingSignallingMSG(0L);
            return;
        }
        if (this.mCallState == 1 && i2 == 2) {
            long j2 = this.mDiffTime;
            if (j2 != 0) {
                echolocateHandoverMessage.setTime(j2);
                this.mDiffTime = 0L;
            }
            sendMessageDelayed(obtainMessage(5, i, 0, echolocateHandoverMessage), 200L);
            this.mCallState = 0;
            this.mEPSFBsuccess[i] = true;
            Log.i(LOG_TAG, "set EPSFB:" + preCallSession.mSessionId);
            preCallSession.getCallProfile().setEPSFBsuccess(true);
            preCallSession.getCallProfile().setEchoCellId(cellId);
            this.mEchoBroadcaster.sendPendingSignallingMSG(j);
        }
    }

    public void handleEmergencyCallTimerState(int i, EcholocateEvent.EcholocateEmergencyMessage echolocateEmergencyMessage) {
        if (this.mEchoInfo.checkSecurity(this.mSalesCode)) {
            Log.i(LOG_TAG, "sendEmergencyCallTimerState");
            sendMessage(obtainMessage(7, i, 0, echolocateEmergencyMessage));
        }
    }

    public void handleDedicatedEventAfterHandover(int i) {
        if (!this.mEchoInfo.checkSecurity(this.mSalesCode)) {
            Log.i(LOG_TAG, "handleDedicatedEventAfterHandover - Do not broadcast.");
        } else if (hasMessages(8)) {
            Log.i(LOG_TAG, "EVENT_ECHOLOCATE_HANDOVER_RECEIVED requested, return");
        } else {
            Log.i(LOG_TAG, "handleDedicatedEventAfterHandover wait 2 seconds");
            sendMessageDelayed(obtainMessage(8, Integer.valueOf(i)), UtStateMachine.HTTP_READ_TIMEOUT_GCF);
        }
    }

    protected int getCallState() {
        return this.mCallState;
    }

    protected int getPhoneCount() {
        return this.mPhoneCount;
    }

    protected long setDiffTime(long j) {
        this.mDiffTime = j;
        return j;
    }

    protected long getDiffTime() {
        return this.mDiffTime;
    }

    public String getEchoCallId(String str) {
        return this.mCallIDList.get(str);
    }

    private void setSalesCode() {
        try {
            this.mSalesCode = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY);
        } catch (Exception unused) {
            Log.d(LOG_TAG, "Problem getting sales code!");
        }
        if (this.mSalesCode == null) {
            this.mSalesCode = "";
        }
        Log.d(LOG_TAG, "sales_code : " + this.mSalesCode);
    }

    protected String getSalescode() {
        return this.mSalesCode;
    }

    protected void setEPSFBsuccess(int i, boolean z) {
        Log.i(LOG_TAG, "setEPSFBsuccess[" + i + "]: " + z);
        this.mEPSFBsuccess[i] = z;
    }

    protected boolean getEPSFBsuccess(int i) {
        Log.i(LOG_TAG, "getEPSFBsuccess[" + i + "]: " + this.mEPSFBsuccess[i]);
        return this.mEPSFBsuccess[i];
    }

    protected SignalStrengthWrapper getSignalStrength(int i) {
        return this.mSignalStrength[i];
    }
}
