package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.telephony.PublishDialog;
import com.samsung.android.cmcp2phelper.MdmnNsdWrapper;
import com.samsung.android.cmcp2phelper.MdmnServiceInfo;
import com.sec.ims.Dialog;
import com.sec.ims.DialogEvent;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.servicemodules.Registration;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.options.OptionsEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CmcInfoEvent;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.imsservice.CallStateTracker;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface;
import com.sec.internal.ims.servicemodules.tapi.service.extension.utils.Constants;
import com.sec.internal.ims.servicemodules.volte2.data.DefaultCallProfileBuilder;
import com.sec.internal.ims.servicemodules.volte2.data.DtmfInfo;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper;
import com.sec.internal.log.IMSLog;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class CmcServiceHelper extends Handler implements ICmcServiceHelper, ICmcServiceHelperInternal {
    private static final int CMC_HANDOVER_TIMER_VALUE = 6000;
    private static final int CMC_PD_CHECK_TIMER_VALUE = 20;
    private static final int DIVIDABLE64 = 63;
    private static final int DUMMY_CALL_DOMAIN = 9;
    private static final long DUPLICATED_PUBLISH_DENY_TIME_IN_MILLI = 500;
    private static final int EVENT_OPTIONS_EVENT = 32;
    private static final int EVENT_P2P_OPTIONS_EVENT = 31;
    private static final int EVT_CMC_HANDOVER_TIMER = 34;
    private static final int EVT_CMC_INFO_EVENT = 35;
    private static final int EVT_CMC_PD_CHECK_TIMER = 33;
    private static final String LOG_TAG = CmcServiceHelper.class.getSimpleName();
    private final Map<Integer, Long> mCmcCallEstablishTimeMap;
    private Message mCmcHandoverTimer;
    private final Map<Integer, Message> mCmcPdCheckTimeOut;
    private boolean mCmcTotalMnoPullable;
    private final Context mContext;
    private final Map<Integer, PublishDialog> mCsPublishDialogMap;
    private int mExtConfirmedCsCallCnt;
    private ImsCallSessionManager mImsCallSessionManager;
    private final Map<Integer, Boolean> mIsCmcPdCheckRespReceived;
    private boolean mIsP2pDiscoveryDone;
    private DialogEvent[] mLastCmcDialogEvent;
    private int mLastCmcEndCallReason;
    private IImsMediaController mMediaController;
    private boolean mNeedToNotifyAfterP2pDiscovery;
    private MdmnNsdWrapper mNsd;
    private MdmnServiceInfo mNsdServiceInfo;
    private int mNumOfActiveSDs;
    private IOptionsServiceInterface mOptionsSvcIntf;
    private p2pCallbackHandler mP2pCallbackHandler;
    private CopyOnWriteArrayList<Registration> mRegistrationList;
    private MessageDigest mSendPublishDigest;
    private byte[] mSendPublishHashedXml;
    private int mSendPublishInvokeCount;
    private long mSendPublishInvokeTime;
    private IVolteServiceInterface mVolteSvcIntf;

    public CmcServiceHelper(Looper looper, Context context) {
        super(looper);
        this.mCmcTotalMnoPullable = true;
        this.mCmcCallEstablishTimeMap = new ConcurrentHashMap();
        this.mCmcPdCheckTimeOut = new ArrayMap();
        this.mIsCmcPdCheckRespReceived = new ArrayMap();
        this.mCsPublishDialogMap = new ConcurrentHashMap();
        this.mExtConfirmedCsCallCnt = 0;
        this.mLastCmcEndCallReason = 200;
        this.mP2pCallbackHandler = null;
        this.mIsP2pDiscoveryDone = false;
        this.mNeedToNotifyAfterP2pDiscovery = false;
        this.mCmcHandoverTimer = null;
        this.mSendPublishInvokeTime = 0L;
        this.mSendPublishInvokeCount = 0;
        this.mNumOfActiveSDs = 0;
        this.mContext = context;
    }

    public CmcServiceHelper(Looper looper, Context context, CopyOnWriteArrayList<Registration> copyOnWriteArrayList, IVolteServiceInterface iVolteServiceInterface, IImsMediaController iImsMediaController, ImsCallSessionManager imsCallSessionManager, IOptionsServiceInterface iOptionsServiceInterface, int i) {
        super(looper);
        this.mCmcTotalMnoPullable = true;
        this.mCmcCallEstablishTimeMap = new ConcurrentHashMap();
        this.mCmcPdCheckTimeOut = new ArrayMap();
        this.mIsCmcPdCheckRespReceived = new ArrayMap();
        this.mCsPublishDialogMap = new ConcurrentHashMap();
        this.mExtConfirmedCsCallCnt = 0;
        this.mLastCmcEndCallReason = 200;
        this.mP2pCallbackHandler = null;
        this.mIsP2pDiscoveryDone = false;
        this.mNeedToNotifyAfterP2pDiscovery = false;
        this.mCmcHandoverTimer = null;
        this.mSendPublishInvokeTime = 0L;
        this.mSendPublishInvokeCount = 0;
        this.mNumOfActiveSDs = 0;
        this.mContext = context;
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mOptionsSvcIntf = iOptionsServiceInterface;
        this.mMediaController = iImsMediaController;
        this.mRegistrationList = copyOnWriteArrayList;
        this.mImsCallSessionManager = imsCallSessionManager;
        this.mLastCmcDialogEvent = new DialogEvent[i];
        this.mP2pCallbackHandler = new p2pCallbackHandler(looper);
        try {
            this.mSendPublishDigest = MessageDigest.getInstance(Constants.DIGEST_ALGORITHM_SHA1);
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
        }
    }

    public void init() {
        this.mOptionsSvcIntf.registerForCmcOptionsEvent(this, 32, null);
        this.mOptionsSvcIntf.registerForP2pOptionsEvent(this, 31, null);
        this.mVolteSvcIntf.registerForCmcInfoEvent(this, 35, null);
    }

    public void onRegistered(ImsRegistration imsRegistration) {
        int cmcType = imsRegistration.getImsProfile().getCmcType();
        if (ImsCallUtil.isCmcPrimaryType(cmcType)) {
            if (cmcType == 1 && imsRegistration.getCurrentRat() == 18 && ImsRegistry.getCmcAccountManager().isSupportSameWiFiOnly()) {
                this.mP2pCallbackHandler.setP2pRegiInfo(imsRegistration);
            }
            this.mNumOfActiveSDs = 0;
            return;
        }
        if (ImsCallUtil.isCmcSecondaryType(cmcType)) {
            if (this.mCmcHandoverTimer != null) {
                Log.i(LOG_TAG, "do cmc handover");
                PreciseAlarmManager.getInstance(this.mContext).removeMessage(this.mCmcHandoverTimer);
                this.mCmcHandoverTimer = null;
                ImsCallSession sessionByCmcType = getSessionByCmcType(cmcType);
                if (sessionByCmcType != null) {
                    CallProfile makeReplaceProfile = makeReplaceProfile(sessionByCmcType.getCallProfile());
                    try {
                        this.mImsCallSessionManager.createSession(this.mContext, makeReplaceProfile, imsRegistration).start(makeReplaceProfile.getLetteringText(), makeReplaceProfile);
                        sessionByCmcType.replaceRegistrationInfo(imsRegistration);
                        return;
                    } catch (RemoteException e) {
                        clearAllCallsForCmcHandover(cmcType);
                        e.printStackTrace();
                        return;
                    }
                }
                return;
            }
            return;
        }
        Log.i(LOG_TAG, "mmtel Registered ? " + imsRegistration.hasService("mmtel"));
        if (imsRegistration.hasService("mmtel")) {
            this.mCsPublishDialogMap.remove(Integer.valueOf(imsRegistration.getPhoneId()));
        }
    }

    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        String str = LOG_TAG;
        Log.d(str, "onDeregistered reason " + imsRegistration.getDeregiReason());
        int cmcType = imsRegistration.getImsProfile().getCmcType();
        if (cmcType > 0 && this.mNsd != null) {
            Log.i(str, "stop Nsd when deregistered");
            this.mNsd.stop();
            this.mP2pCallbackHandler.setP2pRegiInfo(null);
            this.mIsP2pDiscoveryDone = false;
            this.mNeedToNotifyAfterP2pDiscovery = false;
            this.mNumOfActiveSDs = 0;
            DialogEvent dialogEvent = this.mLastCmcDialogEvent[imsRegistration.getPhoneId()];
            if (dialogEvent != null) {
                dialogEvent.clearDialogList();
            }
        }
        if (cmcType == 2 && imsRegistration.getDeregiReason() == 22) {
            clearAllCallsForCmcHandover(cmcType);
        }
    }

    public void onDeregistering(ImsRegistration imsRegistration) {
        String str = LOG_TAG;
        Log.d(str, "onDeregistering reason " + imsRegistration.getDeregiReason());
        int cmcType = imsRegistration.getImsProfile().getCmcType();
        if (ImsCallUtil.isCmcPrimaryType(cmcType) && imsRegistration.getDeregiReason() != 2) {
            Log.d(str, "onDeregistering: Send dummy publish dialog before deregistered");
            sendDummyPublishDialog(imsRegistration.getPhoneId(), imsRegistration.getImsProfile().getCmcType());
        }
        if (cmcType == 2 && imsRegistration.getDeregiReason() == 22) {
            clearAllCallsForCmcHandover(cmcType);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void onRegEventContactUriNotification(int i, List<String> list) {
        int i2;
        int i3 = this.mNumOfActiveSDs;
        this.mNumOfActiveSDs = list.size() - 1;
        String str = LOG_TAG;
        IMSLog.i(str, i, "onRegEventContactUriNotification prevNumOfActiveSDs: " + i3 + " mNumOfActiveSDs: " + this.mNumOfActiveSDs);
        startP2pDiscovery(list);
        ImsRegistration cmcRegistration = getCmcRegistration(i, 1);
        if (cmcRegistration == null || (i2 = this.mNumOfActiveSDs) <= 0 || i2 == i3) {
            return;
        }
        IMSLog.i(str, i, "send Publish when registered");
        handlePublishDialog(cmcRegistration);
    }

    private void clearAllCallsForCmcHandover(int i) {
        Log.d(LOG_TAG, "clearAllCallsForCmcHandover cmcType " + i);
        this.mImsCallSessionManager.removeSessionByCmcType(i);
        this.mVolteSvcIntf.clearAllCallInternal(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void sendDummyPublishDialog(int i, int i2) {
        PublishDialog publishDialog = new PublishDialog();
        publishDialog.setCallCount(1);
        publishDialog.addCallId(McsConstants.AccountStatus.DELETE);
        publishDialog.addCallDomain(9);
        publishDialog.addCallStatus(0);
        publishDialog.addCallType(1);
        publishDialog.addCallDirection(0);
        publishDialog.addCallRemoteUri("");
        publishDialog.addCallPullable(true);
        publishDialog.addCallNumberPresentation(0);
        publishDialog.addCallCnapNamePresentation(0);
        publishDialog.addCallCnapName("");
        publishDialog.addCallMpty(false);
        publishDialog.addConnectedTime(0L);
        sendPublishDialog(i, publishDialog, i2);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public ImsCallSession getSessionByCmcType(int i) {
        ImsCallSession imsCallSession = null;
        for (ImsCallSession imsCallSession2 : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
            if (i == imsCallSession2.getCmcType()) {
                imsCallSession = imsCallSession2;
            }
        }
        return imsCallSession;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public ImsCallSession getSessionByCmcTypeAndState(int i, CallConstants.STATE state) {
        ImsCallSession imsCallSession = null;
        for (ImsCallSession imsCallSession2 : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
            if (i == imsCallSession2.getCmcType() && imsCallSession2.getCallState() == state) {
                imsCallSession = imsCallSession2;
            }
        }
        return imsCallSession;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public boolean hasActiveCmcCallsession(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(CallConstants.STATE.InCall);
        arrayList.add(CallConstants.STATE.HoldingCall);
        arrayList.add(CallConstants.STATE.HeldCall);
        arrayList.add(CallConstants.STATE.ResumingCall);
        arrayList.add(CallConstants.STATE.ModifyingCall);
        arrayList.add(CallConstants.STATE.ModifyRequested);
        arrayList.add(CallConstants.STATE.HoldingVideo);
        arrayList.add(CallConstants.STATE.VideoHeld);
        arrayList.add(CallConstants.STATE.ResumingVideo);
        for (ImsCallSession imsCallSession : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
            if (i == imsCallSession.getCmcType() && arrayList.contains(imsCallSession.getCallState())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public boolean isCmcRegExist(int i) {
        Iterator<Registration> it = this.mRegistrationList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Registration next = it.next();
            if (next != null && (next.getImsRegi().getPhoneId() == i || ImsRegistry.getCmcAccountManager().isSupportDualSimCMC())) {
                ImsProfile imsProfile = next.getImsRegi().getImsProfile();
                if (imsProfile != null && imsProfile.getCmcType() != 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public int getSessionCountByCmcType(int i, int i2) {
        int i3 = 0;
        for (ImsCallSession imsCallSession : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
            ImsRegistration registration = imsCallSession.getRegistration();
            if (registration != null) {
                ImsProfile imsProfile = registration.getImsProfile();
                if (imsCallSession.getPhoneId() == i && imsProfile.getCmcType() == i2) {
                    i3++;
                }
            }
        }
        return i3;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void onCmcDtmfInfo(DtmfInfo dtmfInfo) {
        Log.i(LOG_TAG, "onCmcDtmfInfo");
        int i = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 7 : 5;
        for (int i2 = 1; i2 <= i; i2 += 2) {
            ImsCallSession sessionByCmcType = getSessionByCmcType(i2);
            if (sessionByCmcType != null) {
                sessionByCmcType.notifyCmcDtmfEvent(dtmfInfo.getEvent());
            }
        }
    }

    public class p2pCallbackHandler extends Handler {
        public static final int P2P_DISCOVERY_RESULT = 1;
        private ImsRegistration mP2pRegiInfo;

        public p2pCallbackHandler(Looper looper) {
            super(looper);
            this.mP2pRegiInfo = null;
        }

        public void setP2pRegiInfo(ImsRegistration imsRegistration) {
            this.mP2pRegiInfo = imsRegistration;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = true;
            if (message.what == 1) {
                Log.i(CmcServiceHelper.LOG_TAG, "P2P Discovery result = " + message.arg1);
                CmcServiceHelper.this.printP2pList();
                CmcServiceHelper.this.mIsP2pDiscoveryDone = true;
                ImsRegistration imsRegistration = this.mP2pRegiInfo;
                if (imsRegistration != null) {
                    if (CmcServiceHelper.this.isInP2pArea(imsRegistration)) {
                        if (CmcServiceHelper.this.mNeedToNotifyAfterP2pDiscovery) {
                            Log.i(CmcServiceHelper.LOG_TAG, "Notify pending DIALOG event after P2P discovery done");
                            DialogEvent dialogEvent = CmcServiceHelper.this.mLastCmcDialogEvent[this.mP2pRegiInfo.getPhoneId()];
                            if (dialogEvent != null) {
                                SecImsNotifier.getInstance().onDialogEvent(dialogEvent);
                                Iterator it = dialogEvent.getDialogList().iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        z = false;
                                        break;
                                    }
                                    Dialog dialog = (Dialog) it.next();
                                    if (dialog != null && dialog.getState() == 1) {
                                        break;
                                    }
                                }
                                if (z) {
                                    String str = "sip:" + dialogEvent.getMsisdn() + "@samsungims.com;gr=urn:duid:" + ImsRegistry.getCmcAccountManager().getCurrentLineOwnerDeviceId();
                                    CmcServiceHelper.this.mIsCmcPdCheckRespReceived.put(Integer.valueOf(dialogEvent.getPhoneId()), Boolean.FALSE);
                                    CmcServiceHelper.this.startCmcPdCheckTimer(dialogEvent.getPhoneId(), 20000L, this.mP2pRegiInfo.getHandle(), str, true);
                                } else {
                                    Log.i(CmcServiceHelper.LOG_TAG, "No cofirmed Dilaog in nofity");
                                    CmcServiceHelper.this.stopCmcPdCheckTimer(dialogEvent.getPhoneId());
                                    CmcServiceHelper.this.mLastCmcEndCallReason = 200;
                                }
                            }
                        }
                    } else {
                        Log.i(CmcServiceHelper.LOG_TAG, "Notify empty DIALOG event after P2P discovery done");
                        DialogEvent dialogEvent2 = CmcServiceHelper.this.mLastCmcDialogEvent[this.mP2pRegiInfo.getPhoneId()];
                        if (dialogEvent2 != null) {
                            dialogEvent2.clearDialogList();
                            SecImsNotifier.getInstance().onDialogEvent(dialogEvent2);
                        }
                    }
                }
                CmcServiceHelper.this.mNeedToNotifyAfterP2pDiscovery = false;
                return;
            }
            Log.i(CmcServiceHelper.LOG_TAG, "P2P Discovery invalid callback " + message.what);
        }
    }

    private void handlePublishDialog(ImsRegistration imsRegistration) {
        int phoneId = imsRegistration.getPhoneId();
        int cmcType = imsRegistration.getImsProfile().getCmcType();
        if (!hasActiveCmcCallsession(cmcType)) {
            if (hasActiveCmcCallsession(0)) {
                Log.i(LOG_TAG, "Send Publish for external VoLTE Call.");
                sendPublishDialogInternal(phoneId, imsRegistration);
                this.mCsPublishDialogMap.remove(Integer.valueOf(phoneId));
                return;
            } else if (this.mCsPublishDialogMap.containsKey(Integer.valueOf(phoneId))) {
                Log.i(LOG_TAG, "Send Publish for external CS call.");
                sendPublishDialog(phoneId, this.mCsPublishDialogMap.get(Integer.valueOf(phoneId)), cmcType);
                return;
            } else {
                Log.i(LOG_TAG, "sendDummyPublishDialog because do not have external call.");
                sendDummyPublishDialog(phoneId, cmcType);
                return;
            }
        }
        Log.i(LOG_TAG, "exist Active PD callsession. do not send PUBLISH msg.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void printP2pList() {
        Collection<MdmnServiceInfo> supportDevices;
        MdmnNsdWrapper mdmnNsdWrapper = this.mNsd;
        if (mdmnNsdWrapper == null || (supportDevices = mdmnNsdWrapper.getSupportDevices()) == null) {
            return;
        }
        Log.i(LOG_TAG, "P2P list size : " + supportDevices.size());
        String str = CmcConstants.URN_PREFIX + ImsRegistry.getCmcAccountManager().getCurrentLineOwnerDeviceId();
        for (MdmnServiceInfo mdmnServiceInfo : supportDevices) {
            String str2 = str.equals(mdmnServiceInfo.getDeviceId()) ? "PD" : ImConstants.MessageCreatorTag.SD;
            Log.i(LOG_TAG, "line id = " + mdmnServiceInfo.getLineId() + ", device id = " + mdmnServiceInfo.getDeviceId() + ", deviceType = " + str2);
            IMSLog.c(LogClass.CMC_P2P_DEVICE_LIST, str2);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void startP2pDiscovery(List<String> list) {
        if (this.mNsd == null || list == null || list.size() <= 0) {
            return;
        }
        int startDiscovery = this.mNsd.startDiscovery(this.mP2pCallbackHandler, 1, new ArrayList<>(list));
        Log.i(LOG_TAG, "startDiscovery result = " + startDiscovery + " hostlist " + list);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void startP2p(String str, String str2) {
        if (this.mNsd == null) {
            String str3 = LOG_TAG;
            Log.i(str3, "startP2p lineId : " + str2);
            Log.i(str3, "startP2p deviceId : " + str);
            this.mNsdServiceInfo = new MdmnServiceInfo(str, str2);
            this.mNsd = new MdmnNsdWrapper(this.mContext, this.mNsdServiceInfo);
        }
        Log.i(LOG_TAG, "start Nsd");
        this.mNsd.start();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void setP2pServiceInfo(String str, String str2) {
        String str3 = LOG_TAG;
        Log.i(str3, "set lineId " + str2);
        Log.i(str3, "set deviceId " + str);
        if (this.mNsd != null) {
            this.mNsd.setServiceInfo(new MdmnServiceInfo(str, str2));
        }
    }

    void updateCmcP2pList(ImsRegistration imsRegistration, CallProfile callProfile) {
        String str = LOG_TAG;
        Log.i(str, "updateCmcP2pList currentRat " + imsRegistration.getCurrentRat());
        if (this.mNsd == null || imsRegistration.getCurrentRat() != 18) {
            return;
        }
        printP2pList();
        Collection<MdmnServiceInfo> supportDevices = this.mNsd.getSupportDevices();
        if (supportDevices != null && callProfile != null) {
            if (imsRegistration.getImsProfile().getCmcType() == 2 && callProfile.getReplaceSipCallId() != null) {
                Log.i(str, "Do not set p2p list in case of CMC handover");
            } else {
                ArrayList arrayList = new ArrayList();
                for (MdmnServiceInfo mdmnServiceInfo : supportDevices) {
                    arrayList.add("sip:" + mdmnServiceInfo.getLineId() + "@samsungims.com;gr=" + mdmnServiceInfo.getDeviceId());
                }
                callProfile.setP2p(arrayList);
            }
        }
        startP2pDiscovery(ImsRegistry.getCmcAccountManager().getRegiEventNotifyHostInfo());
    }

    boolean isP2pDiscoveryDone() {
        return this.mIsP2pDiscoveryDone;
    }

    void setNeedToNotifyAfterP2pDiscovery(boolean z) {
        this.mNeedToNotifyAfterP2pDiscovery = z;
    }

    boolean isInP2pArea(ImsRegistration imsRegistration) {
        if (this.mNsd == null || imsRegistration.getCurrentRat() != 18) {
            return false;
        }
        if (imsRegistration.getImsProfile().getCmcType() != 2) {
            return ImsCallUtil.isCmcSecondaryType(imsRegistration.getImsProfile().getCmcType());
        }
        String str = CmcConstants.URN_PREFIX + ImsRegistry.getCmcAccountManager().getCurrentLineOwnerDeviceId();
        Log.i(LOG_TAG, "PD deviceId: " + str);
        Collection<MdmnServiceInfo> supportDevices = this.mNsd.getSupportDevices();
        if (supportDevices == null) {
            return false;
        }
        Iterator<MdmnServiceInfo> it = supportDevices.iterator();
        while (it.hasNext()) {
            String deviceId = it.next().getDeviceId();
            String str2 = LOG_TAG;
            Log.i(str2, "p2p deviceId: " + deviceId);
            if (str.equals(deviceId)) {
                Log.i(str2, "PD and SD are in P2P area");
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public int getCsCallPhoneIdByState(int i) {
        Log.i(LOG_TAG, "getCsCallPhoneIdByState state : " + i);
        if (this.mCsPublishDialogMap.size() > 0) {
            for (Map.Entry<Integer, PublishDialog> entry : this.mCsPublishDialogMap.entrySet()) {
                int intValue = entry.getKey().intValue();
                PublishDialog value = entry.getValue();
                int callCount = value.getCallCount();
                int[] callStatus = value.getCallStatus();
                for (int i2 = 0; i2 < callCount; i2++) {
                    if (callStatus[i2] == i) {
                        Log.i(LOG_TAG, "phone id for cs call : " + intValue);
                        return intValue;
                    }
                }
            }
        }
        Log.i(LOG_TAG, "external CS call is not found");
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006d, code lost:
    
        if (r9 != r3[0]) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
    
        if (r21[0] == 3) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x04ba  */
    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void sendPublishDialog(int r55, com.android.internal.telephony.PublishDialog r56, int r57) {
        /*
            Method dump skipped, instructions count: 1560
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.sendPublishDialog(int, com.android.internal.telephony.PublishDialog, int):void");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void sendPublishDialogInternal(int i, int i2) {
        ImsRegistration cmcRegistration = getCmcRegistration(i, i2);
        if (cmcRegistration != null) {
            sendPublishDialogInternal(i, cmcRegistration);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void setCallEstablishTimeExtra(long j) {
        this.mCmcCallEstablishTimeMap.put(-1, Long.valueOf(j));
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public long getCmcCallEstablishTime(String str) {
        if (str == null) {
            Log.i(LOG_TAG, "callid is null");
            return getActiveCmcCallEstablishTime();
        }
        if (!this.mCmcCallEstablishTimeMap.isEmpty()) {
            try {
                return this.mCmcCallEstablishTimeMap.get(Integer.valueOf(Integer.parseInt(str))).longValue();
            } catch (NumberFormatException e) {
                Log.e(LOG_TAG, "callId is not integer type " + str, e);
                return this.getActiveCmcCallEstablishTime();
            }
        }
        Log.i(LOG_TAG, "mCmcCallEstablishTimeMap is empty");
        return 0L;
    }

    private long getActiveCmcCallEstablishTime() {
        Iterator<Long> it = this.mCmcCallEstablishTimeMap.values().iterator();
        if (!it.hasNext()) {
            return 0L;
        }
        long longValue = it.next().longValue();
        Log.i(LOG_TAG, "getActiveCmcCallEstablishTime " + longValue);
        return longValue;
    }

    int getSessionCountByCmcType(int i, ImsRegistration imsRegistration) {
        if (imsRegistration != null) {
            int cmcType = imsRegistration.getImsProfile().getCmcType();
            Log.i(LOG_TAG, "curCmcType : " + cmcType);
            return getSessionCountByCmcType(i, cmcType);
        }
        Log.i(LOG_TAG, "curReg null");
        return 0;
    }

    private boolean isDuplicatedPublishDialog(String str) {
        if (this.mSendPublishDigest != null) {
            long j = this.mSendPublishInvokeTime;
            this.mSendPublishInvokeTime = System.currentTimeMillis();
            this.mSendPublishDigest.reset();
            this.mSendPublishDigest.update(str.getBytes(StandardCharsets.UTF_8));
            byte[] digest = this.mSendPublishDigest.digest();
            if (this.mSendPublishInvokeTime - j < DUPLICATED_PUBLISH_DENY_TIME_IN_MILLI && Arrays.equals(this.mSendPublishHashedXml, digest)) {
                int i = this.mSendPublishInvokeCount;
                if ((i & 63) == 0) {
                    Log.i(LOG_TAG, String.format("[%d] sendPublishDialog duplicated.", Integer.valueOf(i)));
                }
                int i2 = this.mSendPublishInvokeCount + 1;
                this.mSendPublishInvokeCount = i2;
                if (i2 <= 50 || Debug.isProductShip()) {
                    return true;
                }
                throw new RuntimeException("Too many sendPublishDialog is called in very short time!\n" + str);
            }
            this.mSendPublishInvokeCount = 0;
            this.mSendPublishHashedXml = digest;
        }
        return false;
    }

    void sendPublishDialogInternal(int i, ImsRegistration imsRegistration) {
        sendPublishDialogInternal(i, imsRegistration, false);
    }

    void sendPublishDialogInternal(int i, ImsRegistration imsRegistration, boolean z) {
        ImsCallSession sessionByCmcType;
        String str = LOG_TAG;
        Log.i(str, "sendPublishDialogInternal()");
        ArrayList arrayList = new ArrayList();
        if (imsRegistration == null) {
            Log.e(str, "Ignore sendPublishDialogInternal : PD is not registered");
            return;
        }
        ImsRegistration cmcRegistration = getCmcRegistration(i, 0);
        if (cmcRegistration != null && Mno.KT == Mno.fromName(cmcRegistration.getImsProfile().getMnoName()) && (sessionByCmcType = getSessionByCmcType(0)) != null) {
            boolean z2 = !TextUtils.isEmpty(sessionByCmcType.getCallProfile().getNumberPlus());
            boolean contains = sessionByCmcType.getCallProfile().getDialingNumber().contains("*77");
            Log.i(str, "hasTwoPhonePrefix=" + contains + " hasNumberPlus=" + z2);
            if (contains || z2) {
                Log.e(str, "Ignore sendPublishDialogInternal in two phone mode");
                return;
            }
        }
        int handle = imsRegistration.getHandle();
        String str2 = "sip:" + imsRegistration.getImpi();
        int[] callCountForSendPublishDialog = getCallCountForSendPublishDialog(i, imsRegistration, arrayList, this.mCmcTotalMnoPullable);
        int i2 = callCountForSendPublishDialog[0];
        int i3 = callCountForSendPublishDialog[1];
        int i4 = callCountForSendPublishDialog[2];
        String str3 = "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\"" + str2 + "\">\n";
        for (Dialog dialog : arrayList) {
            if (i2 - i4 > 1) {
                dialog.setIsExclusive(true);
            }
            str3 = str3 + dialog.toXmlString();
            IMSLog.c(LogClass.CMC_SEND_PUBLISH_INTERNAL, dialog.getCallType() + "," + dialog.getCallState() + "," + dialog.isExclusive());
        }
        String str4 = str3 + "</dialog-info>";
        Log.i(LOG_TAG, "extPsCallCount: " + i2 + ", validCallCnt: " + i3 + ", endedCallCnt: " + i4);
        if (arrayList.size() > 0) {
            this.mVolteSvcIntf.publishDialog(handle, str2, "displayName", str4, CMC_HANDOVER_TIMER_VALUE, z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fe A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    int[] getCallCountForSendPublishDialog(int r31, com.sec.ims.ImsRegistration r32, java.util.List<com.sec.ims.Dialog> r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.getCallCountForSendPublishDialog(int, com.sec.ims.ImsRegistration, java.util.List, boolean):int[]");
    }

    private boolean checkIgnorePublishDialogCase(int i, boolean z, boolean z2) {
        if (i != 0) {
            return false;
        }
        Log.i(LOG_TAG, "CallType is unknown");
        return true;
    }

    private CallConstants.STATE getCallstateForPublishDialog(CallConstants.STATE state, boolean z) {
        if (state != CallConstants.STATE.IncomingCall || !z) {
            return state;
        }
        Log.i(LOG_TAG, "forced InCall state change for fast establishment [delayed ACK case]");
        return CallConstants.STATE.InCall;
    }

    private int getDialogDirection(CallConstants.STATE state) {
        return state == CallConstants.STATE.InCall ? 3 : 0;
    }

    private int getDialogCallState(CallConstants.STATE state, boolean z) {
        Log.i(LOG_TAG, "session.mRemoteHeld : " + z);
        if (ImsCallUtil.isHoldCallState(state) || (state == CallConstants.STATE.InCall && z)) {
            return 2;
        }
        return ImsCallUtil.isActiveCallState(state) ? 1 : 0;
    }

    boolean hasInternalCallToIgnorePublishDialog(int i) {
        ImsProfile imsProfile;
        boolean z = false;
        for (ImsCallSession imsCallSession : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
            if (imsCallSession != null && (i == -1 || imsCallSession.getPhoneId() == i)) {
                ImsRegistration registration = imsCallSession.getRegistration();
                if (registration != null && (imsProfile = registration.getImsProfile()) != null && ImsCallUtil.isCmcPrimaryType(imsProfile.getCmcType()) && (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall || imsCallSession.getCallState() == CallConstants.STATE.InCall || (imsCallSession.getCallState() == CallConstants.STATE.AlertingCall && imsCallSession.getEndReason() != 5))) {
                    z = true;
                }
            }
        }
        return z;
    }

    boolean isNeedDelayToSendPublishDialog(int i) {
        ImsProfile imsProfile;
        boolean z = false;
        for (ImsCallSession imsCallSession : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
            if (imsCallSession != null && (i == -1 || imsCallSession.getPhoneId() == i)) {
                ImsRegistration registration = imsCallSession.getRegistration();
                if (registration != null && (imsProfile = registration.getImsProfile()) != null && imsProfile.getCmcType() == 1 && imsCallSession.getEndReason() == 20) {
                    z = true;
                }
            }
        }
        return z;
    }

    ImsRegistration updateAudioInterfaceByCmc(int i, int i2) {
        ImsRegistration imsRegistration = null;
        if (i2 != 5) {
            if (i2 != 8) {
                return null;
            }
            Log.i(LOG_TAG, "updateAudioInterface for CMC SD call.");
            return getCmcRegistration(i, false, 2);
        }
        int i3 = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 7 : 5;
        for (int i4 = 1; i4 <= i3; i4 += 2) {
            imsRegistration = getCmcRegistration(i, false, i4);
            if (imsRegistration != null) {
                this.mMediaController.bindToNetwork(imsRegistration.getNetwork());
                return imsRegistration;
            }
        }
        return imsRegistration;
    }

    public boolean isCallServiceAvailableOnSecondary(int i, String str, boolean z) {
        for (int i2 = 2; i2 <= 8; i2 += 2) {
            ImsRegistration cmcRegistration = getCmcRegistration(i, i2);
            if (z && cmcRegistration != null) {
                Log.i(LOG_TAG, "isCallServiceAvailableOnSecondary phoneId: " + i + ", service=" + str);
                return cmcRegistration.hasService(str);
            }
        }
        Log.e(LOG_TAG, "disallow Call Service");
        return false;
    }

    void onImsIncomingCallEvent(int i, int i2) {
        int i3 = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 7 : 5;
        for (int i4 = 1; i4 <= i3; i4 += 2) {
            ImsRegistration cmcRegistration = getCmcRegistration(i, false, i4);
            if (cmcRegistration != null && i2 == 0) {
                ImsCallSession sessionByCmcTypeAndState = getSessionByCmcTypeAndState(i4, CallConstants.STATE.InCall);
                ImsCallSession sessionByCmcTypeAndState2 = getSessionByCmcTypeAndState(i4, CallConstants.STATE.HeldCall);
                int i5 = sessionByCmcTypeAndState != null ? 1 : 0;
                if (sessionByCmcTypeAndState2 != null) {
                    i5++;
                }
                if (i5 == 0) {
                    sendPublishDialogInternal(i, cmcRegistration);
                }
            }
        }
        if (i2 > 0) {
            startP2pDiscovery(ImsRegistry.getCmcAccountManager().getRegiEventNotifyHostInfo());
        }
    }

    boolean hasDialingOrIncomingCall() {
        return (getSessionByCmcTypeAndState(0, CallConstants.STATE.IncomingCall) == null && getSessionByCmcTypeAndState(0, CallConstants.STATE.OutGoingCall) == null && getSessionByCmcTypeAndState(0, CallConstants.STATE.AlertingCall) == null) ? false : true;
    }

    void onImsCallEventWhenEstablished(int i, ImsCallSession imsCallSession, ImsRegistration imsRegistration) {
        int i2 = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 7 : 5;
        for (int i3 = 1; i3 <= i2; i3 += 2) {
            ImsRegistration cmcRegistration = getCmcRegistration(i, false, i3);
            if (cmcRegistration != null && imsCallSession.getCmcType() == 0) {
                ImsCallSession sessionByCmcType = getSessionByCmcType(i3);
                if (sessionByCmcType != null) {
                    if (imsCallSession.getCallProfile().isMOCall()) {
                        if (!(sessionByCmcType.getCallState() != CallConstants.STATE.Idle)) {
                            sendPublishDialogInternal(i, cmcRegistration);
                        }
                    }
                } else if (imsCallSession.getCallProfile().isMOCall()) {
                    sendPublishDialogInternal(i, cmcRegistration);
                } else {
                    int sessionCountByCmcType = getSessionCountByCmcType(i, imsRegistration);
                    if (imsCallSession.getCallProfile().getCallType() == 2 || imsCallSession.getCallProfile().getCallType() == 1 || sessionCountByCmcType > 1) {
                        sendPublishDialogInternal(i, cmcRegistration);
                    }
                }
            }
        }
    }

    void onImsCallEventWithHeldBoth(ImsCallSession imsCallSession, ImsRegistration imsRegistration) {
        if (imsRegistration != null) {
            int phoneId = imsRegistration.getPhoneId();
            int i = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 7 : 5;
            for (int i2 = 1; i2 <= i; i2 += 2) {
                boolean z = false;
                ImsRegistration cmcRegistration = getCmcRegistration(phoneId, false, i2);
                if (cmcRegistration != null && imsCallSession.getCmcType() == 0) {
                    ImsCallSession sessionByCmcType = getSessionByCmcType(i2);
                    if (sessionByCmcType != null && sessionByCmcType.getCallState() != CallConstants.STATE.Idle) {
                        z = true;
                    }
                    if (!z) {
                        sendPublishDialogInternal(phoneId, cmcRegistration);
                    }
                }
            }
        }
    }

    void onCallEndedWithSendPublish(int i, ImsCallSession imsCallSession) {
        if (isCmcRegExist(i)) {
            int i2 = ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() ? 7 : 5;
            for (int i3 = 1; i3 <= i2; i3 += 2) {
                ImsRegistration cmcRegistration = getCmcRegistration(i, false, i3);
                ImsCallSession sessionByCmcTypeAndState = getSessionByCmcTypeAndState(i3, CallConstants.STATE.InCall);
                ImsCallSession sessionByCmcTypeAndState2 = getSessionByCmcTypeAndState(i3, CallConstants.STATE.HeldCall);
                int i4 = sessionByCmcTypeAndState != null ? 1 : 0;
                if (sessionByCmcTypeAndState2 != null) {
                    i4++;
                }
                if (cmcRegistration != null && imsCallSession != null && imsCallSession.getCmcType() == 0) {
                    int cmcBoundSessionId = imsCallSession.getCallProfile().getCmcBoundSessionId();
                    for (ImsCallSession imsCallSession2 : this.mImsCallSessionManager.getUnmodifiableSessionMap().values()) {
                        if (imsCallSession2.getCmcType() == i3 && imsCallSession2.getSessionId() != cmcBoundSessionId && (imsCallSession2.getCallState() == CallConstants.STATE.OutGoingCall || imsCallSession2.getCallState() == CallConstants.STATE.AlertingCall)) {
                            i4++;
                        }
                    }
                    if (i4 == 0) {
                        sendPublishDialogInternal(i, cmcRegistration);
                    }
                } else if (cmcRegistration != null && imsCallSession != null && imsCallSession.getCmcType() == i3) {
                    if (this.mImsCallSessionManager.getActiveExtCallCount() > 0 && i4 == 0 && (!imsCallSession.mIsEstablished || imsCallSession.getErrorCode() == 6007)) {
                        sendPublishDialogInternal(i, cmcRegistration);
                    }
                    if (imsCallSession.getCmcType() == 1) {
                        sendCmcCallStateForRcs(imsCallSession.getPhoneId(), ImsConstants.CmcInfo.CMC_DUMMY_TEL_NUMBER, false);
                    }
                }
            }
            if (imsCallSession == null || !ImsCallUtil.isCmcSecondaryType(imsCallSession.getCmcType())) {
                return;
            }
            this.mLastCmcEndCallReason = imsCallSession.getErrorCode();
        }
    }

    void sendCmcCallStateForRcs(int i, String str, boolean z) {
        if (getCmcRegistration(i, false, 1) != null) {
            Log.i(LOG_TAG, "sendCmcCallStateForRcs");
            Intent intent = new Intent(this.mContext, (Class<?>) CallStateTracker.class);
            intent.setAction(ImsConstants.Intents.ACTION_CALL_STATE_CHANGED);
            intent.putExtra(ImsConstants.Intents.EXTRA_IS_INCOMING, false);
            intent.putExtra(ImsConstants.Intents.EXTRA_TEL_NUMBER, str);
            intent.putExtra(ImsConstants.Intents.EXTRA_PHONE_ID, i);
            intent.putExtra(ImsConstants.Intents.EXTRA_CALL_EVENT, z ? 2 : 1);
            intent.putExtra(ImsConstants.Intents.EXTRA_IS_CMC_CALL, true);
            intent.putExtra(ImsConstants.Intents.EXTRA_IS_CMC_CONNECTED, z);
            this.mContext.sendBroadcast(intent);
        }
    }

    DialogEvent filterOngoingDialogFromDialogEvent(DialogEvent dialogEvent) {
        ArrayList arrayList = new ArrayList();
        for (Dialog dialog : dialogEvent.getDialogList()) {
            if (dialog != null && !this.mImsCallSessionManager.hasSipCallId(dialog.getSipCallId())) {
                arrayList.add(dialog);
            }
        }
        DialogEvent dialogEvent2 = new DialogEvent(dialogEvent.getMsisdn(), arrayList);
        dialogEvent2.setPhoneId(dialogEvent.getPhoneId());
        dialogEvent2.setRegId(dialogEvent.getRegId());
        return dialogEvent2;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    com.sec.ims.DialogEvent onCmcImsDialogEvent(com.sec.ims.ImsRegistration r10, com.sec.ims.DialogEvent r11) {
        /*
            r9 = this;
            com.sec.ims.settings.ImsProfile r0 = r10.getImsProfile()
            if (r0 == 0) goto Lc6
            com.sec.ims.DialogEvent r1 = r9.filterOngoingDialogFromDialogEvent(r11)
            if (r1 == 0) goto L14
            java.lang.String r11 = com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.LOG_TAG
            java.lang.String r2 = "Filter DialogEvent"
            android.util.Log.i(r11, r2)
            r11 = r1
        L14:
            java.util.List r1 = r11.getDialogList()
            java.util.Iterator r1 = r1.iterator()
        L1c:
            boolean r2 = r1.hasNext()
            r3 = 0
            if (r2 == 0) goto L33
            java.lang.Object r2 = r1.next()
            com.sec.ims.Dialog r2 = (com.sec.ims.Dialog) r2
            if (r2 == 0) goto L1c
            int r2 = r2.getState()
            r4 = 1
            if (r2 != r4) goto L1c
            goto L34
        L33:
            r4 = r3
        L34:
            com.sec.ims.settings.ImsProfile r1 = r10.getImsProfile()
            int r1 = r1.getCmcType()
            r2 = 2
            if (r1 != r2) goto L68
            com.sec.internal.interfaces.ims.core.ICmcAccountManager r1 = com.sec.internal.ims.registry.ImsRegistry.getCmcAccountManager()
            boolean r1 = r1.isSupportSameWiFiOnly()
            if (r1 == 0) goto L68
            boolean r1 = r9.isP2pDiscoveryDone()
            if (r1 != 0) goto L57
            java.lang.String r1 = com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.LOG_TAG
            java.lang.String r2 = "Do not send OPTIONS until P2P discovery done"
            android.util.Log.i(r1, r2)
            goto L69
        L57:
            boolean r1 = r9.isInP2pArea(r10)
            if (r1 != 0) goto L68
            java.lang.String r1 = com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.LOG_TAG
            java.lang.String r2 = "PD and SD are not in P2P area"
            android.util.Log.i(r1, r2)
            r11.clearDialogList()
            goto L69
        L68:
            r3 = r4
        L69:
            if (r3 == 0) goto Lac
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "sip:"
            r1.append(r2)
            java.lang.String r2 = r11.getMsisdn()
            r1.append(r2)
            java.lang.String r2 = "@samsungims.com;gr="
            r1.append(r2)
            java.lang.String r0 = r0.getPriDeviceIdWithURN()
            r1.append(r0)
            java.lang.String r7 = r1.toString()
            java.util.Map<java.lang.Integer, java.lang.Boolean> r0 = r9.mIsCmcPdCheckRespReceived
            int r1 = r11.getPhoneId()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            r0.put(r1, r2)
            int r3 = r11.getPhoneId()
            r4 = 20000(0x4e20, double:9.8813E-320)
            int r6 = r10.getHandle()
            r8 = 1
            r2 = r9
            r2.startCmcPdCheckTimer(r3, r4, r6, r7, r8)
            goto Lbe
        Lac:
            java.lang.String r10 = com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.LOG_TAG
            java.lang.String r0 = "No cofirmed Dilaog in nofity"
            android.util.Log.i(r10, r0)
            int r10 = r11.getPhoneId()
            r9.stopCmcPdCheckTimer(r10)
            r10 = 200(0xc8, float:2.8E-43)
            r9.mLastCmcEndCallReason = r10
        Lbe:
            com.sec.ims.DialogEvent[] r9 = r9.mLastCmcDialogEvent
            int r10 = r11.getPhoneId()
            r9[r10] = r11
        Lc6:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.onCmcImsDialogEvent(com.sec.ims.ImsRegistration, com.sec.ims.DialogEvent):com.sec.ims.DialogEvent");
    }

    protected void startCmcPdCheckTimer(int i, long j, int i2, String str, boolean z) {
        stopCmcPdCheckTimer(i);
        Log.i(LOG_TAG, "startCmcPdCheckTimer: millis " + j);
        Bundle bundle = new Bundle();
        bundle.putInt("reg_id", i2);
        bundle.putString("uri", str);
        bundle.putBoolean("is_first_check", z);
        PreciseAlarmManager preciseAlarmManager = PreciseAlarmManager.getInstance(this.mContext);
        Message obtainMessage = obtainMessage(33, i, -1, bundle);
        this.mCmcPdCheckTimeOut.put(Integer.valueOf(i), obtainMessage);
        preciseAlarmManager.sendMessageDelayed(obtainMessage, j);
    }

    protected void stopCmcPdCheckTimer(int i) {
        if (this.mCmcPdCheckTimeOut.containsKey(Integer.valueOf(i))) {
            Log.i(LOG_TAG, "stopCmcPdCheckTimer[" + i + "]");
            PreciseAlarmManager.getInstance(this.mContext).removeMessage(this.mCmcPdCheckTimeOut.remove(Integer.valueOf(i)));
        }
    }

    private void checkPdAvailability(int i, Bundle bundle) {
        String string = bundle.getString("uri");
        int i2 = bundle.getInt("reg_id");
        boolean z = bundle.getBoolean("is_first_check");
        String str = LOG_TAG;
        Log.i(str, "checkPdAvailability(), isFirstCheck: " + z);
        if (this.mIsCmcPdCheckRespReceived.containsKey(Integer.valueOf(i))) {
            if (this.mIsCmcPdCheckRespReceived.get(Integer.valueOf(i)).booleanValue() || z) {
                this.mOptionsSvcIntf.requestSendCmcCheckMsg(i, i2, string);
                startCmcPdCheckTimer(i, 20000L, i2, string, false);
                this.mIsCmcPdCheckRespReceived.put(Integer.valueOf(i), Boolean.FALSE);
                return;
            }
            Log.i(str, "no 200 OK(OPTION) response from PD, remove pulling UI");
            stopCmcPdCheckTimer(i);
            DialogEvent dialogEvent = this.mLastCmcDialogEvent[i];
            if (dialogEvent != null) {
                dialogEvent.clearDialogList();
                SecImsNotifier.getInstance().onDialogEvent(dialogEvent);
            }
            this.mLastCmcEndCallReason = 200;
        }
    }

    public void forwardCmcRecordingEventToSD(int i, int i2, int i3, int i4) {
        ImsCallSession session;
        String str = LOG_TAG;
        Log.i(str, "forwardCmcRecordingEventToSD, recordEvent: " + i2 + ", extra: " + i3 + ", sessionId: " + i4);
        int convertRecordEventForCmcInfo = ImsCallUtil.convertRecordEventForCmcInfo(i2);
        StringBuilder sb = new StringBuilder();
        sb.append("recordInfoMsgEvent : ");
        sb.append(convertRecordEventForCmcInfo);
        Log.i(str, sb.toString());
        if (!isCmcRegExist(i) || convertRecordEventForCmcInfo <= 0 || (session = this.mImsCallSessionManager.getSession(i4)) == null || session.getCmcType() != 1) {
            return;
        }
        ImsCallSession session2 = this.mImsCallSessionManager.getSession(session.getCallProfile().getCmcBoundSessionId());
        if (session2 != null) {
            Log.i(str, "send CmcRecordingEvent to SD during cmc call relay");
            String sipCallId = session2.getCallProfile().getSipCallId();
            Bundle bundle = new Bundle();
            bundle.putInt("record_event", convertRecordEventForCmcInfo);
            bundle.putInt("extra", i3);
            bundle.putString("sip_call_id", sipCallId);
            this.mVolteSvcIntf.sendCmcInfo(i4, bundle);
        }
    }

    public void onCmcRecordingInfo(CmcInfoEvent cmcInfoEvent) {
        Log.i(LOG_TAG, "onCmcRecordingInfo");
        ImsCallSession sessionByCmcTypeAndState = getSessionByCmcTypeAndState(2, CallConstants.STATE.InCall);
        if (sessionByCmcTypeAndState != null) {
            sessionByCmcTypeAndState.notifyCmcInfoEvent(cmcInfoEvent);
        }
    }

    ImsRegistration getCmcRegistration(int i, boolean z, int i2) {
        Iterator<Registration> it = this.mRegistrationList.iterator();
        while (it.hasNext()) {
            Registration next = it.next();
            if (next != null && (next.getImsRegi().getPhoneId() == i || ImsRegistry.getCmcAccountManager().isSupportDualSimCMC())) {
                if (next.getImsRegi().getImsProfile().hasEmergencySupport() == z && next.getImsRegi().getImsProfile().getCmcType() == i2) {
                    return next.getImsRegi();
                }
            }
        }
        return null;
    }

    private ImsRegistration getCmcRegistration(int i, int i2) {
        return getCmcRegistration(i, false, i2);
    }

    public ImsRegistration getCmcRegistration(int i) {
        Iterator<Registration> it = this.mRegistrationList.iterator();
        while (it.hasNext()) {
            Registration next = it.next();
            if (i == next.getImsRegi().getHandle()) {
                Log.i(LOG_TAG, "getCmcRegistration: found regId=" + next.getImsRegi().getHandle());
                return next.getImsRegi();
            }
        }
        return null;
    }

    public int getCmcPdRegPhoneId() {
        Iterator<Registration> it = this.mRegistrationList.iterator();
        while (it.hasNext()) {
            Registration next = it.next();
            if (next != null && next.getImsRegi().getImsProfile() != null && next.getImsRegi().getImsProfile().getCmcType() == 1) {
                return next.getImsRegi().getPhoneId();
            }
        }
        return -1;
    }

    void startCmcHandoverTimer(ImsRegistration imsRegistration) {
        if (this.mCmcHandoverTimer != null) {
            Log.i(LOG_TAG, "already start cmc handover timer");
            return;
        }
        Log.i(LOG_TAG, "start cmc handover timer");
        PreciseAlarmManager preciseAlarmManager = PreciseAlarmManager.getInstance(this.mContext);
        Message obtainMessage = obtainMessage(34, imsRegistration);
        this.mCmcHandoverTimer = obtainMessage;
        preciseAlarmManager.sendMessageDelayed(obtainMessage, 6000L);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    public void stopCmcHandoverTimer(ImsRegistration imsRegistration) {
        Message message = this.mCmcHandoverTimer;
        if (message != null) {
            if (imsRegistration == null) {
                imsRegistration = (ImsRegistration) message.obj;
            }
            Log.i(LOG_TAG, "stop cmc handover timer handle : " + imsRegistration.getHandle());
            PreciseAlarmManager.getInstance(this.mContext).removeMessage(this.mCmcHandoverTimer);
            this.mCmcHandoverTimer = null;
            clearAllCallsForCmcHandover(imsRegistration.getImsProfile().getCmcType());
        }
    }

    private void onCmcHandoverTimerExpired(ImsRegistration imsRegistration) {
        Log.i(LOG_TAG, "onCmcHandoverTimerExpired handle : " + imsRegistration.getHandle());
        this.mCmcHandoverTimer = null;
        clearAllCallsForCmcHandover(imsRegistration.getImsProfile().getCmcType());
    }

    private CallProfile makeReplaceProfile(CallProfile callProfile) {
        CallProfile build = new DefaultCallProfileBuilder().builder().setReplaceSipCallId(callProfile.getSipCallId()).setCallType(callProfile.getCallType()).setPhoneId(callProfile.getPhoneId()).setAlertInfo(callProfile.getAlertInfo()).setEmergencyRat(callProfile.getEmergencyRat()).setUrn(callProfile.getUrn()).setCLI(callProfile.getCLI()).setConferenceCall(callProfile.getConferenceType()).setMediaProfile(callProfile.getMediaProfile()).setLineMsisdn(callProfile.getLineMsisdn()).setOriginatingUri(callProfile.getOriginatingUri()).setCmcBoundSessionId(callProfile.getCmcBoundSessionId()).setCmcType(callProfile.getCmcType()).setForceCSFB(callProfile.isForceCSFB()).setDialingNumber(callProfile.getDialingNumber()).setNetworkType(callProfile.getNetworkType()).setSamsungMdmnCall(callProfile.isSamsungMdmnCall()).build();
        if (callProfile.getDirection() == 0) {
            build.setLetteringText(callProfile.getLetteringText());
        } else {
            build.setLetteringText(callProfile.getDialingNumber());
        }
        return build;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0094, code lost:
    
        if (r3.getCallProfile().isPullCall() != false) goto L32;
     */
    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.ICmcServiceHelper, com.sec.internal.ims.servicemodules.volte2.ICmcServiceHelperInternal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.ims.cmc.CmcCallInfo getCmcCallInfo() {
        /*
            r9 = this;
            java.lang.String r0 = com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.LOG_TAG
            java.lang.String r1 = "getCmcCallInfo"
            android.util.Log.i(r0, r1)
            com.sec.internal.interfaces.ims.core.ICmcAccountManager r0 = com.sec.internal.ims.registry.ImsRegistry.getCmcAccountManager()
            int r0 = r0.getCurrentLineSlotIndex()
            com.sec.internal.interfaces.ims.core.ICmcAccountManager r1 = com.sec.internal.ims.registry.ImsRegistry.getCmcAccountManager()
            java.lang.String r1 = r1.getCurrentLineOwnerDeviceId()
            com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager r2 = r9.mImsCallSessionManager
            java.util.Map r2 = r2.getUnmodifiableSessionMap()
            java.util.Collection r2 = r2.values()
            java.util.Iterator r2 = r2.iterator()
        L25:
            boolean r3 = r2.hasNext()
            r4 = 0
            if (r3 == 0) goto L98
            java.lang.Object r3 = r2.next()
            com.sec.internal.ims.servicemodules.volte2.ImsCallSession r3 = (com.sec.internal.ims.servicemodules.volte2.ImsCallSession) r3
            int r5 = r3.getCmcType()
            if (r5 <= 0) goto L25
            int r2 = r3.getCmcType()
            boolean r2 = com.sec.internal.helper.ImsCallUtil.isCmcPrimaryType(r2)
            r5 = 1
            r6 = 2
            if (r2 == 0) goto L46
            r2 = r5
            goto L47
        L46:
            r2 = r6
        L47:
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r8 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.IncomingCall
            if (r7 != r8) goto L51
            r4 = r5
            goto L99
        L51:
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.OutGoingCall
            if (r5 == r7) goto L96
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.AlertingCall
            if (r5 != r7) goto L62
            goto L96
        L62:
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.Idle
            if (r5 == r7) goto L84
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.ReadyToCall
            if (r5 == r7) goto L84
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.EndingCall
            if (r5 == r7) goto L84
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.EndedCall
            if (r5 == r7) goto L84
            r4 = 3
            goto L99
        L84:
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r5 = r3.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r7 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.ReadyToCall
            if (r5 != r7) goto L99
            com.sec.ims.volte2.data.CallProfile r3 = r3.getCallProfile()
            boolean r3 = r3.isPullCall()
            if (r3 == 0) goto L99
        L96:
            r4 = r6
            goto L99
        L98:
            r2 = r4
        L99:
            if (r4 != 0) goto La2
            int r9 = r9.mLastCmcEndCallReason
            r3 = 6007(0x1777, float:8.418E-42)
            if (r9 != r3) goto La2
            r4 = 4
        La2:
            com.sec.ims.cmc.CmcCallInfo$Builder r9 = new com.sec.ims.cmc.CmcCallInfo$Builder
            r9.<init>()
            com.sec.ims.cmc.CmcCallInfo$Builder r9 = r9.setLineSlotId(r0)
            com.sec.ims.cmc.CmcCallInfo$Builder r9 = r9.setCmcType(r2)
            com.sec.ims.cmc.CmcCallInfo$Builder r9 = r9.setCallState(r4)
            com.sec.ims.cmc.CmcCallInfo$Builder r9 = r9.setPdDeviceId(r1)
            com.sec.ims.cmc.CmcCallInfo r9 = r9.build()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.CmcServiceHelper.getCmcCallInfo():com.sec.ims.cmc.CmcCallInfo");
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 31:
                OptionsEvent optionsEvent = (OptionsEvent) ((AsyncResult) message.obj).result;
                Log.i(LOG_TAG, "Received EVENT_P2P_OPTIONS_EVENT: " + optionsEvent.getPhoneId());
                SecImsNotifier.getInstance().onP2pPushCallEvent(this.mLastCmcDialogEvent[optionsEvent.getPhoneId()]);
                break;
            case 32:
                OptionsEvent optionsEvent2 = (OptionsEvent) ((AsyncResult) message.obj).result;
                String str = LOG_TAG;
                Log.i(str, "Received EVENT_OPTIONS_EVENT, isSuccess: " + optionsEvent2.isSuccess());
                ImsRegistration cmcRegistration = getCmcRegistration(optionsEvent2.getSessionId());
                int cmcType = cmcRegistration != null ? cmcRegistration.getImsProfile().getCmcType() : 0;
                Log.i(str, "optionEvent regi handle: " + optionsEvent2.getSessionId() + ", cmcType: " + cmcType);
                if (ImsCallUtil.isCmcPrimaryType(cmcType)) {
                    sendDummyPublishDialog(optionsEvent2.getPhoneId(), cmcType);
                    break;
                } else if (ImsCallUtil.isCmcSecondaryType(cmcType)) {
                    if (this.mCmcPdCheckTimeOut.containsKey(Integer.valueOf(optionsEvent2.getPhoneId()))) {
                        if (optionsEvent2.isSuccess()) {
                            this.mIsCmcPdCheckRespReceived.put(Integer.valueOf(optionsEvent2.getPhoneId()), Boolean.TRUE);
                            break;
                        } else {
                            Log.e(str, "ERROR Resopnse, remove pulling UI, optionFailReason: " + optionsEvent2.getReason());
                            stopCmcPdCheckTimer(optionsEvent2.getPhoneId());
                            DialogEvent dialogEvent = this.mLastCmcDialogEvent[optionsEvent2.getPhoneId()];
                            if (dialogEvent != null) {
                                dialogEvent.clearDialogList();
                                SecImsNotifier.getInstance().onDialogEvent(dialogEvent);
                            }
                            this.mLastCmcEndCallReason = 200;
                            break;
                        }
                    } else {
                        Log.e(str, "CmcPdCheckTimer is not running");
                        break;
                    }
                }
                break;
            case 33:
                checkPdAvailability(message.arg1, (Bundle) message.obj);
                break;
            case 34:
                onCmcHandoverTimerExpired((ImsRegistration) message.obj);
                break;
            case 35:
                CmcInfoEvent cmcInfoEvent = (CmcInfoEvent) ((AsyncResult) message.obj).result;
                Log.i(LOG_TAG, "Received EVT_CMC_INFO_EVENT");
                onCmcRecordingInfo(cmcInfoEvent);
                break;
        }
    }
}
