package com.sec.internal.ims.core;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ISimMobilityStatusListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.google.SecImsServiceConnector;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.sim.SimManager;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.TimeBasedUuidGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.IJibeRcsRegistration;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public abstract class RegistrationManager implements IRegistrationManager {
    protected static final int ADHOC_ID_SIM2_OFFSET = 20000;
    protected static final int ADHOC_IMS_PROFILE_ID_BASE = 10000;
    protected static final int HANDOFF_EVENT_TIMER = 300;
    protected static final int ID_SIM2_OFFSET = 5000;
    protected static final int MAX_RECOVERY_ACTION_COUNT = 7;
    protected SparseArray<ImsProfile> mAuEmergencyProfile;
    protected ICmcAccountManager mCmcAccountManager;
    protected IConfigModule mConfigModule;
    protected Context mContext;
    protected int mEmmCause;
    protected SimpleEventLog mEventLog;
    protected RegistrationManagerHandler mHandler;
    protected IImsFramework mImsFramework;
    protected IJibeRcsRegistration mJibeRcsRegistration;
    protected NetworkEventController mNetEvtCtr;
    protected PdnController mPdnController;
    protected IRcsPolicyManager mRcsPolicyManager;
    protected IRegistrationInterface mRegStackIf;
    protected SecImsServiceConnector mSecImsServiceConnector;
    protected List<ISimManager> mSimManagers;
    protected ITelephonyManager mTelephonyManager;
    protected UserEventController mUserEvtCtr;
    protected IVolteServiceModule mVsm;
    protected IGeolocationController mGeolocationCon = null;
    protected boolean mIsVolteAllowedWithDsac = true;
    protected Message mHasSilentE911 = null;
    protected int mPhoneIdForSilentE911 = -1;
    protected boolean mMoveNextPcscf = false;
    protected int mCallState = 0;
    protected List<String> mThirdPartyFeatureTags = null;
    protected boolean mAresLookupRequired = true;
    protected boolean mIsNonADSDeRegRequired = false;
    protected int mlegacyPhoneCount = 0;
    protected int mRegiRetryLimit = 0;
    private IImsRegistrationListener mRegisterP2pListener = null;

    public enum OmadmConfigState {
        IDLE,
        TRIGGERED,
        FINISHED
    }

    public void setVolteServiceModule(IVolteServiceModule iVolteServiceModule) {
        this.mVsm = iVolteServiceModule;
        this.mNetEvtCtr.setVolteServiceModule(iVolteServiceModule);
        this.mUserEvtCtr.setVolteServiceModule(iVolteServiceModule);
    }

    public void setConfigModule(IConfigModule iConfigModule) {
        this.mConfigModule = iConfigModule;
        this.mHandler.setConfigModule(iConfigModule);
        this.mUserEvtCtr.setConfigModule(iConfigModule);
    }

    public void setStackInterface(IRegistrationInterface iRegistrationInterface) {
        this.mRegStackIf = iRegistrationInterface;
        iRegistrationInterface.setEventLog(this.mEventLog);
        this.mRegStackIf.setRegistrationHandler(this.mHandler);
        this.mRegStackIf.setSimManagers(this.mSimManagers);
        this.mRegStackIf.setPdnController(this.mPdnController);
    }

    public void setGeolocationController(GeolocationController geolocationController) {
        this.mGeolocationCon = geolocationController;
    }

    RegistrationManagerHandler getRegistrationManagerHandler() {
        return this.mHandler;
    }

    protected ImsIconManager getImsIconManager(int i) {
        ImsIconManager iconManager = SlotBasedConfig.getInstance(i).getIconManager();
        if (iconManager == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "getImsIconManager is not exist.");
        }
        return iconManager;
    }

    public ISimManager getSimManager(int i) {
        try {
            return this.mSimManagers.get(i);
        } catch (IndexOutOfBoundsException e) {
            IMSLog.e(IRegistrationManager.LOG_TAG, i, "getSimManager: " + e.toString());
            return null;
        }
    }

    protected SimpleEventLog getEventLog() {
        return this.mEventLog;
    }

    public OmadmConfigState getOmadmState(int i) {
        return SlotBasedConfig.getInstance(i).getOmadmState();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean hasOmaDmFinished(int i) {
        return SlotBasedConfig.getInstance(i).hasOmaDmFinished();
    }

    boolean getAresLookupRequired() {
        return this.mAresLookupRequired;
    }

    int getEmmCause() {
        return this.mEmmCause;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isInvite403DisabledService(int i) {
        return SlotBasedConfig.getInstance(i).isInviteRejected();
    }

    boolean isAdhocProfile(ImsProfile imsProfile) {
        return imsProfile.getId() >= 10000;
    }

    boolean getVolteAllowedWithDsac() {
        return this.mIsVolteAllowedWithDsac;
    }

    protected boolean isCdmaAvailableForVoice(int i) {
        return SlotBasedConfig.getInstance(i).isCdmaAvailableForVoice();
    }

    void resetNotifiedImsNotAvailable(int i) {
        SlotBasedConfig.getInstance(i).setNotifiedImsNotAvailable(false);
    }

    void setOmadmState(int i, OmadmConfigState omadmConfigState) {
        SlotBasedConfig.getInstance(i).setOmadmState(omadmConfigState);
    }

    boolean getUnprocessedOmadmConfig(int i) {
        return SlotBasedConfig.getInstance(i).getUnprocessedOmadmConfig();
    }

    void setUnprocessedOmadmConfig(int i, boolean z) {
        SlotBasedConfig.getInstance(i).setUnprocessedOmadmConfig(z);
    }

    void setAresLookupRequired(boolean z) {
        this.mAresLookupRequired = z;
    }

    void setEmmCause(int i) {
        this.mEmmCause = i;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setInvite403DisableService(boolean z, int i) {
        SlotBasedConfig.getInstance(i).setInviteReject(z);
    }

    void setVolteAllowedWithDsac(boolean z) {
        this.mIsVolteAllowedWithDsac = z;
    }

    void setCdmaAvailableForVoice(int i, boolean z) {
        SlotBasedConfig.getInstance(i).setCdmaAvailableForVoice(z);
    }

    protected void setCallState(int i) {
        this.mCallState = i;
    }

    public void setNonADSDeRegRequired(boolean z) {
        this.mIsNonADSDeRegRequired = z;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public synchronized void registerListener(IImsRegistrationListener iImsRegistrationListener, int i) {
        registerListener(iImsRegistrationListener, true, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public synchronized void registerListener(IImsRegistrationListener iImsRegistrationListener, boolean z, int i) {
        if (iImsRegistrationListener == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "listener is null..");
            return;
        }
        RemoteCallbackList<IImsRegistrationListener> imsRegistrationListeners = SlotBasedConfig.getInstance(i).getImsRegistrationListeners();
        if (imsRegistrationListeners == null) {
            RemoteCallbackList<IImsRegistrationListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iImsRegistrationListener);
            SlotBasedConfig.getInstance(i).setImsRegistrationListeners(remoteCallbackList);
        } else {
            imsRegistrationListeners.register(iImsRegistrationListener);
        }
        if (z) {
            for (ImsRegistration imsRegistration : SlotBasedConfig.getInstance(i).getImsRegistrations().values()) {
                try {
                    if (imsRegistration.getPhoneId() == i && !RegistrationUtils.isCmcProfile(imsRegistration.getImsProfile())) {
                        iImsRegistrationListener.onRegistered(imsRegistration);
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public synchronized void unregisterListener(IImsRegistrationListener iImsRegistrationListener, int i) {
        if (iImsRegistrationListener == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "listener is null..");
            return;
        }
        RemoteCallbackList<IImsRegistrationListener> imsRegistrationListeners = SlotBasedConfig.getInstance(i).getImsRegistrationListeners();
        if (imsRegistrationListeners == null) {
            return;
        }
        imsRegistrationListeners.unregister(iImsRegistrationListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public synchronized void registerP2pListener(IImsRegistrationListener iImsRegistrationListener) {
        this.mRegisterP2pListener = iImsRegistrationListener;
        Log.d(IRegistrationManager.LOG_TAG, "registerP2pListener done");
    }

    public IImsRegistrationListener getP2pListener() {
        return this.mRegisterP2pListener;
    }

    private void notifyImsP2pRegistration(boolean z, ImsRegistration imsRegistration, ImsRegistrationError imsRegistrationError, int i) {
        int cmcType = imsRegistration.getImsProfile().getCmcType();
        Log.d(IRegistrationManager.LOG_TAG, "notifyImsP2pRegistration(): " + cmcType);
        IImsRegistrationListener iImsRegistrationListener = this.mRegisterP2pListener;
        if (iImsRegistrationListener == null || cmcType < 2) {
            return;
        }
        try {
            if (z) {
                iImsRegistrationListener.onRegistered(imsRegistration);
            } else {
                this.mRegisterP2pListener.onDeregistered(imsRegistration, new ImsRegistrationError(imsRegistrationError.getSipErrorCode(), imsRegistrationError.getSipErrorReason(), imsRegistrationError.getDetailedDeregiReason(), i));
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void testNotifyImsRegistration(ImsRegistration imsRegistration, boolean z, RegisterTask registerTask, ImsRegistrationError imsRegistrationError) {
        notifyImsRegistration(imsRegistration, z, registerTask, imsRegistrationError);
    }

    protected synchronized void notifyImsRegistration(ImsRegistration imsRegistration, boolean z, IRegisterTask iRegisterTask, ImsRegistrationError imsRegistrationError) {
        RemoteCallbackList<IImsRegistrationListener> imsRegistrationListeners;
        IMSLog.i(IRegistrationManager.LOG_TAG, imsRegistration.getPhoneId(), "notifyImsRegistration(): " + imsRegistration.getImsProfile());
        notifyImsP2pRegistration(z, imsRegistration, imsRegistrationError, iRegisterTask.getDeregiReason());
        notifyCmcRegistration(z, imsRegistration, imsRegistrationError);
        if (this.mImsFramework.getIilManager(iRegisterTask.getPhoneId()) != null) {
            this.mImsFramework.getIilManager(iRegisterTask.getPhoneId()).notifyImsRegistration(imsRegistration, z, imsRegistrationError);
            if (SipTestManagerFactory.isSipTest()) {
                SipTestManagerFactory.getSipTestManager().notifyImsRegistration(this.mPdnController.isWifiConnected(), imsRegistration.getCurrentRat(), imsRegistration.getPhoneId());
            }
        }
        if (!RegistrationUtils.isCmcProfile(imsRegistration.getImsProfile()) && (imsRegistrationListeners = SlotBasedConfig.getInstance(imsRegistration.getPhoneId()).getImsRegistrationListeners()) != null) {
            int beginBroadcast = imsRegistrationListeners.beginBroadcast();
            while (beginBroadcast > 0) {
                beginBroadcast--;
                if (z) {
                    try {
                        imsRegistrationListeners.getBroadcastItem(beginBroadcast).onRegistered(imsRegistration);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    imsRegistrationListeners.getBroadcastItem(beginBroadcast).onDeregistered(imsRegistration, imsRegistrationError);
                }
            }
            Log.i(IRegistrationManager.LOG_TAG, "notify mRegistrationList, finish");
            imsRegistrationListeners.finishBroadcast();
        }
        if (!RegistrationUtils.isCmcProfile(imsRegistration.getImsProfile())) {
            SecImsNotifier.getInstance().notifyImsRegistration(imsRegistration, z, imsRegistrationError);
        }
        this.mImsFramework.getServiceModuleManager().notifyImsRegistration(imsRegistration, z, imsRegistrationError.getSipErrorCode());
        this.mImsFramework.getImsDiagMonitor().handleRegistrationEvent(imsRegistration, z);
        boolean z2 = true;
        boolean z3 = z && imsRegistration.getEpdgStatus() && (imsRegistration.hasService("mmtel") || imsRegistration.hasService("mmtel-video"));
        IMSLog.i(IRegistrationManager.LOG_TAG, "notifyImsRegistration: isVoWiFiRegistered [" + z3 + "]");
        Context context = this.mContext;
        if (z3) {
            z2 = false;
        }
        WiFiManagerExt.setMaxDtimInSuspendMode(context, z2);
        Intent intent = new Intent(ImsConstants.Intents.ACTION_IMS_STATE);
        intent.putExtra(ImsConstants.Intents.EXTRA_REGISTERED, z).putExtra(ImsConstants.Intents.EXTRA_REGISTERED_SERVICES, imsRegistration.getServices().toString()).putExtra(ImsConstants.Intents.EXTRA_VOWIFI, imsRegistration.getEpdgStatus()).putExtra(ImsConstants.Intents.EXTRA_SIP_ERROR_CODE, imsRegistrationError.getSipErrorCode()).putExtra(ImsConstants.Intents.EXTRA_REGI_PHONE_ID, imsRegistration.getPhoneId()).putExtra(ImsConstants.Intents.EXTRA_SIP_ERROR_REASON, imsRegistrationError.getSipErrorReason());
        IntentUtil.sendBroadcast(this.mContext, intent);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public List<IRegisterTask> getPendingRegistration(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            IMSLog.e(IRegistrationManager.LOG_TAG, "getPendingRegistration : no task return null");
            return null;
        }
        return new CopyOnWriteArrayList(pendingRegistrationInternal);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public ImsRegistration[] getRegistrationInfo() {
        RegisterTask registerTaskByRegHandle;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            for (ImsRegistration imsRegistration : SlotBasedConfig.getInstance(i).getImsRegistrations().values()) {
                if (imsRegistration != null && (registerTaskByRegHandle = getRegisterTaskByRegHandle(imsRegistration.getHandle())) != null && registerTaskByRegHandle.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                    arrayList.add(imsRegistration);
                }
            }
        }
        return (ImsRegistration[]) arrayList.toArray(new ImsRegistration[0]);
    }

    public ImsRegistration getRegistrationInfoByServiceType(String str, int i) {
        RegisterTask registerTaskByRegHandle;
        for (ImsRegistration imsRegistration : SlotBasedConfig.getInstance(i).getImsRegistrations().values()) {
            if (imsRegistration != null && imsRegistration.getPhoneId() == i && imsRegistration.getImsProfile().getCmcType() == 0 && !imsRegistration.getImsProfile().hasEmergencySupport() && (registerTaskByRegHandle = getRegisterTaskByRegHandle(imsRegistration.getHandle())) != null && registerTaskByRegHandle.getState() == RegistrationConstants.RegisterTaskState.REGISTERED && ImsUtil.isMatchedService(imsRegistration.getServices(), str)) {
                if (!registerTaskByRegHandle.getMno().isKor()) {
                    return imsRegistration;
                }
                Set services = imsRegistration.getServices();
                if (getNetworkEvent(registerTaskByRegHandle.getPhoneId()) == null) {
                    return imsRegistration;
                }
                for (String str2 : imsRegistration.getServices()) {
                    if ("mmtel".equals(str2) && (!NetworkUtil.is3gppPsVoiceNetwork(getNetworkEvent(registerTaskByRegHandle.getPhoneId()).network) || getNetworkEvent(registerTaskByRegHandle.getPhoneId()).outOfService)) {
                        services.remove(str2);
                    }
                }
                return new ImsRegistration(imsRegistration, services);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    protected void notifySimMobilityStatusChanged(int i, ISimManager iSimManager) {
        boolean hasSimMobilityProfile = RegistrationUtils.hasSimMobilityProfile(i);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "notifySimMobilityStatusChanged: old[" + SlotBasedConfig.getInstance(i).isSimMobilityActivated() + "], new [" + hasSimMobilityProfile + "]");
        this.mContext.getContentResolver().notifyChange(UriUtil.buildUri(ImsConstants.Uris.SETTINGS_PROVIDER_SIMMOBILITY_URI.toString(), i), null);
        boolean isSimMobilityFeatureEnabled = SimUtil.isSimMobilityFeatureEnabled();
        Mno simMno = iSimManager.getSimMno();
        ?? r1 = isSimMobilityFeatureEnabled;
        if (!iSimManager.isLabSimCard()) {
            r1 = isSimMobilityFeatureEnabled;
            if (simMno != Mno.GCF) {
                r1 = isSimMobilityFeatureEnabled;
                if (CollectionUtils.isNullOrEmpty(iSimManager.getNetworkNames())) {
                    r1 = 2;
                }
            }
        }
        int i2 = r1;
        if (RegistrationUtils.hasSimMobilityProfile(i)) {
            i2 = 4;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 0);
        contentValues.put(DiagnosisConstants.DRPT_KEY_SIM_MOBILITY_ENABLED, Integer.valueOf(i2));
        ImsLogAgentUtil.storeLogToAgent(i, this.mContext, "DRPT", contentValues);
        this.mEventLog.logAndAdd(i, "notifySimMobilityStatusChanged: " + i2);
        IMSLog.c(LogClass.REGI_SIMMO_STATE_CHANGED, i + ",SIMMO:" + i2);
        RemoteCallbackList<ISimMobilityStatusListener> simMobilityStatusListeners = SlotBasedConfig.getInstance(i).getSimMobilityStatusListeners();
        for (int beginBroadcast = simMobilityStatusListeners.beginBroadcast() + (-1); beginBroadcast >= 0; beginBroadcast--) {
            try {
                simMobilityStatusListeners.getBroadcastItem(beginBroadcast).onSimMobilityStateChanged(hasSimMobilityProfile);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        Log.i(IRegistrationManager.LOG_TAG, "notify SimMobilityStatusChanged, finish");
        simMobilityStatusListeners.finishBroadcast();
    }

    public synchronized void registerSimMobilityStatusListener(ISimMobilityStatusListener iSimMobilityStatusListener, int i) {
        registerSimMobilityStatusListener(iSimMobilityStatusListener, true, i);
    }

    public synchronized void registerSimMobilityStatusListener(ISimMobilityStatusListener iSimMobilityStatusListener, boolean z, int i) {
        if (iSimMobilityStatusListener == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "listener is null..");
            return;
        }
        SlotBasedConfig.getInstance(i).getSimMobilityStatusListeners().register(iSimMobilityStatusListener);
        if (z) {
            try {
                iSimMobilityStatusListener.onSimMobilityStateChanged(RegistrationUtils.hasSimMobilityProfile(i));
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public synchronized void unregisterSimMobilityStatusListener(ISimMobilityStatusListener iSimMobilityStatusListener, int i) {
        SlotBasedConfig.getInstance(i).getSimMobilityStatusListeners().unregister(iSimMobilityStatusListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public synchronized void registerCmcRegiListener(IImsRegistrationListener iImsRegistrationListener, int i) {
        if (iImsRegistrationListener == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "registerCmcRegiListener: listener is null..");
            return;
        }
        RemoteCallbackList<IImsRegistrationListener> cmcRegistrationListeners = SlotBasedConfig.getInstance(i).getCmcRegistrationListeners();
        if (cmcRegistrationListeners == null) {
            RemoteCallbackList<IImsRegistrationListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iImsRegistrationListener);
            SlotBasedConfig.getInstance(i).setCmcRegistrationListeners(remoteCallbackList);
        } else {
            cmcRegistrationListeners.register(iImsRegistrationListener);
        }
        for (ImsRegistration imsRegistration : SlotBasedConfig.getInstance(i).getImsRegistrations().values()) {
            try {
                if (imsRegistration.getPhoneId() == i && RegistrationUtils.isCmcProfile(imsRegistration.getImsProfile())) {
                    iImsRegistrationListener.onRegistered(imsRegistration);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public synchronized void unregisterCmcRegiListener(IImsRegistrationListener iImsRegistrationListener, int i) {
        RemoteCallbackList<IImsRegistrationListener> cmcRegistrationListeners = SlotBasedConfig.getInstance(i).getCmcRegistrationListeners();
        if (cmcRegistrationListeners == null) {
            return;
        }
        cmcRegistrationListeners.unregister(iImsRegistrationListener);
    }

    void notifyCmcRegistration(boolean z, ImsRegistration imsRegistration, ImsRegistrationError imsRegistrationError) {
        if (imsRegistration.getImsProfile().getCmcType() == 0) {
            return;
        }
        Log.d(IRegistrationManager.LOG_TAG, "notifyCmcRegistration(): CmcType: " + imsRegistration.getImsProfile().getCmcType());
        RemoteCallbackList<IImsRegistrationListener> cmcRegistrationListeners = SlotBasedConfig.getInstance(imsRegistration.getPhoneId()).getCmcRegistrationListeners();
        if (cmcRegistrationListeners != null) {
            int beginBroadcast = cmcRegistrationListeners.beginBroadcast();
            while (beginBroadcast > 0) {
                beginBroadcast--;
                if (z) {
                    try {
                        cmcRegistrationListeners.getBroadcastItem(beginBroadcast).onRegistered(imsRegistration);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    cmcRegistrationListeners.getBroadcastItem(beginBroadcast).onDeregistered(imsRegistration, imsRegistrationError);
                }
            }
            Log.i(IRegistrationManager.LOG_TAG, "notifyCmcRegistration, finish");
            cmcRegistrationListeners.finishBroadcast();
        }
    }

    /* renamed from: com.sec.internal.ims.core.RegistrationManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE;

        static {
            int[] iArr = new int[ImsProfile.PROFILE_TYPE.values().length];
            $SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE = iArr;
            try {
                iArr[ImsProfile.PROFILE_TYPE.EMERGENCY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE[ImsProfile.PROFILE_TYPE.VOLTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE[ImsProfile.PROFILE_TYPE.RCS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE[ImsProfile.PROFILE_TYPE.CHAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public ImsProfile getImsProfile(int i, ImsProfile.PROFILE_TYPE profile_type) {
        ImsProfile emergencyProfile;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getImsProfile: profile [" + profile_type + "]");
        int i2 = AnonymousClass1.$SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE[profile_type.ordinal()];
        if (i2 != 1) {
            emergencyProfile = null;
            if (i2 == 2) {
                emergencyProfile = (ImsProfile) Arrays.stream(getProfileList(i)).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda9
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$getImsProfile$0;
                        lambda$getImsProfile$0 = RegistrationManager.lambda$getImsProfile$0((ImsProfile) obj);
                        return lambda$getImsProfile$0;
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda10
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$getImsProfile$1;
                        lambda$getImsProfile$1 = RegistrationManager.lambda$getImsProfile$1((ImsProfile) obj);
                        return lambda$getImsProfile$1;
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda11
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return ImsProfile.hasVolteService((ImsProfile) obj);
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda12
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$getImsProfile$2;
                        lambda$getImsProfile$2 = RegistrationManager.lambda$getImsProfile$2((ImsProfile) obj);
                        return lambda$getImsProfile$2;
                    }
                }).findFirst().orElse(null);
            } else if (i2 == 3) {
                emergencyProfile = (ImsProfile) Arrays.stream(getProfileList(i)).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda13
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return ImsProfile.hasRcsService((ImsProfile) obj);
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda14
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$getImsProfile$3;
                        lambda$getImsProfile$3 = RegistrationManager.lambda$getImsProfile$3((ImsProfile) obj);
                        return lambda$getImsProfile$3;
                    }
                }).findFirst().orElse(null);
            } else if (i2 == 4) {
                emergencyProfile = (ImsProfile) Arrays.stream(getProfileList(i)).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda15
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return ImsProfile.hasChatService((ImsProfile) obj);
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda16
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$getImsProfile$4;
                        lambda$getImsProfile$4 = RegistrationManager.lambda$getImsProfile$4((ImsProfile) obj);
                        return lambda$getImsProfile$4;
                    }
                }).findFirst().orElse(null);
            }
        } else {
            emergencyProfile = getEmergencyProfile(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("getImsProfile: found [");
        sb.append(emergencyProfile != null ? emergencyProfile.getName() : emergencyProfile);
        sb.append("] for [");
        sb.append(profile_type);
        sb.append("]");
        IMSLog.e(IRegistrationManager.LOG_TAG, i, sb.toString());
        return emergencyProfile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getImsProfile$0(ImsProfile imsProfile) {
        return !imsProfile.hasEmergencySupport();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getImsProfile$1(ImsProfile imsProfile) {
        return DeviceConfigManager.IMS.equalsIgnoreCase(imsProfile.getPdn());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getImsProfile$2(ImsProfile imsProfile) {
        return imsProfile.getEnableStatus() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getImsProfile$3(ImsProfile imsProfile) {
        return imsProfile.getEnableStatus() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getImsProfile$4(ImsProfile imsProfile) {
        return imsProfile.getEnableStatus() != 0;
    }

    protected ImsProfile getEmergencyProfile(int i) {
        ImsProfile imsProfile;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile:");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return null;
        }
        Mno devMno = iSimManager.getDevMno();
        boolean needForceToUsePsE911 = ImsUtil.needForceToUsePsE911(i, iSimManager.hasNoSim());
        if (iSimManager.hasNoSim() || RegistrationUtils.checkAusEmergencyCall(devMno, i, iSimManager) || needForceToUsePsE911) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile(no SIM): profile in case of no SIM or AU sales code");
            if (iSimManager.hasNoSim() && !devMno.isAus()) {
                String string = ImsSharedPrefHelper.getString(i, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, "mnoname", "");
                Mno fromName = Mno.fromName(string);
                if (fromName == Mno.DEFAULT || fromName == Mno.GOOGLEGC) {
                    fromName = iSimManager.getNetMno();
                }
                IMSLog.i(IRegistrationManager.LOG_TAG, i, String.format(Locale.US, "getEmergencyProfile(no SIM): Previous mnoname [%s] => [%s]", string, fromName));
                devMno = fromName;
            }
            String handleExceptionalMnoName = RegistrationUtils.handleExceptionalMnoName(devMno, i, iSimManager);
            if (devMno.isAus() && !handleExceptionalMnoName.equals(Mno.DEFAULT.getName()) && (imsProfile = this.mAuEmergencyProfile.get(i)) != null) {
                return imsProfile;
            }
            if (needForceToUsePsE911) {
                Mno mnoFromNetworkPlmn = iSimManager.getMnoFromNetworkPlmn(getNetworkEvent(i).operatorNumeric);
                if (mnoFromNetworkPlmn.equals(Mno.DEFAULT)) {
                    mnoFromNetworkPlmn = Mno.GCF;
                }
                devMno = mnoFromNetworkPlmn;
                handleExceptionalMnoName = devMno.getName();
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile(networkPlmn or GCF): mno: " + handleExceptionalMnoName);
            } else {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile(no SIM): mno: " + handleExceptionalMnoName);
            }
            for (ImsProfile imsProfile2 : ImsProfileLoaderInternal.getProfileListWithMnoName(this.mContext, handleExceptionalMnoName, i)) {
                if (imsProfile2.hasEmergencySupport()) {
                    if (devMno.isAus()) {
                        this.mAuEmergencyProfile.put(i, imsProfile2);
                    }
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile(no SIM or networkPlmn/GCF): profile: " + imsProfile2.getName());
                    return imsProfile2;
                }
            }
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile(no SIM): no profile found");
            return null;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile: from SlotBasedConfig");
        List<ImsProfile> profiles = SlotBasedConfig.getInstance(i).getProfiles();
        if (CollectionUtils.isNullOrEmpty(profiles)) {
            IMSLog.e(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile: ProfileList is Empty");
            return null;
        }
        synchronized (profiles) {
            for (ImsProfile imsProfile3 : profiles) {
                if (imsProfile3.hasEmergencySupport()) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile: profile: " + imsProfile3.getName());
                    return imsProfile3;
                }
            }
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "getEmergencyProfile: no profile found");
            return null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void onDmConfigurationComplete(int i) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(29, i, 0));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IRegistrationGovernor getEmergencyGovernor(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.mProfile.hasEmergencySupport()) {
                    Log.e(IRegistrationManager.LOG_TAG, "getRegistrationGovernor: return Emergency Gvn");
                    return next.getGovernor();
                }
            }
        }
        Log.e(IRegistrationManager.LOG_TAG, "getRegistrationGovernor: not found Emergency task");
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IRegistrationGovernor getRegistrationGovernor(int i) {
        RegisterTask registerTaskByRegHandle = getRegisterTaskByRegHandle(i);
        if (registerTaskByRegHandle == null) {
            Log.e(IRegistrationManager.LOG_TAG, "getRegistrationGovernor: unknown handle " + i);
            return null;
        }
        return registerTaskByRegHandle.getGovernor();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IRegistrationGovernor getRegistrationGovernorByProfileId(int i, int i2) {
        return (IRegistrationGovernor) Optional.ofNullable(getRegisterTaskByProfileId(i, i2)).map(new NetworkEventController$$ExternalSyntheticLambda1()).orElse(null);
    }

    protected RegisterTask getRegisterTask(int i) {
        Log.i(IRegistrationManager.LOG_TAG, "getRegisterTask:");
        for (int i2 = 0; i2 < this.mSimManagers.size(); i2++) {
            RegisterTask registerTaskByProfileId = getRegisterTaskByProfileId(i, i2);
            if (registerTaskByProfileId != null) {
                return registerTaskByProfileId;
            }
        }
        Log.i(IRegistrationManager.LOG_TAG, "getRegisterTask: Not exist matched RegisterTask. Return null..");
        return null;
    }

    protected RegisterTask getRegisterTaskByRegHandle(int i) {
        for (int i2 = 0; i2 < this.mSimManagers.size(); i2++) {
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i2);
            if (pendingRegistrationInternal != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                while (it.hasNext()) {
                    RegisterTask next = it.next();
                    ImsRegistration imsRegistration = next.mReg;
                    if (imsRegistration != null && imsRegistration.getHandle() == i) {
                        return next;
                    }
                }
            }
        }
        Log.i(IRegistrationManager.LOG_TAG, "getRegisterTaskByRegHandle: can not find handle : " + i);
        return null;
    }

    protected RegisterTask getRegisterTaskByProfileId(int i, int i2) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i2);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().getId() == i) {
                    return next;
                }
            }
        }
        Log.i(IRegistrationManager.LOG_TAG, "getRegisterTaskByProfileId: can not find profile id : " + i);
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void requestTryRegister(int i) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(2, Integer.valueOf(i)));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void requestTryRegsiter(int i, long j) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(2, Integer.valueOf(i)), j);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void requestFullNetworkRegistration(int i, int i2, String str) {
        if (this.mHandler.hasMessages(63, Integer.valueOf(i))) {
            return;
        }
        this.mHandler.obtainMessage(63, i2, -1, Integer.valueOf(i)).sendToTarget();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void requestUpdateSipDelegateRegistration(int i) {
        if (this.mHandler.hasMessages(139, Integer.valueOf(i))) {
            this.mEventLog.logAndAdd(i, "requestUpdateSipDelegateRegistration: Ignore by postponed update registration event by dma change");
        } else {
            this.mHandler.updateSipDelegateRegistration(i, this.mSecImsServiceConnector.getSipTransportImpl(i).hasSipDelegate());
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void cancelUpdateSipDelegateRegistration(int i) {
        this.mEventLog.logAndAdd(i, "cancelUpdateSipDelegateRegistration");
        this.mHandler.removeMessages(58, Integer.valueOf(i));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void onUpdateSipDelegateRegistrationTimeOut(int i) {
        if (SlotBasedConfig.getInstance(i).getRegistrationTasks().stream().anyMatch(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onUpdateSipDelegateRegistrationTimeOut$5;
                lambda$onUpdateSipDelegateRegistrationTimeOut$5 = RegistrationManager.lambda$onUpdateSipDelegateRegistrationTimeOut$5((RegisterTask) obj);
                return lambda$onUpdateSipDelegateRegistrationTimeOut$5;
            }
        })) {
            this.mEventLog.logAndAdd(i, "onUpdateSipDelegateRegistrationTimeOut: But now registering. Ignore.");
        } else {
            this.mSecImsServiceConnector.getSipTransportImpl(i).onUpdateRegistrationTimeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onUpdateSipDelegateRegistrationTimeOut$5(RegisterTask registerTask) {
        return registerTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING && ImsProfile.hasChatService(registerTask.getProfile());
    }

    public void sendReRegister(RegisterTask registerTask) {
        this.mHandler.notifySendReRegisterRequested(registerTask);
    }

    protected String getPublicUserIdentity(RegisterTask registerTask, ISimManager iSimManager) {
        String publicUserIdentity;
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        if (registerTask.getGovernor().getNextImpuType() == 1) {
            publicUserIdentity = iSimManager.getDerivedImpu();
        } else if (profile.hasEmergencySupport() && profile.isUicclessEmergency()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, "profile.hasEmergencySupport() && profile.isUicclessEmergency()");
            String emergencyImpu = iSimManager.getEmergencyImpu();
            if (registerTask.getMno() == Mno.VZW && !iSimManager.hasNoSim() && this.mPdnController.hasEmergencyServiceOnly(phoneId)) {
                publicUserIdentity = iSimManager.getDerivedImpu();
            } else if (!registerTask.getMno().isKor() || iSimManager.hasNoSim() || (publicUserIdentity = getPreferredImpuOnPdn(11, phoneId)) == null) {
                publicUserIdentity = emergencyImpu;
            }
        } else if (profile.hasEmergencySupport() && !profile.isUicclessEmergency()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "profile.hasEmergencySupport() && !profile.isUicclessEmergency()");
            String preferredImpuOnPdn = getPreferredImpuOnPdn(11, phoneId);
            if (preferredImpuOnPdn == null) {
                preferredImpuOnPdn = "";
            }
            publicUserIdentity = (TextUtils.isEmpty(preferredImpuOnPdn) || !SimManager.isValidImpu(preferredImpuOnPdn) || registerTask.getMno().isOneOf(Mno.ATT, Mno.KDDI, Mno.H3G_AT)) ? RegistrationUtils.getPublicUserIdentity(profile, phoneId, this.mRcsPolicyManager.getRcsPublicUserIdentity(phoneId), iSimManager) : preferredImpuOnPdn;
        } else {
            publicUserIdentity = RegistrationUtils.getPublicUserIdentity(profile, phoneId, this.mRcsPolicyManager.getRcsPublicUserIdentity(phoneId), iSimManager);
        }
        IMSLog.s(IRegistrationManager.LOG_TAG, phoneId, "impu : " + publicUserIdentity);
        return publicUserIdentity;
    }

    protected boolean validateImpi(RegisterTask registerTask, ISimManager iSimManager, String str) {
        String derivedImpi;
        int phoneId = registerTask.getPhoneId();
        Mno mno = registerTask.getMno();
        if (mno == Mno.TELEFONICA_GERMANY && registerTask.isRcsOnly()) {
            if (iSimManager.hasIsim()) {
                derivedImpi = RegistrationUtils.getPrivateUserIdentityfromIsim(phoneId, this.mTelephonyManager, iSimManager, mno);
            } else {
                derivedImpi = iSimManager.getDerivedImpi();
            }
            if (derivedImpi != null && str != null) {
                int indexOf = derivedImpi.indexOf(64);
                if (indexOf > 0) {
                    derivedImpi = derivedImpi.substring(0, indexOf);
                }
                int indexOf2 = str.indexOf(64);
                if (indexOf2 > 0) {
                    str = str.substring(0, indexOf2);
                }
                IMSLog.s(IRegistrationManager.LOG_TAG, phoneId, "impiFromSim : " + derivedImpi);
                IMSLog.s(IRegistrationManager.LOG_TAG, phoneId, "impi : " + str);
                if (!derivedImpi.equals(str)) {
                    IMSLog.e(IRegistrationManager.LOG_TAG, phoneId, "error : invalid IMPI");
                    this.mEventLog.logAndAdd(phoneId, registerTask, "registerInternal : error - invalid IMPI");
                    IMSLog.c(LogClass.REGI_INVALID_IMPI, phoneId + ",REG FAIL:INVALID IMPI");
                    registerTask.setReason("");
                    return false;
                }
            }
        }
        return true;
    }

    protected boolean validateImpu(RegisterTask registerTask, String str) {
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        if (((registerTask.getMno() == Mno.CMCC || registerTask.getMno() == Mno.CU) && profile.hasEmergencySupport() && !profile.isUicclessEmergency()) || SimManager.isValidImpu(str)) {
            return true;
        }
        IMSLog.e(IRegistrationManager.LOG_TAG, phoneId, "error : invalid IMPU");
        this.mEventLog.logAndAdd(phoneId, registerTask, "registerInternal : error - invalid IMPU");
        IMSLog.c(LogClass.REGI_INVALID_IMPU, phoneId + ",REG FAIL:INVALD IMPU");
        registerTask.setReason("");
        return false;
    }

    public String getHomeNetworkDomain(ImsProfile imsProfile, int i) {
        return RegistrationUtils.getHomeNetworkDomain(this.mContext, imsProfile, i, this.mTelephonyManager, this.mRcsPolicyManager, getSimManager(i));
    }

    public String getPrivateUserIdentity(RegisterTask registerTask) {
        int phoneId = registerTask.getPhoneId();
        String impi = getImpi(registerTask.getProfile(), phoneId);
        return registerTask.isRcsOnly() ? (registerTask.getMno() == Mno.SINGTEL || registerTask.getMno() == Mno.STARHUB || registerTask.getMno() == Mno.RJIL) ? RcsConfigurationHelper.getUserName(this.mContext, phoneId) : impi : impi;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public String getImpi(ImsProfile imsProfile, int i) {
        return RegistrationUtils.getPrivateUserIdentity(this.mContext, imsProfile, i, this.mTelephonyManager, this.mRcsPolicyManager, getSimManager(i));
    }

    protected String getInterfaceName(RegisterTask registerTask, String str, int i) {
        String interfaceName;
        String acsServerType = ConfigUtil.getAcsServerType(i);
        if (((registerTask.getMno().isVodafone() && RcsUtils.DualRcs.isDualRcsReg()) || ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(acsServerType)) && registerTask.isRcsOnly()) {
            interfaceName = this.mRcsPolicyManager.changeRcsIfacename(registerTask, this.mPdnController, str);
        } else {
            interfaceName = this.mPdnController.getInterfaceName(registerTask);
        }
        if (registerTask.getProfile() != null) {
            int cmcType = registerTask.getProfile().getCmcType();
            if (cmcType == 7 || cmcType == 8) {
                interfaceName = "p2p-wlan0-0";
            } else if (cmcType == 5) {
                interfaceName = "swlan0";
            }
        }
        if (!SimUtil.isSoftphoneEnabled() || !NetworkUtil.isIPv4Address(str) || this.mPdnController.getLinkProperties(registerTask) == null || this.mPdnController.getLinkProperties(registerTask).hasIPv4Address() || interfaceName == null || interfaceName.contains("v4")) {
            return interfaceName;
        }
        String str2 = "v4-" + interfaceName;
        IMSLog.i(IRegistrationManager.LOG_TAG, registerTask.getPhoneId(), "Stacked IP interface" + str2);
        return str2;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public ImsRegistration getRegistrationInfo(int i) {
        int i2 = ImsConstants.Phone.SLOT_1;
        if (i >= 20000) {
            i2 = ImsConstants.Phone.SLOT_2;
        } else if (i < 10000 && i >= 5000) {
            i2 = ImsConstants.Phone.SLOT_2;
        }
        return RegistrationUtils.getRegistrationInfo(i2, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public NetworkEvent getNetworkEvent(int i) {
        return RegistrationUtils.getNetworkEvent(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public ImsRegistration[] getRegistrationInfoByPhoneId(int i) {
        return RegistrationUtils.getRegistrationInfoByPhoneId(i, getRegistrationInfo());
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public ImsProfile[] getProfileList(int i) {
        return RegistrationUtils.getProfileList(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public int getCmcLineSlotIndex() {
        return this.mCmcAccountManager.getCurrentLineSlotIndex();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void releaseThrottleByAcs(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                RegisterTask next = it.next();
                if (next.getPhoneId() == i && ImsProfile.hasRcsService(next.getProfile())) {
                    next.getGovernor().releaseThrottle(7);
                    break;
                }
            }
        }
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(2, Integer.valueOf(i)));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void releaseThrottleByCmc(IRegisterTask iRegisterTask) {
        if (iRegisterTask.getGovernor().isThrottled()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "releaseThrottleByCmc: releaseThrottle");
            iRegisterTask.getGovernor().releaseThrottle(8);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void blockVoWifiRegisterOnRoaminByCsfbError(int i, int i2) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(144, i, i2, null));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateChatService(int i, int i2) {
        int i3 = i2 == 2 ? 138 : i2 == 1 ? 137 : -1;
        if (i3 != -1) {
            this.mHandler.removeMessages(i3, Integer.valueOf(i));
            this.mHandler.obtainMessage(i3, Integer.valueOf(i)).sendToTarget();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updatePcoInfo(int i, int i2, int i3) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(703, i3, i, Integer.valueOf(i2)));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isVoWiFiSupported(int i) {
        try {
            if (!this.mImsFramework.isServiceAvailable("mmtel", 18, i)) {
                if (!this.mImsFramework.isServiceAvailable("mmtel-video", 18, i)) {
                    return false;
                }
            }
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isPdnConnected(ImsProfile imsProfile, int i) {
        if (imsProfile == null) {
            Log.e(IRegistrationManager.LOG_TAG, "isPdnConnected: profile not found.");
            return false;
        }
        RegisterTask registerTaskByProfileId = getRegisterTaskByProfileId(imsProfile.getId(), i);
        if (registerTaskByProfileId == null) {
            Log.e(IRegistrationManager.LOG_TAG, "isPdnConnected: task not found.");
            return false;
        }
        boolean isConnected = this.mPdnController.isConnected(registerTaskByProfileId.getPdnType(), registerTaskByProfileId);
        Log.i(IRegistrationManager.LOG_TAG, "isPdnConnected: " + isConnected + ", PdnType: " + registerTaskByProfileId.getPdnType());
        return isConnected;
    }

    public boolean hasVoLteSim(int i) {
        if (getSimManager(i) != null) {
            return RegistrationUtils.hasVoLteSim(i, getSimManager(i), this.mTelephonyManager, RegistrationUtils.getPendingRegistrationInternal(i));
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public Map<Integer, ImsRegistration> getRegistrationList() {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            hashMap.putAll(SlotBasedConfig.getInstance(i).getImsRegistrations());
        }
        return hashMap;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isEmergencyCallProhibited(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "isEmergencyCallProhibited:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return false;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next != null && next.getProfile().getPdnType() == 11 && next.getGovernor().isPse911Prohibited()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isAnonymousEmergencyCallRequired(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "isAnonymousEmergencyCallRequired:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return false;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next != null && next.getProfile().getPdnType() == 15 && next.getGovernor().isAnonymousEmergencyCallRequired()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isEpdnRequestPending(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "isEpdnRequestPending:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return false;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getProfile().hasEmergencySupport() && next.getState() == RegistrationConstants.RegisterTaskState.CONNECTING) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isRcsRegistered(int i) {
        return RegistrationUtils.isRcsRegistered(i, getRegistrationInfo());
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public int isCmcRegistered(int i) {
        Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            int cmcType = next.getProfile().getCmcType();
            if (cmcType == 1 || cmcType == 2) {
                if (next.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                    return next.getProfile().getId();
                }
            }
        }
        return 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public int getTelephonyCallStatus(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getTelephonyCallStatus:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return -1;
        }
        IVolteServiceModule iVolteServiceModule = this.mVsm;
        boolean z = iVolteServiceModule != null && iVolteServiceModule.getSessionCount(i) > 0;
        IMSLog.d(IRegistrationManager.LOG_TAG, i, "getTelephonyCallStatus: hasImsCall = " + z);
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.mProfile.hasEmergencySupport()) {
                return 0;
            }
            if (!z && this.mTelephonyManager.getVoiceNetworkType(SimUtil.getSubId(i)) == 0 && next.getRegistrationRat() == 18 && next.getProfile().getPdn().equals(DeviceConfigManager.IMS) && next.getState() != RegistrationConstants.RegisterTaskState.REGISTERED) {
                IMSLog.d(IRegistrationManager.LOG_TAG, i, "getTelephonyCallStatus: Have No normal IMS/CS call => allow VoWifi registration.");
                return 0;
            }
        }
        return this.mTelephonyManager.getCallState(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setSSACPolicy(int i, boolean z) {
        SlotBasedConfig.getInstance(i).enableSsac(z);
        if (z) {
            return;
        }
        this.mHandler.removeMessages(121, Integer.valueOf(i));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void notifyRomaingSettingsChanged(int i, int i2) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(46, i, i2, null));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void notifyRCSAllowedChangedbyMDM() {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(53));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public Set<String> getServiceForNetwork(ImsProfile imsProfile, int i, boolean z, int i2) {
        RegisterTask registerTaskByProfileId;
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "getServiceForNetwork: network " + i);
        int blurNetworkType = NetworkEvent.blurNetworkType(i);
        HashSet hashSet = new HashSet();
        if (!imsProfile.getNetworkSet().contains(Integer.valueOf(blurNetworkType))) {
            return hashSet;
        }
        Set<String> serviceSet = imsProfile.getServiceSet(Integer.valueOf(blurNetworkType));
        if (z) {
            serviceSet = imsProfile.getAllServiceSetFromAllNetwork();
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "getServiceForNetwork: service " + serviceSet);
        if (imsProfile.hasEmergencySupport() || (registerTaskByProfileId = getRegisterTaskByProfileId(imsProfile.getId(), i2)) == null) {
            return serviceSet;
        }
        registerTaskByProfileId.clearFilteredReason();
        if (blurNetworkType == 18 && registerTaskByProfileId.getProfile().getPdnType() == 11 && this.mPdnController.getEpdgPhysicalInterface(i2) == 2) {
            serviceSet = registerTaskByProfileId.getGovernor().applyCrossSimPolicy(serviceSet, i2);
        }
        Set<String> filterserviceFbe = RegistrationUtils.filterserviceFbe(this.mContext, registerTaskByProfileId.getGovernor().filterService(serviceSet, blurNetworkType), registerTaskByProfileId.getProfile());
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "getServiceForNetwork: filtered service " + filterserviceFbe);
        return filterserviceFbe;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void addPendingUpdateRegistration(IRegisterTask iRegisterTask, int i) {
        iRegisterTask.setPendingUpdate(true);
        this.mHandler.removeMessages(32);
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(32, iRegisterTask), i * 1000);
    }

    protected String getUuid(int i, ImsProfile imsProfile) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getUuid:");
        if (!imsProfile.isEnableSessionId()) {
            return "";
        }
        String replace = UUID.randomUUID().toString().replace(CmcConstants.E_NUM_SLOT_SPLIT, "");
        Log.i(IRegistrationManager.LOG_TAG, "UUID=" + replace);
        return replace;
    }

    protected String getInstanceId(int i, int i2, ImsProfile imsProfile) {
        Mno mno = SimUtil.getMno(i);
        if (i2 != 11 && i2 != 15 && ((ConfigUtil.isRcsChn(mno) && ImsProfile.isRcsUp24Profile(imsProfile.getRcsProfile())) || mno == Mno.MTS_RUSSIA)) {
            String uuidInstanceId = new TimeBasedUuidGenerator(i, this.mContext).getUuidInstanceId();
            IMSLog.s(IRegistrationManager.LOG_TAG, "getInstanceId time based uuid: " + uuidInstanceId);
            return uuidInstanceId;
        }
        String instanceId = getInstanceId(i, mno);
        IMSLog.s(IRegistrationManager.LOG_TAG, "getInstanceId by phoneId: " + instanceId);
        return instanceId;
    }

    String getInstanceId(final int i, Mno mno) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getInstanceId:");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return "";
        }
        String imei = this.mTelephonyManager.getImei(iSimManager.getSimSlotIndex());
        if (TextUtils.isEmpty(imei) || iSimManager.hasVsim()) {
            return (String) Optional.ofNullable(ImsSharedPrefHelper.getString(i, this.mContext, ImsSharedPrefHelper.IMS_USER_DATA, IRegistrationManager.KEY_INSTANCE_ID, null)).orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda4
                @Override // java.util.function.Supplier
                public final Object get() {
                    String lambda$getInstanceId$6;
                    lambda$getInstanceId$6 = RegistrationManager.this.lambda$getInstanceId$6(i);
                    return lambda$getInstanceId$6;
                }
            });
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getInstanceId: deviceId len: " + imei.length());
        if (imei.length() < 14) {
            Log.i(IRegistrationManager.LOG_TAG, "Invalid deviceId. Read imei again");
            imei = this.mTelephonyManager.getImei(i);
        }
        String meid = this.mTelephonyManager.getMeid(i);
        if (!TextUtils.isEmpty(imei) && imei.length() >= 14) {
            String deviceSoftwareVersion = mno == Mno.TMOUS ? this.mTelephonyManager.getDeviceSoftwareVersion(SimUtil.getSubId(i)) : "";
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "getInstanceId: imei len=" + imei.length() + ", dsv=" + deviceSoftwareVersion);
            return "<urn:gsma:imei:" + DeviceUtil.getFormattedDeviceId(imei, deviceSoftwareVersion) + ">";
        }
        if (!TextUtils.isEmpty(meid) && meid.length() >= 14) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "getInstanceId: meid len=" + meid.length());
            return "<urn:device-id:meid:" + DeviceUtil.getFormattedDeviceId(meid, "") + ">";
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getInstanceId: imei/meid seems be wrong!");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getInstanceId$6(int i) {
        String str = "<urn:uuid:" + UUID.randomUUID().toString() + ">";
        ImsSharedPrefHelper.save(i, this.mContext, ImsSharedPrefHelper.IMS_USER_DATA, IRegistrationManager.KEY_INSTANCE_ID, str);
        return str;
    }

    public String getAvailableNetworkType(String str) {
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            for (ImsRegistration imsRegistration : SlotBasedConfig.getInstance(i).getImsRegistrations().values()) {
                if (imsRegistration.hasService(str)) {
                    return imsRegistration.getImsProfile().getPdn();
                }
            }
        }
        return null;
    }

    protected String getPreferredImpuOnPdn(final int i, int i2) {
        IMSLog.i(IRegistrationManager.LOG_TAG, "getPreferredImpuOnPdn: phoneId=" + i2 + " pdn=" + i);
        return (String) SlotBasedConfig.getInstance(i2).getImsRegistrations().values().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getPreferredImpuOnPdn$7;
                lambda$getPreferredImpuOnPdn$7 = RegistrationManager.lambda$getPreferredImpuOnPdn$7(i, (ImsRegistration) obj);
                return lambda$getPreferredImpuOnPdn$7;
            }
        }).findFirst().map(new Function() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImsRegistration) obj).getPreferredImpu();
            }
        }).map(new RegistrationManager$$ExternalSyntheticLambda8()).orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getPreferredImpuOnPdn$7(int i, ImsRegistration imsRegistration) {
        return imsRegistration.getImsProfile().getPdnType() == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.String buildUserAgentString(com.sec.ims.settings.ImsProfile r17, java.lang.String r18, int r19) {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationManager.buildUserAgentString(com.sec.ims.settings.ImsProfile, java.lang.String, int):java.lang.String");
    }

    protected void updateVceConfig(IRegisterTask iRegisterTask, boolean z) {
        this.mRegStackIf.updateVceConfig(iRegisterTask, z);
    }

    protected void logTask() {
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            StringBuilder sb = new StringBuilder("RegisterTask(s): ");
            List<IRegisterTask> pendingRegistration = getPendingRegistration(i);
            if (CollectionUtils.isNullOrEmpty(pendingRegistration)) {
                sb.append("Nothing!");
            } else {
                for (IRegisterTask iRegisterTask : pendingRegistration) {
                    sb.append(iRegisterTask.getProfile().getName());
                    sb.append(" (");
                    sb.append(iRegisterTask.getState());
                    if (iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        sb.append(", rat = ");
                        sb.append(iRegisterTask.getRegistrationRat());
                        sb.append(", service = ");
                        sb.append((String) Optional.ofNullable(iRegisterTask.getImsRegistration()).map(new RegistrationManager$$ExternalSyntheticLambda1()).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda5
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                return Objects.toString((Set) obj);
                            }
                        }).orElse(""));
                    }
                    sb.append("), ");
                }
                IMSLog.i(IRegistrationManager.LOG_TAG, i, sb.toString().replaceAll(", $", ""));
            }
        }
    }

    protected void updatePani(int i) {
        Optional.ofNullable(RegistrationUtils.getPendingRegistrationInternal(i)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationManager.this.lambda$updatePani$8((SlotBasedConfig.RegisterTaskList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePani$8(SlotBasedConfig.RegisterTaskList registerTaskList) {
        registerTaskList.forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationManager.this.updatePani((RegisterTask) obj);
            }
        });
    }

    protected void updatePani(RegisterTask registerTask) {
        ImsProfile profile = registerTask.getProfile();
        if (profile.hasEmergencySupport() || registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING) || !TextUtils.isEmpty(profile.getLastPaniHeader())) {
            int phoneId = registerTask.getPhoneId();
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "updatePani " + registerTask);
            this.mRegStackIf.updatePani(registerTask);
            if (profile.hasEmergencySupport() || RegistrationUtils.isCmcProfile(profile) || !ImsProfile.hasRcsService(profile)) {
                return;
            }
            String pani = registerTask.getPani();
            String lastPani = registerTask.getLastPani();
            if (TextUtils.isEmpty(pani)) {
                return;
            }
            this.mSecImsServiceConnector.getSipTransportImpl(phoneId).onPaniUpdated(pani, lastPani);
        }
    }

    public void dump() {
        IMSLog.dump(IRegistrationManager.LOG_TAG, "Dump of RegistrationManager:");
        IMSLog.increaseIndent(IRegistrationManager.LOG_TAG);
        IMSLog.dump(IRegistrationManager.LOG_TAG, "GCF mode: [" + DeviceUtil.getGcfMode() + "]");
        IMSLog.dump(IRegistrationManager.LOG_TAG, "RegisterTask(s) -");
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                IMSLog.dump(IRegistrationManager.LOG_TAG, "SIM slot: [" + next.getPhoneId() + "] state: [" + next.getState() + "] IMS Profile: [" + next.getProfile() + "]");
                StringBuilder sb = new StringBuilder();
                sb.append("Governor: ");
                sb.append(next.getGovernor());
                IMSLog.dump(IRegistrationManager.LOG_TAG, sb.toString());
            }
        }
        this.mEventLog.dump();
        IMSLog.decreaseIndent(IRegistrationManager.LOG_TAG);
        this.mRegStackIf.dump();
    }

    protected void reportRegistrationStatus(IRegisterTask iRegisterTask) {
        int phoneId = iRegisterTask.getPhoneId();
        ContentValues contentValues = new ContentValues();
        DiagnosisConstants.REGI_FRSN regi_frsn = DiagnosisConstants.REGI_FRSN.UNKNOWN;
        int code = regi_frsn.getCode();
        int lastRegiFailReason = iRegisterTask.getLastRegiFailReason();
        if (iRegisterTask.getUserAgent() != null) {
            SipError errorCode = iRegisterTask.getUserAgent().getErrorCode();
            if (errorCode != null) {
                code = errorCode.getCode();
            }
            int registrationRat = iRegisterTask.getRegistrationRat();
            ImsProfile profile = iRegisterTask.getProfile();
            Set set = (Set) Optional.ofNullable(iRegisterTask.getImsRegistration()).map(new RegistrationManager$$ExternalSyntheticLambda1()).orElse(new HashSet());
            RegistrationConstants.RegisterTaskState state = iRegisterTask.getState();
            RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERED;
            if (state == registerTaskState && code == DiagnosisConstants.REGI_FRSN.OK.getCode()) {
                if (code != lastRegiFailReason) {
                    DiagnosisConstants.REGI_FRSN regi_frsn2 = DiagnosisConstants.REGI_FRSN.OK_AFTER_FAIL;
                    if (lastRegiFailReason != regi_frsn2.getCode()) {
                        code = regi_frsn2.getCode();
                    }
                }
                if (profile.hasService("mmtel", registrationRat) && !set.contains("mmtel")) {
                    code = iRegisterTask.getRegiFailReason();
                }
            } else if (iRegisterTask.getState() != registerTaskState) {
                if (iRegisterTask.getRegiFailReason() < DiagnosisConstants.REGI_FRSN.OFFSET_DEREGI_REASON.getCode()) {
                    contentValues.put(DiagnosisConstants.REGI_KEY_FAIL_COUNT, Integer.valueOf(iRegisterTask.getGovernor().getFailureCount()));
                } else {
                    code = iRegisterTask.getRegiFailReason();
                }
                iRegisterTask.setRegiFailReason(regi_frsn.getCode());
            }
            contentValues.put(DiagnosisConstants.REGI_KEY_DATA_RAT_TYPE, Integer.valueOf(registrationRat));
            contentValues.put(DiagnosisConstants.REGI_KEY_SERVICE_SET_ALL, DiagnosisConstants.convertServiceSetToHex(profile.getServiceSet(Integer.valueOf(registrationRat))));
            if (!set.isEmpty()) {
                contentValues.put(DiagnosisConstants.REGI_KEY_SERVICE_SET_REGISTERED, DiagnosisConstants.convertServiceSetToHex(set));
            }
            contentValues.put(DiagnosisConstants.REGI_KEY_PANI_PREFIX, Integer.valueOf(DiagnosisConstants.getPaniPrefix(iRegisterTask.getPani())));
            contentValues.put(DiagnosisConstants.REGI_KEY_PDN_TYPE, Integer.valueOf(DiagnosisConstants.getPdnType(profile.getPdn())));
            contentValues.put(DiagnosisConstants.REGI_KEY_PCSCF_ORDINAL, Integer.valueOf(iRegisterTask.getGovernor().getPcscfOrdinal()));
            contentValues.put("ROAM", Integer.valueOf(this.mPdnController.isDataRoaming(phoneId) ? 1 : 0));
            IVolteServiceModule iVolteServiceModule = this.mVsm;
            if (iVolteServiceModule != null) {
                contentValues.put(DiagnosisConstants.REGI_KEY_SIGNAL_STRENGTH, Integer.valueOf(Math.max(0, iVolteServiceModule.getSignalLevel())));
            }
        } else {
            code = iRegisterTask.getRegiFailReason();
        }
        contentValues.put(DiagnosisConstants.REGI_KEY_REQUEST_CODE, Integer.valueOf(iRegisterTask.getRegiRequestType().getCode()));
        contentValues.put(DiagnosisConstants.REGI_KEY_FAIL_REASON, Integer.valueOf(code));
        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "reportRegiStatus: reason [" + code + "], prev [" + lastRegiFailReason + "]");
        if (code > regi_frsn.getCode() && code != DiagnosisConstants.REGI_FRSN.OK.getCode()) {
            ImsLogAgentUtil.sendLogToAgent(phoneId, this.mContext, DiagnosisConstants.FEATURE_REGI, contentValues);
        }
        reportRcsChatRegistrationStatus(iRegisterTask);
        iRegisterTask.setLastRegiFailReason(code);
    }

    protected void reportRcsChatRegistrationStatus(IRegisterTask iRegisterTask) {
        int i;
        if (ImsProfile.hasRcsService(iRegisterTask.getProfile())) {
            ContentValues contentValues = new ContentValues();
            int phoneId = iRegisterTask.getPhoneId();
            if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                HashSet hashSet = new HashSet();
                hashSet.addAll((Collection) Optional.ofNullable(iRegisterTask.getImsRegistration()).map(new RegistrationManager$$ExternalSyntheticLambda1()).orElse(new HashSet()));
                if (hashSet.removeAll(Arrays.asList(ImsProfile.getChatServiceList()))) {
                    i = 2;
                } else if (hashSet.removeAll(Arrays.asList(ImsProfile.getRcsServiceList()))) {
                    i = 1;
                }
                contentValues.put(DiagnosisConstants.KEY_SEND_MODE, (Integer) 1);
                contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 0);
                contentValues.put(DiagnosisConstants.DRCS_KEY_RCS_REGI_STATUS, Integer.valueOf(i));
                ImsLogAgentUtil.storeLogToAgent(phoneId, this.mContext, DiagnosisConstants.FEATURE_DRCS, contentValues);
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "reportRcsRegiStatus: " + i);
            }
            i = 0;
            contentValues.put(DiagnosisConstants.KEY_SEND_MODE, (Integer) 1);
            contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 0);
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCS_REGI_STATUS, Integer.valueOf(i));
            ImsLogAgentUtil.storeLogToAgent(phoneId, this.mContext, DiagnosisConstants.FEATURE_DRCS, contentValues);
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "reportRcsRegiStatus: " + i);
        }
    }

    protected void reportRegistrationCount(IRegisterTask iRegisterTask) {
        StringBuilder sb = new StringBuilder("R");
        int pdnType = iRegisterTask.getPdnType();
        if (pdnType == -1 || pdnType == 0 || pdnType == 1) {
            sb.append("R");
        } else if (pdnType == 11) {
            sb.append("G");
        } else {
            IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "reportRegistrationCount: PDN type [" + pdnType + "] - ignore!");
            return;
        }
        if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
            sb.append("S");
        } else {
            sb.append("F");
        }
        int registrationRat = iRegisterTask.getRegistrationRat();
        int networkClass = TelephonyManagerExt.getNetworkClass(registrationRat);
        if (networkClass == 4) {
            sb.append("N");
        } else if (networkClass == 3) {
            if (registrationRat == 18) {
                if (this.mPdnController.getEpdgPhysicalInterface(iRegisterTask.getPhoneId()) == 2) {
                    sb.append("C");
                } else {
                    sb.append("W");
                }
            } else {
                sb.append(DiagnosisConstants.RCSM_ORST_HTTP);
            }
        } else if (networkClass == 2 || networkClass == 1) {
            sb.append("L");
        } else {
            IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "reportRegistrationCount: rat [" + registrationRat + "] - ignore!");
        }
        if (DiagnosisConstants.REGI_COUNT_KEYS.contains(sb.toString())) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 1);
            contentValues.put(sb.toString(), (Integer) 1);
            IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "reportRegistrationCount: key [" + ((Object) sb) + "]");
            ImsLogAgentUtil.storeLogToAgent(iRegisterTask.getPhoneId(), this.mContext, "DRPT", contentValues);
        }
    }

    protected void reportDualImsStatus(int i) {
        int i2;
        if (SimUtil.isDualIMS()) {
            i2 = getRegistrationInfoByPhoneId(1 - i) != null ? 2 : 1;
        } else {
            i2 = 0;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 2);
        contentValues.put(DiagnosisConstants.DRPT_KEY_DUAL_IMS_ACTIVE, Integer.valueOf(i2));
        ImsLogAgentUtil.storeLogToAgent(i, this.mContext, "DRPT", contentValues);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "reportDualImsStatus: " + i2);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent getUserAgent(int i) {
        return this.mRegStackIf.getUserAgent(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent getUserAgent(String str, int i) {
        return this.mRegStackIf.getUserAgent(str, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent getUserAgentByRegId(int i) {
        return this.mRegStackIf.getUserAgentByRegId(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent getUserAgentByImsi(String str, String str2) {
        return this.mRegStackIf.getUserAgentByImsi(str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public String getImsiByUserAgentHandle(int i) {
        return this.mRegStackIf.getImsiByUserAgentHandle(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent[] getUserAgentByPhoneId(int i, String str) {
        return this.mRegStackIf.getUserAgentByPhoneId(i, str);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent getUserAgentOnPdn(int i, int i2) {
        return this.mRegStackIf.getUserAgentOnPdn(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public IUserAgent getUserAgent(String str) {
        return this.mRegStackIf.getUserAgent(str);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public String getImsiByUserAgent(IUserAgent iUserAgent) {
        return this.mRegStackIf.getImsiByUserAgent(iUserAgent);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void forceNotifyToApp(int i) {
        IConfigModule iConfigModule = this.mConfigModule;
        if (iConfigModule == null || !iConfigModule.isRcsEnabled(i)) {
            return;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "forceNotifyToApp");
        Intent intent = new Intent();
        intent.setAction(ImsConstants.Intents.ACTION_SERVICE_UP);
        intent.putExtra(ImsConstants.Intents.EXTRA_ANDORID_PHONE_ID, i);
        intent.setPackage(ImsConstants.Packages.PACKAGE_SEC_MSG);
        intent.addFlags(LogClass.SIM_EVENT);
        this.mContext.sendBroadcast(intent);
    }

    public void sendDmState(int i, boolean z) {
        if (!SimUtil.isDualIMS() || SimUtil.getActiveSubInfoCount() <= 1) {
            return;
        }
        this.mRegStackIf.sendDmState(i, z);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void removeE911RegiTimer() {
        if (this.mHandler.hasMessages(155)) {
            this.mHandler.removeMessages(155);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateEmergencyTaskByAuthFailure(int i) {
        IRegisterTask registeringEmergencyTask = getRegisteringEmergencyTask(i);
        if (registeringEmergencyTask != null) {
            if (registeringEmergencyTask.getResultMessage() != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("isERegiAuthFailed", true);
                registeringEmergencyTask.getResultMessage().setData(bundle);
            }
            RegistrationUtils.sendEmergencyRegistrationFailed(registeringEmergencyTask);
        }
    }

    private IRegisterTask getRegisteringEmergencyTask(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return null;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getProfile().hasEmergencySupport() && next.getState() == RegistrationConstants.RegisterTaskState.REGISTERING) {
                return next;
            }
        }
        return null;
    }
}
