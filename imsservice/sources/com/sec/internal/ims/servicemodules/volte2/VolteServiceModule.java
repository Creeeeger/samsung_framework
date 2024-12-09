package com.sec.internal.ims.servicemodules.volte2;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.provider.Settings;
import android.telephony.BarringInfo;
import android.telephony.SubscriptionInfo;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.Call;
import com.samsung.android.ims.cmc.ISemCmcRecordingListener;
import com.samsung.android.ims.cmc.SemCmcRecordingInfo;
import com.sec.ims.Dialog;
import com.sec.ims.DialogEvent;
import com.sec.ims.IDialogEventListener;
import com.sec.ims.IRttEventListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.cmc.CmcCallInfo;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallEventListener;
import com.sec.ims.volte2.IImsCallSession;
import com.sec.ims.volte2.IVolteServiceEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.ims.volte2.data.ImsCallInfo;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.os.EmcBsIndication;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.servicemodules.Registration;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.QuantumSecurityStatusEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.RtpLossRateNoti;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.core.handler.secims.UserAgent;
import com.sec.internal.ims.core.imsdc.IdcImsCallSessionData;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.entitlement.config.EntitlementConfigService;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface;
import com.sec.internal.ims.servicemodules.volte2.data.DedicatedBearerEvent;
import com.sec.internal.ims.servicemodules.volte2.data.DtmfInfo;
import com.sec.internal.ims.servicemodules.volte2.data.IncomingCallEvent;
import com.sec.internal.ims.servicemodules.volte2.data.SIPDataEvent;
import com.sec.internal.ims.servicemodules.volte2.data.TextInfo;
import com.sec.internal.ims.servicemodules.volte2.idc.IdcExtra;
import com.sec.internal.ims.servicemodules.volte2.idc.IdcServiceHelper;
import com.sec.internal.ims.settings.DmProfileLoader;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.ims.xq.att.ImsXqReporter;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import com.voltecrypt.service.SxHangUpEntity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;

/* loaded from: classes.dex */
public class VolteServiceModule extends VolteServiceModuleInternal implements IVolteServiceModule {
    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public String getTrn(String str, String str2) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public /* bridge */ /* synthetic */ IImsCallSession getForegroundSession() {
        return super.getForegroundSession();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public /* bridge */ /* synthetic */ IImsCallSession getSessionByCallId(int i) {
        return super.getSessionByCallId(i);
    }

    public VolteServiceModule(Looper looper, Context context, IRegistrationManager iRegistrationManager, IPdnController iPdnController, IVolteServiceInterface iVolteServiceInterface, IMediaServiceInterface iMediaServiceInterface, IOptionsServiceInterface iOptionsServiceInterface) {
        super(looper, context, iRegistrationManager, iPdnController, iVolteServiceInterface, iMediaServiceInterface, iOptionsServiceInterface);
    }

    public void setUpTest(ImsCallSessionManager imsCallSessionManager, ImsCallSipErrorFactory imsCallSipErrorFactory, IVolteServiceInterface iVolteServiceInterface, ImsMediaController imsMediaController) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "setUpTest:");
        this.mVolteSvcIntf.unregisterForIncomingCallEvent(this);
        this.mVolteSvcIntf.unregisterForCallStateEvent(this);
        this.mVolteSvcIntf.unregisterForDialogEvent(this);
        this.mVolteSvcIntf.unregisterForDedicatedBearerNotifyEvent(this);
        this.mVolteSvcIntf.unregisterForRtpLossRateNoti(this);
        this.mImsCallSessionManager = imsCallSessionManager;
        this.mImsCallSipErrorFactory = imsCallSipErrorFactory;
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mMediaController = imsMediaController;
        iVolteServiceInterface.registerForIncomingCallEvent(this, 1, null);
        this.mVolteSvcIntf.registerForCallStateEvent(this, 2, null);
        this.mVolteSvcIntf.registerForDialogEvent(this, 3, null);
        this.mVolteSvcIntf.registerForDedicatedBearerNotifyEvent(this, 8, null);
        this.mVolteSvcIntf.registerForRtpLossRateNoti(this, 18, null);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public CmcServiceHelper getCmcServiceHelper() {
        return this.mCmcServiceModule;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"mmtel", "mmtel-video", "mmtel-call-composer", "cdpn", "datachannel"};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onConfigured:");
        updateFeature(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onSimReady(int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onSimReady:");
    }

    private void onEventSimReady(int i) {
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "onEventSimReady<" + i + ">");
        updateFeature(i);
        registerAllowedNetworkTypesListener(i);
        if (this.mEcholocateController != null) {
            Mno simMno = SimUtil.getSimMno(i);
            boolean z = simMno.equalsWithSalesCode(Mno.TMOUS, OmcCode.get()) || simMno.equalsWithSalesCode(Mno.SPRINT, OmcCode.get());
            Log.i(str, "EcholocateBroadcaster: " + z);
            if (!DeviceUtil.isTablet() && z) {
                this.mEcholocateController.start();
            } else {
                this.mEcholocateController.stop();
            }
        }
        if (this.mImsXqReporter == null && ImsRegistry.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_CIQ, false)) {
            this.mImsXqReporter = new ImsXqReporter(this.mContext, i);
            if (ImsXqReporter.isXqEnabled(this.mContext, i)) {
                this.mImsXqReporter.start();
            } else {
                this.mImsXqReporter.stop();
            }
        }
    }

    public boolean isVolteServiceStatus() {
        return isVolteServiceStatus(this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isVolteServiceStatus(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        boolean isVolteServiceStatus = imsRegistration != null ? DmProfileLoader.getProfile(this.mContext, imsRegistration.getImsProfile(), i).isVolteServiceStatus() : true;
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "VolteServiceStatus : " + isVolteServiceStatus);
        return isVolteServiceStatus;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isVolteSupportECT() {
        return isVolteSupportECT(this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isVolteSupportECT(int i) {
        boolean z;
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration != null && imsRegistration.getImsProfile() != null && imsRegistration.getImsProfile().getSupportEct()) {
            if (hasEmergencyCall(imsRegistration.getPhoneId())) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "Has emergency call");
            } else {
                z = true;
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "isVolteSupportECT : " + z);
                return z;
            }
        }
        z = false;
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "isVolteSupportECT : " + z);
        return z;
    }

    private void updateFeature(int i) {
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "phoneId : " + i);
        this.mEnabledFeatures[i] = 0;
        updateFeatureMmtel(i);
        updateFeatureMmtelVideo(i);
        int composerAuthValue = ImsUtil.getComposerAuthValue(i, this.mContext);
        int vBCAuthValue = ImsUtil.getVBCAuthValue(i, this.mContext);
        IMSLog.i(str, i, "composerAuthVal" + composerAuthValue + "vbcAuthVal" + vBCAuthValue);
        Mno simMno = SimUtil.getSimMno(i);
        boolean z = composerAuthValue == 2 || composerAuthValue == 3;
        boolean z2 = vBCAuthValue == 1;
        if (Mno.TMOUS.equals(simMno)) {
            if ((z || z2) && DmConfigHelper.getImsSwitchValue(this.mContext, "mmtel-call-composer", i) == 1) {
                IMSLog.i(str, i, "add MMTEL Composer feature" + simMno);
                long[] jArr = this.mEnabledFeatures;
                jArr[i] = jArr[i] | Capabilities.FEATURE_MMTEL_CALL_COMPOSER;
            } else {
                IMSLog.i(str, i, "do not add MMTEL Composer feature" + simMno);
            }
        } else if (z && DmConfigHelper.getImsSwitchValue(this.mContext, "mmtel-call-composer", i) == 1) {
            IMSLog.i(str, i, "add MMTEL Composer feature" + simMno);
            long[] jArr2 = this.mEnabledFeatures;
            jArr2[i] = jArr2[i] | Capabilities.FEATURE_MMTEL_CALL_COMPOSER;
        } else {
            IMSLog.i(str, i, "do not add MMTEL Composer feature" + simMno);
        }
        this.mEventLog.add("Update Feature " + this);
    }

    private void updateFeatureMmtel(int i) {
        Mno simMno = SimUtil.getSimMno(i);
        boolean isVowifiEnabled = isVowifiEnabled(i);
        if (simMno.isOneOf(Mno.SKT, Mno.KT, Mno.LGU, Mno.TMOUS, Mno.DISH)) {
            long[] jArr = this.mEnabledFeatures;
            jArr[i] = jArr[i] | Capabilities.FEATURE_MMTEL;
        } else if (DmConfigHelper.getImsSwitchValue(this.mContext, "mmtel", i) == 1 && DmConfigHelper.readSwitch(this.mContext, "mmtel", true, i)) {
            long[] jArr2 = this.mEnabledFeatures;
            jArr2[i] = jArr2[i] | Capabilities.FEATURE_MMTEL;
        }
        if ((simMno == Mno.VZW || simMno.isEmeasewaoce()) && isVowifiEnabled) {
            long[] jArr3 = this.mEnabledFeatures;
            jArr3[i] = jArr3[i] | Capabilities.FEATURE_MMTEL;
        }
        if (simMno == Mno.SPRINT && VowifiConfig.isEnabled(this.mContext, i)) {
            long[] jArr4 = this.mEnabledFeatures;
            jArr4[i] = jArr4[i] | Capabilities.FEATURE_MMTEL;
        }
        if (ImsRegistry.getCmcAccountManager().isCmcEnabled()) {
            long[] jArr5 = this.mEnabledFeatures;
            jArr5[i] = jArr5[i] | Capabilities.FEATURE_MMTEL;
        }
    }

    private void updateFeatureMmtelVideo(int i) {
        if (SimUtil.getSimMno(i).isOneOf(Mno.SKT, Mno.KT, Mno.LGU)) {
            boolean isVolteSettingEnabled = isVolteSettingEnabled();
            boolean isVolteServiceStatus = isVolteServiceStatus();
            boolean isLTEDataModeEnabled = isLTEDataModeEnabled(i);
            if (isVolteSettingEnabled && isVolteServiceStatus && isLTEDataModeEnabled) {
                long[] jArr = this.mEnabledFeatures;
                jArr[i] = jArr[i] | Capabilities.FEATURE_MMTEL_VIDEO;
            }
        }
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "mmtel-video", i) == 1 && DmConfigHelper.readSwitch(this.mContext, "mmtel-video", true, i)) {
            long[] jArr2 = this.mEnabledFeatures;
            jArr2[i] = jArr2[i] | Capabilities.FEATURE_MMTEL_VIDEO;
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void onVoWiFiSwitched(int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onVoWiFiSwitched:");
        updateFeature(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onServiceSwitched");
        updateFeature(i);
    }

    protected void startEpdnDisconnectTimer(int i, long j) {
        stopEpdnDisconnectTimer(i);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "startRetryTimer: millis " + j);
        PreciseAlarmManager preciseAlarmManager = PreciseAlarmManager.getInstance(this.mContext);
        Message obtainMessage = obtainMessage(16, i, -1);
        this.mEpdnDisconnectTimeOut.put(Integer.valueOf(i), obtainMessage);
        preciseAlarmManager.sendMessageDelayed(obtainMessage, j);
    }

    protected void stopEpdnDisconnectTimer(int i) {
        if (this.mEpdnDisconnectTimeOut.containsKey(Integer.valueOf(i))) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "stopEpdnDisconnectTimer[" + i + "]");
            PreciseAlarmManager preciseAlarmManager = PreciseAlarmManager.getInstance(this.mContext);
            Message message = this.mEpdnDisconnectTimeOut.get(Integer.valueOf(i));
            this.mEpdnDisconnectTimeOut.remove(Integer.valueOf(i));
            preciseAlarmManager.removeMessage(message);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        if (imsRegistration == null || imsRegistration.getImsProfile() == null) {
            return;
        }
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        int phoneId = imsRegistration.getPhoneId();
        IMSLog.c(LogClass.VOLTE_REGISTERED, "" + phoneId);
        ImsRegistration imsRegistration2 = getImsRegistration(phoneId);
        this.mLastRegiErrorCode[phoneId] = SipErrorBase.OK.getCode();
        super.onRegistered(imsRegistration);
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        if (imsProfile.hasEmergencySupport()) {
            this.mEventLog.add("Emergency Registered Feature " + this.mEnabledFeatures[phoneId]);
            if (fromName == Mno.KDDI) {
                startEpdnDisconnectTimer(phoneId, 240000L);
                return;
            }
            return;
        }
        if (this.mWfcEpdgMgr.isEpdgServiceConnected()) {
            boolean z = ImsRegistry.getBoolean(phoneId, GlobalSettingsConstants.Call.ALLOW_RELEASE_WFC_BEFORE_HO, false);
            this.mEventLog.logAndAdd(fromName + " is allow release call " + z);
            this.mWfcEpdgMgr.getEpdgMgr().setReleaseCallBeforeHO(phoneId, z);
        }
        IRegistrationManager iRegistrationManager = this.mRegMan;
        if (iRegistrationManager != null && iRegistrationManager.isVoWiFiSupported(phoneId) && imsRegistration2 != null && imsRegistration2.getEpdgStatus() != imsRegistration.getEpdgStatus()) {
            ImsRegistration imsRegistration3 = getImsRegistration(phoneId, true);
            if (fromName == Mno.ATT && imsRegistration3 != null && imsRegistration.getEpdgStatus() != imsRegistration3.getEpdgStatus() && !hasEmergencyCall(phoneId)) {
                this.mRegMan.stopEmergencyRegistration(phoneId);
            }
            this.mImsCallSessionManager.handleEpdgHandover(phoneId, imsRegistration, fromName);
        }
        this.mImsCallSessionManager.setRadioTechForCallProfile(phoneId);
        terminateMoWfcWhenWfcSettingOff(phoneId);
        String str = IVolteServiceModuleInternal.LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Registered to VOLTE service. ");
        sb.append(IMSLog.checker(imsRegistration + ""));
        sb.append(" TTYMode ");
        sb.append(this.mTtyMode[phoneId]);
        Log.i(str, sb.toString());
        this.mEventLog.logAndAdd("Registered Feature " + this.mEnabledFeatures[phoneId] + " with handle " + imsRegistration.getHandle());
        if (imsProfile.getTtyType() != 1 && imsProfile.getTtyType() != 3) {
            this.mVolteSvcIntf.setTtyMode(phoneId, 0, this.mTtyMode[phoneId]);
        }
        if (ImsCallUtil.isCmcPrimaryType(imsProfile.getCmcType())) {
            this.mCmcMediaController.connectToSve(phoneId);
        }
        if (imsRegistration.hasService("mmtel")) {
            this.mMmtelAcquiredEver = true;
            this.mProhibited[phoneId] = false;
        } else {
            Log.i(str, "Registration Without MMTEL has DialogList notify empty dialog");
            clearDialogList(phoneId, imsRegistration.getHandle());
        }
        setIsLteRetrying(phoneId, false);
        this.mImsCallSessionManager.onRegistered(imsRegistration);
        this.mCmcServiceModule.onRegistered(imsRegistration);
        this.mIdcServiceModule.onRegistered(imsRegistration);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onDeregistering(ImsRegistration imsRegistration) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onDeregistering");
        this.mCmcServiceModule.onDeregistering(imsRegistration);
        removeMessages(13);
        sendMessage(obtainMessage(13, imsRegistration));
    }

    private void handleDeregistering(ImsRegistration imsRegistration) {
        super.onDeregistering(imsRegistration);
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "handleDeregistering " + IMSLog.checker(imsRegistration));
        int handle = imsRegistration.getHandle();
        if (Mno.fromName(imsRegistration.getImsProfile().getMnoName()).isOneOf(Mno.TMOUS, Mno.DISH) && imsRegistration.getDeregiReason() == 11) {
            Log.i(str, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return");
            return;
        }
        if (isRunning()) {
            removeMessages(9);
            if (imsRegistration.getImsProfile().getCmcType() == 2 && this.mCmcServiceModule.getSessionCountByCmcType(imsRegistration.getPhoneId(), imsRegistration.getImsProfile().getCmcType()) > 0 && imsRegistration.getDeregiReason() == 2) {
                this.mCmcServiceModule.startCmcHandoverTimer(imsRegistration);
            } else {
                this.mImsCallSessionManager.endCallByDeregistered(imsRegistration);
            }
            clearDialogList(imsRegistration.getPhoneId(), handle);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onDeregistered");
        IMSLog.c(LogClass.VOLTE_DEREGISTERED, imsRegistration.getPhoneId() + "," + i);
        this.mCmcServiceModule.onDeregistered(imsRegistration, i);
        this.mLastRegiErrorCode[imsRegistration.getPhoneId()] = i;
        removeMessages(12);
        sendMessage(obtainMessage(12, i, 0, imsRegistration));
    }

    private void handleDeregistered(ImsRegistration imsRegistration, int i) {
        super.onDeregistered(imsRegistration, i);
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "handleDeregistered");
        if (ImsCallUtil.isCmcPrimaryType(imsRegistration.getImsProfile().getCmcType())) {
            this.mCmcMediaController.disconnectToSve();
        }
        this.mImsCallSessionManager.handleDeregistered(this.mContext, imsRegistration.getPhoneId(), i, Mno.fromName(imsRegistration.getImsProfile().getMnoName()));
        if (imsRegistration.getImsProfile().hasEmergencySupport()) {
            Log.i(str, "Deregistered emergency profile = " + i + ", reason = " + imsRegistration.getDeregiReason());
            this.mEventLog.logAndAdd("Emergency Deregistered reason " + i + " with handle " + imsRegistration.getHandle());
            if (this.mEcbmMode[imsRegistration.getPhoneId()]) {
                return;
            }
            if (Mno.fromName(imsRegistration.getImsProfile().getMnoName()) == Mno.ATT && i != 200 && i != 1606) {
                Log.i(str, "Do not stopEmergencyRegistration It's ATT and error Code is not 200 nor 1606");
                this.mEventLog.add("Do not stopEmergencyRegistration It's ATT and error Code is not 200");
                return;
            } else if (Mno.fromName(imsRegistration.getImsProfile().getMnoName()).isOneOf(Mno.TMOUS, Mno.DISH) && imsRegistration.getDeregiReason() == 11) {
                Log.i(str, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return");
                return;
            } else {
                this.mRegMan.stopEmergencyRegistration(imsRegistration.getPhoneId());
                return;
            }
        }
        Log.i(str, "Deregistered from VOLTE service. reason " + i);
        int handle = imsRegistration.getHandle();
        this.mEventLog.logAndAdd("Deregistered reason " + i + " with handle " + handle);
        if (isRunning()) {
            if (imsRegistration.getImsProfile().getCmcType() == 2 && this.mCmcServiceModule.getSessionCountByCmcType(imsRegistration.getPhoneId(), imsRegistration.getImsProfile().getCmcType()) > 0 && imsRegistration.getDeregiReason() == 2) {
                this.mCmcServiceModule.startCmcHandoverTimer(imsRegistration);
            } else {
                this.mImsCallSessionManager.endCallByDeregistered(imsRegistration);
            }
            clearDialogList(imsRegistration.getPhoneId(), handle);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onNetworkChanged(NetworkEvent networkEvent, int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onNetworkChanged: " + networkEvent);
        NetworkEvent networkEvent2 = this.mNetworks.get(Integer.valueOf(i));
        if (networkEvent != null && networkEvent2 != null && networkEvent.network != networkEvent2.network) {
            IMSLog.c(LogClass.VOLTE_RAT_CHANGE, i + "," + this.mNetworks.get(Integer.valueOf(i)).network + "->" + networkEvent.network);
        }
        this.mNetworks.put(Integer.valueOf(i), networkEvent);
        removeMessages(9);
        sendMessage(obtainMessage(9, 100, i));
    }

    private void tryDisconnect(int i, int i2) {
        int i3 = this.mNetworks.get(Integer.valueOf(i2)).network;
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "tryDisconnect(" + i2 + ") delay " + i);
        ImsRegistration imsRegistration = getImsRegistration(i2);
        if (imsRegistration != null) {
            Mno fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
            if (fromName.isKor() && TelephonyManagerExt.getNetworkClass(i3) == 2) {
                Log.i(str, "to do nothing");
                return;
            }
            if (fromName == Mno.ATT && imsRegistration.getImsProfile().isSoftphoneEnabled() && i3 != 0) {
                Log.i(str, "to do nothing");
                return;
            }
            if (hasActiveCall(i2) && this.mPdnController.isEpdgConnected(i2) && this.mPdnController.isWifiConnected()) {
                Log.i(str, "to do nothing - Continue Wifi call");
                return;
            }
            if (ImsCallUtil.isMultiPdnRat(i3)) {
                if (this.mRegMan.isSuspended(imsRegistration.getHandle())) {
                    if (i > 2000) {
                        Log.e(str, "isSuspended(), waited enough...");
                    } else {
                        Log.e(str, "isSuspended(), retrying...");
                        sendMessageDelayed(obtainMessage(9, i * 2, i2), i);
                        return;
                    }
                }
                this.mRatChanged[i2] = true;
                this.mImsCallSessionManager.endcallByNwHandover(imsRegistration);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getParticipantIdForMerge(int i, int i2) {
        return this.mImsCallSessionManager.getParticipantIdForMerge(i, i2);
    }

    public CallProfile createCallProfile(int i, int i2) {
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(i2);
        return callProfile;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsRegistration getRegInfo(int i) {
        if (i == -1) {
            return getImsRegistration();
        }
        Iterator<Registration> it = this.mRegistrationList.iterator();
        while (it.hasNext()) {
            Registration next = it.next();
            if (i == next.getImsRegi().getHandle()) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "getRegInfo: found regId=" + next.getImsRegi().getHandle());
                return next.getImsRegi();
            }
        }
        return getImsRegistration();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public ImsCallSession createSession(CallProfile callProfile) throws RemoteException {
        return this.mImsCallSessionManager.createSession(this.mContext, callProfile, callProfile == null ? null : getImsRegistration(callProfile.getPhoneId()));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public ImsCallSession createSession(CallProfile callProfile, int i) throws RemoteException {
        return this.mImsCallSessionManager.createSession(this.mContext, callProfile, getRegInfo(i));
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void updateCmcP2pList(ImsRegistration imsRegistration, CallProfile callProfile) {
        this.mCmcServiceModule.updateCmcP2pList(imsRegistration, callProfile);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public synchronized int sendRttSessionModifyRequest(int i, boolean z) {
        return this.mImsCallSessionManager.sendRttSessionModifyRequest(i, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setAutomaticMode(int i, boolean z) {
        boolean[] zArr = this.mAutomaticMode;
        boolean z2 = zArr[i];
        zArr[i] = z;
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "setAutomaticMode: " + z2 + " -> " + z);
        if (z2 == z) {
            Log.e(str, "setAutomaticMode: ignored");
        } else {
            this.mVolteSvcIntf.setAutomaticMode(i, z);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean getAutomaticMode() {
        return getAutomaticMode(this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean getAutomaticMode(int i) {
        return this.mAutomaticMode[i];
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setOutOfService(boolean z, int i) {
        this.mVolteSvcIntf.setOutOfService(z, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public synchronized void sendRttSessionModifyResponse(int i, boolean z) {
        this.mImsCallSessionManager.sendRttSessionModifyResponse(i, z);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public IImsMediaController getImsMediaController() {
        return this.mMediaController;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ICmcMediaController getCmcMediaController() {
        return this.mCmcMediaController;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public ImsCallSession getPendingSession(String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "getPendingSession: callId " + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return this.mImsCallSessionManager.getSessionByCallId(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean getExtMoCall() {
        return this.mImsCallSessionManager.getExtMoCall();
    }

    public void registerForVolteServiceEvent(int i, IVolteServiceEventListener iVolteServiceEventListener) {
        this.mVolteNotifier.registerForVolteServiceEvent(i, iVolteServiceEventListener);
    }

    public void deRegisterForVolteServiceEvent(int i, IVolteServiceEventListener iVolteServiceEventListener) {
        this.mVolteNotifier.deRegisterForVolteServiceEvent(i, iVolteServiceEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void registerRttEventListener(int i, IRttEventListener iRttEventListener) {
        this.mVolteNotifier.registerRttEventListener(i, iRttEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void unregisterRttEventListener(int i, IRttEventListener iRttEventListener) {
        this.mVolteNotifier.unregisterRttEventListener(i, iRttEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void registerDialogEventListener(int i, IDialogEventListener iDialogEventListener) {
        this.mVolteNotifier.registerDialogEventListener(i, iDialogEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void unregisterDialogEventListener(int i, IDialogEventListener iDialogEventListener) {
        this.mVolteNotifier.unregisterDialogEventListener(i, iDialogEventListener);
    }

    public void registerForCallStateEvent(IImsCallEventListener iImsCallEventListener) {
        registerForCallStateEvent(this.mActiveDataPhoneId, iImsCallEventListener);
    }

    public void registerForCallStateEvent(int i, IImsCallEventListener iImsCallEventListener) {
        this.mVolteNotifier.registerForCallStateEvent(i, iImsCallEventListener);
    }

    public void deregisterForCallStateEvent(IImsCallEventListener iImsCallEventListener) {
        deregisterForCallStateEvent(this.mActiveDataPhoneId, iImsCallEventListener);
    }

    public void deregisterForCallStateEvent(int i, IImsCallEventListener iImsCallEventListener) {
        this.mVolteNotifier.deregisterForCallStateEvent(i, iImsCallEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void registerCmcRecordingListener(int i, ISemCmcRecordingListener iSemCmcRecordingListener) {
        this.mVolteNotifier.registerCmcRecordingListener(i, iSemCmcRecordingListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void unregisterCmcRecordingListener(int i, ISemCmcRecordingListener iSemCmcRecordingListener) {
        this.mVolteNotifier.unregisterCmcRecordingListener(i, iSemCmcRecordingListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setUiTTYMode(int i, int i2, Message message) {
        Messenger messenger;
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "setUiTTYMode: phoneId = " + i + ", mode = " + i2 + ", do nothing");
        if (message == null || (messenger = message.replyTo) == null) {
            return;
        }
        try {
            messenger.send(message);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getTtyMode() {
        return this.mTtyMode[this.mActiveDataPhoneId];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getTtyMode(int i) {
        return this.mTtyMode[i];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isRttCall(int i) {
        return this.mImsCallSessionManager.isRttCall(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setRttMode(int i) {
        super.setRttMode(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setRttMode(int i, int i2) {
        super.setRttMode(i, i2);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getRttMode() {
        return this.mRttMode[this.mActiveDataPhoneId];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getRttMode(int i) {
        return this.mRttMode[i];
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void sendRttMessage(String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "sendRttMessage: " + str);
        this.mImsCallSessionManager.sendRttMessage(str);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public synchronized void onSendRttSessionModifyRequest(int i, boolean z) {
        int phoneIdByCallId = this.mImsCallSessionManager.getPhoneIdByCallId(i);
        if (phoneIdByCallId == -1) {
            phoneIdByCallId = this.mActiveDataPhoneId;
        }
        getSessionByCallId(i).getCallProfile().getMediaProfile().setRttMode(z ? 1 : 0);
        this.mVolteNotifier.onSendRttSessionModifyRequest(phoneIdByCallId, getSessionByCallId(i), z);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public synchronized void onSendRttSessionModifyResponse(int i, boolean z, boolean z2) {
        int phoneIdByCallId = this.mImsCallSessionManager.getPhoneIdByCallId(i);
        if (phoneIdByCallId == -1) {
            phoneIdByCallId = this.mActiveDataPhoneId;
        }
        getSessionByCallId(i).getCallProfile().getMediaProfile().setRttMode(z == z2 ? 1 : 0);
        this.mVolteNotifier.onSendRttSessionModifyResponse(phoneIdByCallId, getSessionByCallId(i), z, z2);
    }

    private void onCallStatusChange(int i, int i2) {
        Mno fromName;
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            fromName = SimUtil.getSimMno(i);
        } else {
            fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        if (fromName == Mno.VZW && i2 == 0) {
            this.mSsacManager.sendMessage(obtainMessage(i2, Integer.valueOf(i)));
        }
        IRegistrationManager iRegistrationManager = this.mRegMan;
        if (iRegistrationManager != null) {
            iRegistrationManager.updateTelephonyCallStatus(i, i2);
        }
        IConfigModule configModule = ImsRegistry.getConfigModule();
        if (configModule != null) {
            configModule.updateTelephonyCallStatus(i, i2);
        }
        EntitlementConfigService.updateTelephonyCallStatus(i, i2);
    }

    private void onImsDialogEvent(DialogEvent dialogEvent) {
        if (dialogEvent == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "ignoring dialog list is null");
            return;
        }
        ImsRegistration regInfo = getRegInfo(dialogEvent.getRegId());
        boolean z = true;
        if (regInfo != null && regInfo.getImsProfile() != null) {
            if (Mno.fromName(regInfo.getImsProfile().getMnoName()) == Mno.VZW) {
                for (Dialog dialog : dialogEvent.getDialogList()) {
                    if (dialog.isExclusive()) {
                        dialog.setIsPullAvailable(false);
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Exclusive call can't pulling");
                    } else if (dialog.isHeld()) {
                        dialog.setIsPullAvailable(false);
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Held call can't pulling");
                    } else if (dialog.isVideoPortZero()) {
                        dialog.setIsPullAvailable(true);
                        dialog.setCallType(1);
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Downgraded video call can pulling and change callType to Voice");
                    } else if (ImsCallUtil.isVideoCall(dialog.getCallType()) && dialog.getVideoDirection() == 1) {
                        dialog.setIsPullAvailable(false);
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Backgrounded Video call can't pulling");
                    } else if (ImsCallUtil.isVideoCall(dialog.getCallType()) && !regInfo.hasService("mmtel-video")) {
                        dialog.setIsPullAvailable(false);
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "video call can't pulling with video feature");
                    } else {
                        dialog.setIsPullAvailable(true);
                    }
                }
            }
            if (ImsCallUtil.isCmcPrimaryType(regInfo.getImsProfile().getCmcType())) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "Ignore DialogEvent");
                return;
            }
            if (ImsCallUtil.isCmcSecondaryType(regInfo.getImsProfile().getCmcType())) {
                dialogEvent = this.mCmcServiceModule.onCmcImsDialogEvent(regInfo, dialogEvent);
                if (regInfo.getImsProfile().getCmcType() == 2 && ImsRegistry.getCmcAccountManager().isSupportSameWiFiOnly() && !this.mCmcServiceModule.isP2pDiscoveryDone()) {
                    Log.i(IVolteServiceModuleInternal.LOG_TAG, "Do not notify dialog event until P2P discovery done");
                    this.mCmcServiceModule.setNeedToNotifyAfterP2pDiscovery(true);
                    z = false;
                }
            }
        }
        this.mLastDialogEvent[dialogEvent.getPhoneId()] = dialogEvent;
        if (z) {
            this.mVolteNotifier.notifyOnDialogEvent(dialogEvent);
            SecImsNotifier.getInstance().onDialogEvent(dialogEvent);
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "Last Notified Dialog Event : " + IMSLog.checker(this.mLastDialogEvent[dialogEvent.getPhoneId()]));
        }
    }

    private void onEcbmStateChanged(int i, boolean z) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onEcbmStateChanged: ecbm=" + z + " oldEcbm[" + i + "]=" + this.mEcbmMode[i]);
        boolean[] zArr = this.mEcbmMode;
        boolean z2 = zArr[i];
        zArr[i] = z;
        IMSLog.c(LogClass.VOLTE_CHANGE_ECBM, i + "," + z2 + "," + this.mEcbmMode[i]);
        if (this.mEcbmMode[i] || !z2) {
            return;
        }
        this.mRegMan.stopEmergencyRegistration(i);
    }

    private void onScreenOnOffChanged(int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onScreenOnOffChanged: on =" + i);
        IVolteServiceInterface iVolteServiceInterface = this.mVolteSvcIntf;
        if (iVolteServiceInterface != null) {
            iVolteServiceInterface.updateScreenOnOff(this.mActiveDataPhoneId, i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void updateSSACInfo(int i, int i2, int i3, int i4, int i5) {
        updateSSACInfo(i, new SsacInfo(i2, i3, i4, i5));
    }

    private void updateSSACInfo(int i, SsacInfo ssacInfo) {
        SsacManager ssacManager = this.mSsacManager;
        if (ssacManager == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "mSsacManager was not exist!");
        } else {
            ssacManager.updateSSACInfo(i, ssacInfo);
        }
    }

    private void onUpdateSSACInfo(int i, BarringInfo barringInfo) {
        updateSSACInfo(i, new SsacInfo(barringInfo));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void updateAudioInterface(int i, int i2) {
        ImsRegistration updateAudioInterfaceByCmc;
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "updateAudioInterface, phoneId :" + i + ", direction: " + i2);
        String audioMode = ImsCallUtil.getAudioMode(i2);
        boolean z = false;
        if (i2 == 5 || i2 == 8) {
            updateAudioInterfaceByCmc = this.mCmcServiceModule.updateAudioInterfaceByCmc(i, i2);
        } else {
            updateAudioInterfaceByCmc = getImsRegistration(i);
            if (updateAudioInterfaceByCmc == null && this.mCmcServiceModule.isCmcRegExist(i)) {
                for (int i3 = 2; i3 <= 8; i3 += 2) {
                    updateAudioInterfaceByCmc = this.mCmcServiceModule.getCmcRegistration(i, false, i3);
                    if (updateAudioInterfaceByCmc != null) {
                        break;
                    }
                }
            }
        }
        if (updateAudioInterfaceByCmc == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "There is no IMS Registration take Emergency Regi");
            updateAudioInterfaceByCmc = getImsRegistration(i, true);
        }
        if (updateAudioInterfaceByCmc != null) {
            if (i2 == 4) {
                Iterator<ImsCallSession> it = this.mImsCallSessionManager.getEmergencySession(i).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ImsCallSession next = it.next();
                    if (next.getCallState() == CallConstants.STATE.InCall && next.getPhoneId() == i) {
                        IUserAgent emergencyUa = getEmergencyUa(i);
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Emergency session. Invoke updateAudioInterface() with UserAgent");
                        this.mVolteSvcIntf.updateAudioInterface(0, audioMode, (UserAgent) emergencyUa);
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    this.mVolteSvcIntf.updateAudioInterface(updateAudioInterfaceByCmc.getHandle(), audioMode);
                }
            } else {
                this.mVolteSvcIntf.updateAudioInterface(updateAudioInterfaceByCmc.getHandle(), audioMode);
            }
        }
        if ("STOP".equals(audioMode)) {
            return;
        }
        this.mImsCallSessionManager.forceNotifyCurrentCodec();
    }

    private IUserAgent getEmergencyUa(int i) {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager != null) {
            return registrationManager.getUserAgentOnPdn(15, i);
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isQSSSuccessAuthAndLogin(int i) {
        return super.isQSSSuccessAuthAndLogin(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean hasQecInCall() {
        return this.mImsCallSessionManager.hasQecInCall();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setVideoCrtAudio(int i, boolean z) {
        ImsCallSession incomingCallSession = this.mImsCallSessionManager.getIncomingCallSession(i);
        if (incomingCallSession == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "setVideoCrtAudio() no valid incoming call session");
        } else {
            this.mVolteSvcIntf.setVideoCrtAudio(incomingCallSession.getSessionId(), z);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void sendDtmfEvent(int i, String str) {
        ImsCallSession alertingCallSession = this.mImsCallSessionManager.getAlertingCallSession(i);
        ImsCallSession incomingCallSession = this.mImsCallSessionManager.getIncomingCallSession(i);
        if (alertingCallSession != null) {
            this.mVolteSvcIntf.sendDtmfEvent(alertingCallSession.getSessionId(), str);
        } else if (incomingCallSession != null) {
            this.mVolteSvcIntf.sendDtmfEvent(incomingCallSession.getSessionId(), str);
        } else {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "sendDtmfEvent() no valid alerting or incoming call session");
        }
    }

    public void enableCallWaitingRule(boolean z) {
        this.mEnableCallWaitingRule = z;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isCallBarredBySSAC(int i, int i2) {
        if (this.mPdnController.isEpdgConnected(i)) {
            return false;
        }
        boolean isCallBarred = this.mSsacManager.isCallBarred(i, i2);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "isCallBarredBySSAC[" + i + "]: result for call type " + i2 + " is " + isCallBarred);
        return isCallBarred;
    }

    public DialogEvent getLastDialogEvent() {
        return this.mLastDialogEvent[this.mActiveDataPhoneId];
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public DialogEvent getLastDialogEvent(int i) {
        return this.mLastDialogEvent[i];
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void pushCall(int i, String str) {
        String str2 = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str2, "pushCall: callId : " + i + ", targetNumber : " + IMSLog.checker(str));
        ImsCallSession sessionByCallId = getSessionByCallId(i);
        if (sessionByCallId == null) {
            Log.i(str2, "callId(" + i + ") is invalid");
            return;
        }
        this.mImsExternalCallController.pushCall(sessionByCallId, str, getImsRegistration(sessionByCallId.getPhoneId()));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void consultativeTransferCall(int i, int i2) {
        ImsCallSession sessionByCallId = getSessionByCallId(i);
        ImsCallSession sessionByCallId2 = getSessionByCallId(i2);
        if (sessionByCallId == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "fgCallId(" + i + ") is invalid");
            return;
        }
        if (sessionByCallId2 == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "bgCallId(" + i2 + ") is invalid");
            return;
        }
        this.mImsExternalCallController.consultativeTransferCall(sessionByCallId, sessionByCallId2, getImsRegistration(sessionByCallId.getPhoneId()));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void transferCall(String str, String str2) throws RemoteException {
        this.mImsExternalCallController.transferCall(this.mActiveDataPhoneId, str, str2, this.mLastDialogEvent);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void notifyOnPulling(int i, int i2) {
        this.mVolteNotifier.notifyOnPulling(i, i2);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void notifyOnCmcRecordingEvent(int i, int i2, int i3, int i4) {
        this.mVolteNotifier.notifyOnCmcRecordingEvent(i, i2, i3);
        this.mCmcServiceModule.forwardCmcRecordingEventToSD(i, i2, i3, i4);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void notifyOnCmcRelayEvent(int i, int i2, int i3) {
        ImsCallSession session;
        ImsCallSession session2;
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "notifyOnCmcRelayEvent event: " + i + " extPhoneId: " + i2 + " intSessionId: " + i3);
        if (i != 1) {
            if (i != 0 || i2 <= -1 || i3 <= -1 || (session = getSession(i3)) == null) {
                return;
            }
            Log.i(str, "notifyOnCmcRelayEvent intSession.setRelayChTerminated(false)");
            session.setRelayChTerminated(false);
            return;
        }
        if (hasMessages(35)) {
            removeMessages(35);
            updateAudioInterface(i2, 4);
        } else {
            if (i2 <= -1 || i3 <= -1 || (session2 = getSession(i3)) == null) {
                return;
            }
            session2.setRelayChTerminated(true);
        }
    }

    protected void onDedicatedBearerEvent(DedicatedBearerEvent dedicatedBearerEvent) {
        ImsCallSession session = getSession(dedicatedBearerEvent.getBearerSessionId());
        if (session == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onDedicatedBearerEvent: unknown session " + dedicatedBearerEvent.getBearerSessionId());
            return;
        }
        session.setDedicatedBearerState(dedicatedBearerEvent.getQci(), dedicatedBearerEvent.getBearerState());
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onDedicatedBearerEvent: received for session : " + session + " ,bearer state : " + dedicatedBearerEvent.getBearerState() + " ,qci : " + dedicatedBearerEvent.getQci());
        this.mVolteNotifier.onDedicatedBearerEvent(session, dedicatedBearerEvent);
    }

    protected void onQuantumSecurityStatusEvent(QuantumSecurityStatusEvent quantumSecurityStatusEvent) {
        ImsCallSession session = getSession(quantumSecurityStatusEvent.getSessionId());
        if (session == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onQuantumSecurityStatusEvent: unknown session " + quantumSecurityStatusEvent.getSessionId());
            return;
        }
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "onQuantumSecurityStatusEvent: received for sessionId : " + quantumSecurityStatusEvent.getSessionId() + ", event : " + quantumSecurityStatusEvent.getEvent() + ", qtSessionId : " + IMSLog.checker(quantumSecurityStatusEvent.getQtSessionId()));
        if (quantumSecurityStatusEvent.getEvent() == QuantumSecurityStatusEvent.QuantumEvent.FALLBACK_TO_NORMAL_CALL) {
            session.notifyQuantumEncryptionStatus(4);
            this.mCmcServiceModule.sendPublishDialogInternal(session.getPhoneId(), session.getCmcType());
        } else if (quantumSecurityStatusEvent.getEvent() == QuantumSecurityStatusEvent.QuantumEvent.SUCCESS) {
            session.notifyQuantumEncryptionStatus(3);
        } else {
            if (quantumSecurityStatusEvent.getEvent() != QuantumSecurityStatusEvent.QuantumEvent.NOTIFY_SESSION_ID || TextUtils.isEmpty(quantumSecurityStatusEvent.getQtSessionId())) {
                return;
            }
            Log.i(str, "QtSessionId notified by voice engine. Request session key");
            session.updateQuantumPeerProfileStatus(401, "NOTIFY_SESSION_ID", quantumSecurityStatusEvent.getQtSessionId(), "");
        }
    }

    protected void onAirplaneModeChanged(boolean z) {
        this.mVolteSvcIntf.updateAirplaneMode(z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void setActiveImpu(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            this.mActiveImpu[i] = null;
        } else {
            this.mActiveImpu[i] = ImsUri.parse(str);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsUri getActiveImpu() {
        return getActiveImpu(this.mActiveDataPhoneId);
    }

    public ImsUri getActiveImpu(int i) {
        ImsUri[] imsUriArr = this.mActiveImpu;
        if (imsUriArr == null) {
            return null;
        }
        return imsUriArr[i];
    }

    private void onReleaseWfcBeforeHO(int i) {
        this.mImsCallSessionManager.onReleaseWfcBeforeHO(i);
        this.mReleaseWfcBeforeHO[i] = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onImsCallEvent, reason: merged with bridge method [inline-methods] */
    public void lambda$handleMessage$2(CallStateEvent callStateEvent) {
        ImsRegistration imsRegistration;
        ImsCallSession session = getSession(callStateEvent.getSessionID());
        if (session == null) {
            imsRegistration = getImsRegistration();
        } else {
            imsRegistration = getImsRegistration(session.getPhoneId());
        }
        boolean z = true;
        if (imsRegistration != null) {
            Mno fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
            if (fromName == Mno.VZW && ImsCallUtil.isImsOutageError(callStateEvent.getErrorCode())) {
                this.mProhibited[imsRegistration.getPhoneId()] = true;
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "onImsCallEvent: Receive 503 Outage Error session " + callStateEvent.getSessionID());
            } else if ((fromName == Mno.TELEFONICA_UK || fromName.isTmobile()) && session == null && callStateEvent.getErrorCode() != null) {
                SipError errorCode = callStateEvent.getErrorCode();
                SipError sipError = SipErrorBase.SIP_TIMEOUT;
                if (errorCode.equals(sipError)) {
                    Log.i(IVolteServiceModuleInternal.LOG_TAG, "onImsCallEvent: Notify 708 to RegiGvn even if session null");
                    IRegistrationGovernor registrationGovernor = this.mRegMan.getRegistrationGovernor(imsRegistration.getHandle());
                    if (registrationGovernor != null) {
                        registrationGovernor.onSipError("mmtel", sipError);
                        return;
                    }
                    return;
                }
            }
        }
        if (callStateEvent.getParams() != null) {
            String audioCodec = callStateEvent.getParams().getAudioCodec();
            String audioBitRate = callStateEvent.getParams().getAudioBitRate();
            if (callStateEvent.getState() != CallStateEvent.CALL_STATE.ENDED && callStateEvent.getState() != CallStateEvent.CALL_STATE.ERROR) {
                z = false;
            }
            sendAudioCodecInfo(audioCodec, audioBitRate, z);
        }
        if (session == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onImsCallEvent: unknown session " + callStateEvent.getSessionID());
            return;
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onImsCallEvent: session=" + callStateEvent.getSessionID() + " state=" + callStateEvent.getState());
        onImsCallEventForState(imsRegistration, session, callStateEvent);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.volte2.VolteServiceModule$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE;

        static {
            int[] iArr = new int[CallStateEvent.CALL_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE = iArr;
            try {
                iArr[CallStateEvent.CALL_STATE.CALLING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ESTABLISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.MODIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_LOCAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_REMOTE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_BOTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_ADDED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_REMOVED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.MODIFY_REQUESTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ENDED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.FORWARDED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.SESSIONPROGRESS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void onImsCallEventForState(ImsRegistration imsRegistration, ImsCallSession imsCallSession, CallStateEvent callStateEvent) {
        ImsRegistration cmcRegistration;
        boolean z = false;
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[callStateEvent.getState().ordinal()]) {
            case 1:
                updateNrSaModeOnStart(imsCallSession.getPhoneId(), callStateEvent.getSessionID());
                imsCallSession.requestQuantumPeerProfileStatus(false, false);
                z = true;
                break;
            case 2:
                handleIdcEvent(imsCallSession, callStateEvent);
                onImsCallEventForEstablish(imsRegistration, imsCallSession, callStateEvent);
                z = true;
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                this.mCmcServiceModule.onImsCallEventWithHeldBoth(imsCallSession, imsRegistration);
                z = true;
                break;
            case 7:
            case 8:
            case 9:
                break;
            case 10:
            case 11:
                if (ImsCallUtil.isCmcSecondaryType(imsCallSession.getCmcType()) && callStateEvent.getState() == CallStateEvent.CALL_STATE.ERROR && (cmcRegistration = this.mCmcServiceModule.getCmcRegistration(imsCallSession.getPhoneId(), false, imsCallSession.getCmcType())) != null) {
                    clearDialogList(imsCallSession.getPhoneId(), cmcRegistration.getHandle());
                    break;
                }
                break;
            case 12:
                resetPeerProfileStatus(imsCallSession, callStateEvent);
                imsCallSession.requestQuantumPeerProfileStatus(false, true);
                z = true;
                break;
            case 13:
                handleIdcEvent(imsCallSession, callStateEvent);
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (z) {
            this.mVolteNotifier.notifyCallStateEvent(callStateEvent, imsCallSession);
        }
    }

    private void resetPeerProfileStatus(ImsCallSession imsCallSession, CallStateEvent callStateEvent) {
        if (imsCallSession.isQuantumEncryptionServiceAvailable()) {
            if (TextUtils.isEmpty(callStateEvent.getParams().getHistoryInfo())) {
                Log.e(IVolteServiceModuleInternal.LOG_TAG, "history info is null, Quantum Encryption disabled");
                imsCallSession.disableQuantumEncryption();
                return;
            }
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "Quantum Encrypted Call is forwarded");
            imsCallSession.getCallProfile().getQuantumSecurityInfo().setPeerProfileStatus(-1);
            imsCallSession.getCallProfile().getQuantumSecurityInfo().setEncryptStatus(0);
            imsCallSession.getCallProfile().getQuantumSecurityInfo().setQtSessionId("");
            imsCallSession.getCallProfile().getQuantumSecurityInfo().setSessionKey("");
            imsCallSession.getCallProfile().getQuantumSecurityInfo().setRemoteTelNum(callStateEvent.getParams().getHistoryInfo());
        }
    }

    private void handleIdcEvent(final ImsCallSession imsCallSession, CallStateEvent callStateEvent) {
        if (!isSupportImsDataChannel(imsCallSession.getPhoneId()) || imsCallSession.getIdcData() == null) {
            return;
        }
        boolean z = !TextUtils.isEmpty(callStateEvent.getIdcExtra().getString(IdcExtra.Key.SDP));
        boolean z2 = (callStateEvent.getState() == CallStateEvent.CALL_STATE.ESTABLISHED && imsCallSession.getIdcData().getCurrentState() == IdcImsCallSessionData.State.NEGOTIATING) ? true : callStateEvent.getState() == CallStateEvent.CALL_STATE.SESSIONPROGRESS && z;
        Log.i(IVolteServiceModuleInternal.LOG_IDC_FW_TAG, "handleIdcEvent existSdp=" + z + ", needToNotify=" + z2);
        if (z2) {
            this.mIdcServiceModule.setBootstrapRemoteAnswerSdp(imsCallSession.getIdcData().getTelecomCallId(), callStateEvent.getIdcExtra());
            postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModule$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VolteServiceModule.this.lambda$handleIdcEvent$0(imsCallSession);
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkIdcNegotiated, reason: merged with bridge method [inline-methods] */
    public void lambda$handleIdcEvent$0(ImsCallSession imsCallSession) {
        if (imsCallSession == null || imsCallSession.getIdcData() == null) {
            return;
        }
        Log.i(IVolteServiceModuleInternal.LOG_IDC_FW_TAG, "checkIdcNegotiated IdcState=" + imsCallSession.getIdcData().getCurrentState());
        if (imsCallSession.getIdcData().getCurrentState() == IdcImsCallSessionData.State.NEGOTIATING) {
            imsCallSession.sendNegotiatedLocalSdp(IdcImsCallSessionData.NO_DATA);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isProhibited(int i) {
        return this.mProhibited[i];
    }

    protected void onRtpLossRateNoti(RtpLossRateNoti rtpLossRateNoti) {
        this.mVolteNotifier.notifyOnRtpLossRate(this.mActiveDataPhoneId, rtpLossRateNoti);
    }

    protected void onAudioPathUpdated(AsyncResult asyncResult) {
        this.mVolteNotifier.notifyOnAudioPathUpdated(((Integer) asyncResult.userObj).intValue(), (String) asyncResult.result);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void onCallEnded(int i, int i2, int i3) {
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "onCallEnded[" + i + "]: sessionId " + i2 + ", error=" + i3);
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.KDDI && hasEmergencyCall(i)) {
            startEpdnDisconnectTimer(i, 240000L);
        }
        if (i2 == -1 && i3 != 911 && i3 != 0) {
            Log.e(str, "Stack Return -1 release all session in F/W layer");
            this.mImsCallSessionManager.releaseAllSession(i);
        }
        this.mCmcServiceModule.onCallEndedWithSendPublish(i, getSession(i2));
        ImsCallSession removeSession = this.mImsCallSessionManager.removeSession(i2);
        if (removeSession != null) {
            if (removeSession.getCmcType() == 0 && simMno.isChn()) {
                notifyDSDAVideoCapa(i);
            }
            onCallSessionEnded(removeSession, simMno);
            CallProfile callProfile = removeSession.getCallProfile();
            if (removeSession.isQuantumEncryptionServiceAvailable()) {
                getServiceModuleManager().getQuantumEncryptionServiceModule().onHangUp(new SxHangUpEntity(callProfile.getQuantumSecurityInfo().getLocalPhoneNumber(), callProfile.getQuantumSecurityInfo().getRemoteTelNum(), callProfile.getDirection(), callProfile.getQuantumSecurityInfo().getQtSessionId(), callProfile.getQuantumSecurityInfo().getEncryptStatus() == 3 ? 1 : 0, 0, "success", callProfile.getSipCallId()));
            }
        }
        if (this.mReleaseWfcBeforeHO[i] && getSessionCount(i) == 0) {
            Log.i(str, "All calls are release before HO, trigger HO to EPDG");
            if (this.mWfcEpdgMgr.isEpdgServiceConnected()) {
                this.mWfcEpdgMgr.getEpdgMgr().triggerHOAfterReleaseCall(i);
            }
            this.mReleaseWfcBeforeHO[i] = false;
        }
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration != null && Mno.fromName(imsRegistration.getImsProfile().getMnoName()) != Mno.VZW) {
            this.mMediaController.startCameraForActiveExcept(i2);
        }
        this.mImsCallSessionManager.onCallEnded(i);
    }

    private void onCallSessionEnded(ImsCallSession imsCallSession, Mno mno) {
        IRegistrationGovernor registrationGovernor;
        int sessionId = imsCallSession.getSessionId();
        this.mEventLog.add("Call End - " + sessionId + "(" + imsCallSession.getCallId() + ") Reason(" + imsCallSession.getEndType() + " - " + imsCallSession.getEndReason() + "), Error(" + imsCallSession.getErrorCode() + " - " + imsCallSession.getErrorMessage() + ") " + this);
        int callType = imsCallSession.getCallProfile().getCallType();
        boolean z = callType == 7 || callType == 8;
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "onCallEnded: callType: " + callType + ", isEmergency: " + z);
        if (mno == Mno.KDDI && z && this.mRegMan.isEpdnRequestPending(imsCallSession.getPhoneId())) {
            Log.i(str, "EPDN request is still pending, need to stop EPDN to avoid retry");
            this.mRegMan.stopEmergencyPdnOnly(imsCallSession.getPhoneId());
        }
        this.mVolteNotifier.notifyCallStateEvent(new CallStateEvent(CallStateEvent.CALL_STATE.ENDED), imsCallSession);
        ImsRegistration registration = imsCallSession.getRegistration();
        if (registration != null && !hasActiveCall(imsCallSession.getPhoneId()) && (registrationGovernor = this.mRegMan.getRegistrationGovernor(registration.getHandle())) != null) {
            registrationGovernor.onCallStatus(IRegistrationGovernor.CallEvent.EVENT_CALL_LAST_CALL_END, null, imsCallSession.getCallProfile().getCallType());
        }
        if (this.mRegMan.isVoWiFiSupported(imsCallSession.getPhoneId()) && isVowifiEnabled(imsCallSession.getPhoneId()) && getTotalCallCount(imsCallSession.getPhoneId()) == 0) {
            WiFiManagerExt.setImsCallEstablished(this.mContext, false);
        }
        if (ImsCallUtil.isCmcPrimaryType(imsCallSession.getCmcType()) && imsCallSession.getErrorCode() == 6007) {
            int cmcBoundSessionId = imsCallSession.getCallProfile().getCmcBoundSessionId();
            Log.i(str, "call end due to call pull from SD to PD. bound session id = " + cmcBoundSessionId);
            if (cmcBoundSessionId > 0) {
                ImsCallSession session = getSession(cmcBoundSessionId);
                if (session != null) {
                    if (imsCallSession.getRelayChTerminated()) {
                        Log.i(str, "Relay ch already terminated. Start audio here");
                        updateAudioInterface(session.getPhoneId(), 4);
                    } else {
                        Log.i(str, "Relay ch not terminated yet. Delay start audio");
                        sendMessageDelayed(obtainMessage(35, -1, session.getPhoneId()), 500L);
                    }
                }
            } else {
                Log.i(str, "Ext session is CS");
            }
        }
        if (ImsRegistry.getICmcConnectivityController().isEnabledWifiDirectFeature() && imsCallSession.getCmcType() == 0) {
            ImsRegistry.getICmcConnectivityController().stopP2p();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void onConferenceParticipantAdded(int i, String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onConferenceParticipantAdded: sessionId " + i);
        ImsCallSession session = getSession(i);
        if (session == null || !session.getCallProfile().isConferenceCall()) {
            return;
        }
        CallStateEvent callStateEvent = new CallStateEvent(CallStateEvent.CALL_STATE.CONFERENCE_ADDED);
        callStateEvent.addUpdatedParticipantsList(str, 0, 0, 0);
        this.mVolteNotifier.notifyCallStateEvent(callStateEvent, session);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void onConferenceParticipantRemoved(int i, String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onConferenceParticipantRemoved: sessionId " + i);
        ImsCallSession session = getSession(i);
        if (session == null || !session.getCallProfile().isConferenceCall()) {
            return;
        }
        CallStateEvent callStateEvent = new CallStateEvent(CallStateEvent.CALL_STATE.CONFERENCE_REMOVED);
        callStateEvent.addUpdatedParticipantsList(str, 0, 0, 0);
        this.mVolteNotifier.notifyCallStateEvent(callStateEvent, session);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void onUpdateGeolocation() {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onUpdateGeolocation: ");
        this.mImsCallSessionManager.onUpdateGeolocation();
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        if (!this.mCheckRunningState && !isRunning()) {
            this.mCheckRunningState = true;
            sendMessageDelayed(Message.obtain(message), 500L);
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "VolteServiceModule not ready, retransmitting event " + message.what);
        }
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                final IncomingCallEvent incomingCallEvent = (IncomingCallEvent) ((AsyncResult) message.obj).result;
                post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModule$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        VolteServiceModule.this.lambda$handleMessage$1(incomingCallEvent);
                    }
                });
                break;
            case 2:
                final CallStateEvent callStateEvent = (CallStateEvent) ((AsyncResult) message.obj).result;
                postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModule$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        VolteServiceModule.this.lambda$handleMessage$2(callStateEvent);
                    }
                }, 50L);
                break;
            case 3:
                onImsDialogEvent((DialogEvent) ((AsyncResult) message.obj).result);
                break;
            case 5:
                onCallStatusChange(message.arg1, message.arg2);
                break;
            case 6:
                if (!DeviceUtil.getGcfMode()) {
                    onEcbmStateChanged(message.arg1, message.arg2 == 1);
                    break;
                }
                break;
            case 8:
                onDedicatedBearerEvent((DedicatedBearerEvent) ((AsyncResult) message.obj).result);
                break;
            case 9:
                tryDisconnect(message.arg1, message.arg2);
                break;
            case 10:
                this.mImsCallSessionManager.onCallEndByCS(message.arg1);
                break;
            case 11:
                onImsIncomingCallEvent((IncomingCallEvent) message.obj, true);
                break;
            case 12:
                handleDeregistered((ImsRegistration) message.obj, message.arg1);
                break;
            case 13:
                handleDeregistering((ImsRegistration) message.obj);
                break;
            case 14:
                this.mImsCallSessionManager.onPSBarred(message.arg1 == 1);
                break;
            case 15:
                onImsDialogEvent((DialogEvent) message.obj);
                break;
            case 16:
                if (getSessionCount(message.arg1) <= 0 || !hasEmergencyCall(message.arg1)) {
                    if (isEmergencyRegistered(message.arg1)) {
                        this.mRegMan.stopEmergencyRegistration(message.arg1);
                        break;
                    } else {
                        this.mRegMan.stopEmergencyPdnOnly(message.arg1);
                        break;
                    }
                }
                break;
            case 17:
                onDtmfInfo((DtmfInfo) ((AsyncResult) message.obj).result);
                break;
            case 18:
                onRtpLossRateNoti((RtpLossRateNoti) ((AsyncResult) message.obj).result);
                break;
            case 19:
                this.mImsCallSessionManager.handleEpdnSetupFail(message.arg1);
                break;
            case 20:
                onReleaseWfcBeforeHO(message.arg1);
                break;
            case 21:
                onConfigUpdated(message.arg1, (String) message.obj);
                break;
            case 22:
                onTextInfo((TextInfo) ((AsyncResult) message.obj).result);
                break;
            case 23:
                onScreenOnOffChanged(message.arg1);
                break;
            case 24:
                onSimSubscribeIdChanged((SubscriptionInfo) ((AsyncResult) message.obj).result);
                break;
            case 25:
                this.mImsCallSessionManager.getSIPMSGInfo((SIPDataEvent) ((AsyncResult) message.obj).result);
                break;
            case 26:
                onActiveDataSubscriptionChanged();
                break;
            case 27:
                onSrvccStateChange(message.arg1, (Call.SrvccState) message.obj);
                break;
            case 28:
                onIQIServiceStateChanged(getActiveDataPhoneId(), message.arg1 == 1);
                break;
            case 30:
                int intValue = ((Integer) ((AsyncResult) message.obj).result).intValue();
                onEventSimReady(intValue);
                registerMissedSmsReceiver(true, intValue);
                break;
            case 31:
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "Removed Call State set to Idle");
                AsyncResult asyncResult = (AsyncResult) message.obj;
                onCallStatusChange(((Integer) asyncResult.result).intValue(), 0);
                registerMissedSmsReceiver(false, ((Integer) asyncResult.result).intValue());
                resetQuantumAuthStatus(((Integer) asyncResult.result).intValue());
                break;
            case 35:
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "Delay audio engine timer expired. Start now. phoneId: " + message.arg2);
                updateAudioInterface(message.arg2, 4);
                break;
            case 36:
                this.mImsCallSessionManager.onUssdEndByCS(message.arg1);
                break;
            case 37:
                onUpdateSSACInfo(message.arg1, (BarringInfo) message.obj);
                break;
            case 38:
                onQuantumSecurityStatusEvent((QuantumSecurityStatusEvent) ((AsyncResult) message.obj).result);
                break;
            case 39:
                onAudioPathUpdated((AsyncResult) ((AsyncResult) message.obj).result);
                break;
            case 40:
                onAirplaneModeChanged(message.arg1 == 1);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMessage$1(IncomingCallEvent incomingCallEvent) {
        onImsIncomingCallEvent(incomingCallEvent, false);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal
    protected void onConfigUpdated(int i, String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onConfigUpdated[" + i + "] : " + str);
        if ("VOLTE_ENABLED".equalsIgnoreCase(str) || "LVC_ENABLED".equalsIgnoreCase(str)) {
            onServiceSwitched(i, null);
        }
    }

    private void onDtmfInfo(DtmfInfo dtmfInfo) {
        if (Settings.Secure.getInt(this.mContext.getContentResolver(), "isBikeMode", 0) == 1) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "BikeMode Active - Dtmf Val = " + dtmfInfo.getEvent());
            Intent intent = new Intent("com.samsung.ims.DTMF_RX_DIGI");
            intent.putExtra("dtmf_digit", dtmfInfo.getEvent());
            intent.setPackage(ImsConstants.Packages.PACKAGE_BIKE_MODE);
            this.mContext.sendBroadcast(intent);
            return;
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Bike Mode is disabled discarding event");
    }

    private synchronized void onTextInfo(TextInfo textInfo) {
        this.mVolteNotifier.notifyOnRttEvent(this.mActiveDataPhoneId, textInfo);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isVolteRetryRequired(int i, int i2, SipError sipError) {
        return isVolteRetryRequired(i, i2, sipError, 10);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean isVolteRetryRequired(int i, int i2, SipError sipError, int i3) {
        Mno fromName;
        boolean z;
        if (sipError == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "SipError was null!!");
            return false;
        }
        if (!isSilentRedialEnabled(this.mContext, i)) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "isSilentRedialEnabled was false!");
            return false;
        }
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            fromName = SimManagerFactory.getSimManager().getSimMno();
        } else {
            fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        try {
            String[] stringArray = ImsRegistry.getStringArray(i, GlobalSettingsConstants.Call.ALL_VOLTE_RETRY_ERROR_CODE_LIST, null);
            String str = IVolteServiceModuleInternal.LOG_TAG;
            Log.i(str, "all_volte_retry_error_code_list " + Arrays.asList(stringArray));
            z = this.mImsCallSessionManager.isMatchWithErrorCodeList(stringArray, sipError.getCode());
            if (!z) {
                try {
                    if (ImsCallUtil.isVideoCall(i2)) {
                        String[] stringArray2 = ImsRegistry.getStringArray(i, GlobalSettingsConstants.Call.VIDEO_VOLTE_RETRY_ERROR_CODE_LIST, null);
                        Log.i(str, "video_volte_retry_error_code_list " + Arrays.asList(stringArray2));
                        z = this.mImsCallSessionManager.isMatchWithErrorCodeList(stringArray2, sipError.getCode());
                    }
                } catch (JSONException unused) {
                }
            }
        } catch (JSONException unused2) {
            z = false;
        }
        if (fromName == Mno.DOCOMO && this.mPdnController.getEmcBsIndication(i) != EmcBsIndication.SUPPORTED) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "do not volte retry under eb not supported N/W");
            z = false;
        }
        if (fromName != Mno.DISH || ((7 != i2 && 18 != i2) || !SipErrorBase.SipErrorType.ERROR_5XX.equals(sipError.getCode()))) {
            return z;
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "DISH Emergency Call --Dont Do Silent Redial");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getSignalLevel() {
        return getSignalLevel(this.mActiveDataPhoneId);
    }

    public int getSignalLevel(int i) {
        return this.mMobileCareController.getSignalLevel(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public ImsUri getNormalizedUri(int i, String str) {
        UriGenerator uriGenerator = UriGeneratorFactory.getInstance().get(i, UriGenerator.URIServiceType.VOLTE_URI);
        if (uriGenerator == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "getNormalizedUri: FATAL - no UriGenerator found.");
            return null;
        }
        ImsUri normalizedUri = uriGenerator.getNormalizedUri(str);
        if (normalizedUri == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "getNormalizedUri: invalid msisdn=" + IMSLog.checker(str));
            return null;
        }
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "getNormalizedUri: not registered!!");
            return null;
        }
        for (NameAddr nameAddr : imsRegistration.getImpuList()) {
            if (normalizedUri.equals(uriGenerator.getNormalizedUri(UriUtil.getMsisdnNumber(nameAddr.getUri())))) {
                return nameAddr.getUri();
            }
        }
        return null;
    }

    private void onIQIServiceStateChanged(int i, boolean z) {
        this.mEventLog.logAndAdd(i, "onXqServiceStateChanged: " + z);
        if (this.mImsXqReporter != null) {
            boolean z2 = z && ImsXqReporter.isXqEnabled(this.mContext, i);
            if (z2) {
                this.mImsXqReporter.start();
            } else {
                this.mImsXqReporter.stop();
            }
            IVolteServiceInterface iVolteServiceInterface = this.mVolteSvcIntf;
            if (iVolteServiceInterface != null) {
                iVolteServiceInterface.updateXqEnable(this.mActiveDataPhoneId, z2);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public ImsCallInfo[] getImsCallInfos(int i) {
        ArrayList arrayList = new ArrayList();
        for (Iterator<ImsCallSession> it = getSessionList(i).iterator(); it.hasNext(); it = it) {
            ImsCallSession next = it.next();
            arrayList.add(new ImsCallInfo(next.getCallId(), next.getCallProfile().getCallType(), next.getCallProfile().isDowngradedVideoCall(), next.getCallProfile().isDowngradedAtEstablish(), next.getDedicatedBearerState(1), next.getDedicatedBearerState(2), next.getDedicatedBearerState(8), next.getErrorCode(), next.getErrorMessage(), next.getCallProfile().getDialingNumber(), next.getCallProfile().getDirection(), next.getCallProfile().isConferenceCall()));
        }
        return (ImsCallInfo[]) arrayList.toArray(new ImsCallInfo[0]);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getVoWIFIEmergencyCallRat(int i) {
        for (ImsCallSession imsCallSession : this.mImsCallSessionManager.getEmergencySession()) {
            if (i == imsCallSession.getPhoneId() && ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(imsCallSession.getCallProfile().getEmergencyRat())) {
                return 18;
            }
        }
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void sendCmcRecordingEvent(int i, int i2, SemCmcRecordingInfo semCmcRecordingInfo) {
        getCmcMediaController().sendCmcRecordingEvent(i, i2, semCmcRecordingInfo);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public CmcCallInfo getCmcCallInfo() {
        return getCmcServiceHelper().getCmcCallInfo();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public ImsCallSessionManager getImsCallSessionManager() {
        return this.mImsCallSessionManager;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public IdcServiceHelper getIdcServiceHelper() {
        return this.mIdcServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void sendHandOffEvent(int i, int i2, int i3, int i4, long j) {
        Log.e(IVolteServiceModuleInternal.LOG_TAG, "sendEPSFBEvent: event " + i2 + " sRat: " + i3 + "  dRat: " + i4);
        Mno simMno = SimUtil.getSimMno(i);
        if (this.mEcholocateController != null) {
            if ((simMno.isOneOf(Mno.TMOUS, Mno.DISH) || simMno == Mno.SPRINT) && hasActiveCall(i)) {
                if (getForegroundSession(i) != null) {
                    this.mEcholocateController.handleTmoEcholocatePSHO(i, i2, i3, i4, j);
                } else {
                    this.mEcholocateController.handleTmoEcholocateEPSFB(i, i2, j);
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public int getIncomingSessionPhoneIdForCmc() {
        return this.mImsCallSessionManager.getIncomingSessionPhoneIdForCmc();
    }

    private void sendAudioCodecInfo(String str, String str2, boolean z) {
        Intent intent = new Intent("com.samsung.ims.imsservice.handler.secims.audio_info");
        intent.putExtra("IS_ENDCALL", z);
        intent.putExtra("CODEC_NAME", str);
        intent.putExtra("BIT_RATE", str2);
        IntentUtil.sendBroadcast(this.mContext, intent);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public boolean hasPendingCall(int i) {
        return this.mImsCallSessionManager.hasPendingCall(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void notifyEpsFallbackResult(int i, int i2) {
        if (i2 == 1) {
            setIsLteRetrying(i, true);
        }
        this.mImsCallSessionManager.endcallBeforeRetry(i, i2);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal, com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule
    public void onSrvccStateChange(int i, Call.SrvccState srvccState) {
        super.onSrvccStateChange(i, srvccState);
    }

    private void resetQuantumAuthStatus(int i) {
        if (i != 0) {
            return;
        }
        getServiceModuleManager().getQuantumEncryptionServiceModule().resetAuthStatus();
    }
}
