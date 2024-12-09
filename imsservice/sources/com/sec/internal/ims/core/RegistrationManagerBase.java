package com.sec.internal.ims.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.DnsResolver;
import android.net.Network;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Looper;
import android.os.Message;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.IImsDmConfigListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.NaptrDnsResolver;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.SrvDnsResolver;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.entitlement.nsds.NSDSSimEventManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IMSLogTimer;
import java.net.InetAddress;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import okhttp3.internal.tls.OkHostnameVerifier;

/* loaded from: classes.dex */
public class RegistrationManagerBase extends RegistrationManagerInternal {
    public static final long DELAY = 10000;
    public static final int DNS_QUERY_RETRY_COUNT = 5;

    @Override // com.sec.internal.ims.core.RegistrationManagerInternal, com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public /* bridge */ /* synthetic */ void initSequentially() {
        super.initSequentially();
    }

    @Override // com.sec.internal.ims.core.RegistrationManagerInternal, com.sec.internal.interfaces.ims.core.IRegistrationManager
    public /* bridge */ /* synthetic */ void suspended(RegisterTask registerTask, boolean z, int i) {
        super.suspended(registerTask, z, i);
    }

    public RegistrationManagerBase(Looper looper, IImsFramework iImsFramework, Context context, PdnController pdnController, List<ISimManager> list, ITelephonyManager iTelephonyManager, ICmcAccountManager iCmcAccountManager, IRcsPolicyManager iRcsPolicyManager) {
        super(iImsFramework, context, pdnController, list, iTelephonyManager, iCmcAccountManager, iRcsPolicyManager);
        this.mNetEvtCtr = new NetworkEventController(context, pdnController, iTelephonyManager, list, iCmcAccountManager, iRcsPolicyManager, this, this.mImsFramework);
        this.mUserEvtCtr = new UserEventController(context, this, pdnController, list, iTelephonyManager, this.mEventLog);
        RegistrationManagerHandler registrationManagerHandler = new RegistrationManagerHandler(looper, context, this, iImsFramework, pdnController, list, iTelephonyManager, iCmcAccountManager, this.mNetEvtCtr, this.mUserEvtCtr, this.mVsm);
        this.mHandler = registrationManagerHandler;
        this.mUserEvtCtr.mRegHandler = registrationManagerHandler;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setThirdPartyFeatureTags(String[] strArr) {
        this.mThirdPartyFeatureTags = Arrays.asList(strArr);
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(126, SimUtil.getActiveDataPhoneId(), 0, null));
    }

    public void registerProfile(List<Integer> list, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "registerProfile: " + list);
        this.mHandler.notifyManualRegisterRequested(list, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void deregisterProfile(List<Integer> list, boolean z, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "deregisterProfile: " + list + " disconnectPdn=" + z);
        this.mHandler.notifyManualDeRegisterRequested(list, z, i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public int registerProfile(ImsProfile imsProfile, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "registerProfile: profile=" + imsProfile.toString());
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return -1;
        }
        if (iSimManager.hasVsim() && SlotBasedConfig.getInstance(i).getIconManager() == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "registerProfile: added iconmanager.");
            SlotBasedConfig.getInstance(i).createIconManager(this.mContext, this, this.mPdnController, iSimManager.getSimMno(), i);
        }
        return this.mHandler.notifyManualRegisterRequested(imsProfile, iSimManager.hasVsim(), i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void deregisterProfile(int i, int i2) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "deregisterProfile: handle:" + i);
        this.mHandler.notifyManualDeRegisterRequested(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void deregisterProfile(int i, int i2, boolean z) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "deregisterProfile: handle:" + i + ", disconnectPdn: " + z);
        this.mHandler.notifyManualDeRegisterRequested(i, i2, z);
    }

    public int updateRegistration(ImsProfile imsProfile, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateRegistration: profile=" + imsProfile);
        return this.mHandler.notifyUpdateRegisterRequested(imsProfile, i);
    }

    public int forcedUpdateRegistration(ImsProfile imsProfile, int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "forcedUpdateRegistration: profile=" + imsProfile);
        if (imsProfile != null && (pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i)) != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().getId() == imsProfile.getId()) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, next, "start updateRegistration");
                    this.mHandler.requestForcedUpdateRegistration(next, 0L);
                    return 0;
                }
            }
        }
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void doPendingUpdateRegistration() {
        this.mHandler.removeMessages(32);
        this.mHandler.sendEmptyMessage(32);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void bootCompleted() {
        this.mHandler.removeMessages(150);
        this.mHandler.sendEmptyMessage(150);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void deregister(IRegisterTask iRegisterTask, boolean z, boolean z2, String str) {
        Preconditions.checkNotNull(iRegisterTask);
        deregister(iRegisterTask, z, z2, 0, str);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void deregister(IRegisterTask iRegisterTask, boolean z, boolean z2, int i, String str) {
        Preconditions.checkNotNull(iRegisterTask);
        iRegisterTask.setReason(str);
        Log.i(IRegistrationManager.LOG_TAG, "deregister: task=" + iRegisterTask + " local=" + z + " keepPdn=" + z2 + " delay=" + i + " reason=" + str);
        this.mHandler.requestPendingDeregistration(iRegisterTask, z, z2, (long) i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void sendDeregister(int i) {
        Iterator<ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            sendDeregister(i, it.next().getSimSlotIndex());
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void sendDeregister(int i, int i2) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "sendDeregister: reason=" + i);
        this.mHandler.notifySendDeRegisterRequested(SimUtil.getMno(), i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void sendDeregister(IRegisterTask iRegisterTask, long j) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(128, iRegisterTask), j);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isSuspended(int i) {
        RegisterTask registerTaskByRegHandle = getRegisterTaskByRegHandle(i);
        if (registerTaskByRegHandle == null) {
            Log.e(IRegistrationManager.LOG_TAG, "isSuspended: unknown handle " + i);
            return false;
        }
        return registerTaskByRegHandle.isSuspended();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public int getCurrentNetworkByPhoneId(int i) {
        if (getNetworkEvent(i) == null) {
            return 0;
        }
        return getNetworkEvent(i).network;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public int getCurrentNetwork(int i) {
        RegisterTask registerTaskByRegHandle = getRegisterTaskByRegHandle(i);
        if (registerTaskByRegHandle == null) {
            Log.i(IRegistrationManager.LOG_TAG, "getCurrentNetwork: unknown handle " + i);
            return 0;
        }
        return registerTaskByRegHandle.getRegistrationRat();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public String[] getCurrentPcscf(int i) {
        String[] strArr = new String[2];
        RegisterTask registerTaskByRegHandle = getRegisterTaskByRegHandle(i);
        if (registerTaskByRegHandle == null) {
            Log.i(IRegistrationManager.LOG_TAG, "getCurrentPcscf: unknown handle " + i);
            return null;
        }
        strArr[0] = registerTaskByRegHandle.getGovernor().getCurrentPcscfIp();
        strArr[1] = Integer.toString(registerTaskByRegHandle.getProfile().getSipPort());
        return strArr;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setTtyMode(int i, int i2) {
        boolean z = (i2 == Extensions.TelecomManager.TTY_MODE_OFF || i2 == Extensions.TelecomManager.RTT_MODE) ? false : true;
        if (SlotBasedConfig.getInstance(i).getTTYMode() != z) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "setTtyMode [" + z + "]");
            Bundle bundle = new Bundle();
            bundle.putInt("phoneId", i);
            bundle.putBoolean("mode", z);
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(37, bundle));
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setRttMode(int i, boolean z) {
        if (SlotBasedConfig.getInstance(i).getRTTMode() != z) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "setRttMode [" + z + "]");
            Bundle bundle = new Bundle();
            bundle.putInt("phoneId", i);
            bundle.putBoolean("mode", z);
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(RegistrationEvents.EVENT_RTTMODE_UPDATED, bundle));
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void sendReRegister(int i, int i2) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "sendReRegister : pdnType:" + i2);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getPdnType() == i2) {
                    sendReRegister(next);
                }
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    protected void sendDnsQuery(final IRegisterTask iRegisterTask, final String str, final String str2, final List<String> list, final String str3, final String str4, final String str5, final long j) {
        Network network;
        int i;
        final ArrayList arrayList = new ArrayList();
        try {
            network = iRegisterTask.getNetworkConnected().getPrivateDnsBypassingCopy();
        } catch (NullPointerException unused) {
            network = null;
        }
        Network network2 = network;
        if (network2 == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, "null task");
            return;
        }
        final int phoneId = iRegisterTask.getPhoneId();
        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "sendDnsQuery: hostname " + str2 + " dnses " + list);
        str3.hashCode();
        switch (str3) {
            case "A":
                i = 1;
                break;
            case "SRV":
                i = 33;
                break;
            case "AAAA":
                i = 28;
                break;
            case "NAPTR":
                i = 35;
                break;
            default:
                i = 0;
                break;
        }
        int i2 = i;
        DnsResolver.Callback<List<NaptrDnsResolver.NaptrTarget>> callback = new DnsResolver.Callback<List<NaptrDnsResolver.NaptrTarget>>() { // from class: com.sec.internal.ims.core.RegistrationManagerBase.1
            @Override // android.net.DnsResolver.Callback
            public void onAnswer(List<NaptrDnsResolver.NaptrTarget> list2, int i3) {
                Log.d(IRegistrationManager.LOG_TAG, "DnsResponse: NaptrTargets size : " + list2.size());
                boolean z = false;
                for (NaptrDnsResolver.NaptrTarget naptrTarget : list2) {
                    if (naptrTarget.mType == 1) {
                        RegistrationManagerBase.this.sendDnsQuery(iRegisterTask, str, naptrTarget.mName, list, "SRV", str4, str5, j);
                        z = true;
                    }
                }
                if (z) {
                    return;
                }
                RegistrationManagerBase.this.onDnsResponse(arrayList, -1, phoneId);
            }

            @Override // android.net.DnsResolver.Callback
            public void onError(DnsResolver.DnsException dnsException) {
                RegistrationManagerBase.this.mRegStackIf.sendDnsQuery(phoneId, str, str2, list, str3, str4, str5, j);
            }
        };
        DnsResolver.Callback<List<SrvDnsResolver.SrvRecordInetAddress>> callback2 = new DnsResolver.Callback<List<SrvDnsResolver.SrvRecordInetAddress>>() { // from class: com.sec.internal.ims.core.RegistrationManagerBase.2
            @Override // android.net.DnsResolver.Callback
            public void onAnswer(List<SrvDnsResolver.SrvRecordInetAddress> list2, int i3) {
                int i4 = -1;
                for (SrvDnsResolver.SrvRecordInetAddress srvRecordInetAddress : list2) {
                    arrayList.add(srvRecordInetAddress.mInetAddress.getHostAddress());
                    int i5 = srvRecordInetAddress.mPort;
                    if (i4 != i5) {
                        i4 = i5;
                    }
                }
                RegistrationManagerBase.this.onDnsResponse(arrayList, i4, phoneId);
            }

            @Override // android.net.DnsResolver.Callback
            public void onError(DnsResolver.DnsException dnsException) {
                RegistrationManagerBase.this.mRegStackIf.sendDnsQuery(phoneId, str, str2, list, str3, str4, str5, j);
            }
        };
        DnsResolver.Callback<List<InetAddress>> callback3 = new DnsResolver.Callback<List<InetAddress>>() { // from class: com.sec.internal.ims.core.RegistrationManagerBase.3
            @Override // android.net.DnsResolver.Callback
            public void onAnswer(List<InetAddress> list2, int i3) {
                for (InetAddress inetAddress : list2) {
                    IMSLog.d(IRegistrationManager.LOG_TAG, phoneId, inetAddress.toString());
                    arrayList.add(inetAddress.getHostAddress());
                }
                RegistrationManagerBase.this.onDnsResponse(arrayList, 0, phoneId);
            }

            @Override // android.net.DnsResolver.Callback
            public void onError(DnsResolver.DnsException dnsException) {
                RegistrationManagerBase.this.mRegStackIf.sendDnsQuery(phoneId, str, str2, list, str3, str4, str5, j);
            }
        };
        CancellationSignal cancellationSignal = new CancellationSignal();
        DnsResolver dnsResolver = DnsResolver.getInstance();
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        if (i2 == 35) {
            NaptrDnsResolver.query(network2, str2, newSingleThreadExecutor, cancellationSignal, callback, str4);
        } else if (i2 == 33) {
            SrvDnsResolver.query(network2, str2, newSingleThreadExecutor, cancellationSignal, callback2);
        } else {
            dnsResolver.query(network2, str2, i2, 1, newSingleThreadExecutor, cancellationSignal, callback3);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void sendDummyDnsQuery() {
        Log.i(IRegistrationManager.LOG_TAG, "sendDummyDnsQuery");
        List<String> dnsServersByNetType = this.mPdnController.getDnsServersByNetType();
        String str = "ipv4";
        if (dnsServersByNetType != null) {
            String str2 = dnsServersByNetType.get(0);
            Log.i(IRegistrationManager.LOG_TAG, "dns : " + str2);
            if (NetworkUtil.isIPv6Address(str2)) {
                str = "ipv6";
            }
        }
        String str3 = str;
        String intfNameByNetType = this.mPdnController.getIntfNameByNetType();
        Log.i(IRegistrationManager.LOG_TAG, "iface : " + intfNameByNetType + ",ipver:" + str3);
        if (dnsServersByNetType == null || intfNameByNetType == null) {
            return;
        }
        this.mRegStackIf.sendDnsQuery(10, intfNameByNetType, "www.ims_rrc_refresh_dns.net", dnsServersByNetType, "HOST", "UDP", str3, 0L);
    }

    void tryRegister() {
        if (SimUtil.isDualIMS()) {
            Iterator<ISimManager> it = this.mSimManagers.iterator();
            while (it.hasNext()) {
                tryRegister(it.next().getSimSlotIndex());
            }
            return;
        }
        tryRegister(SimUtil.getActiveDataPhoneId());
    }

    protected boolean onSimReady(boolean z, int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal;
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal2;
        Integer rcsConfVersion;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onSimReady: absent=" + z);
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (!z) {
            NSDSSimEventManager.startIMSDeviceConfigService(this.mContext, iSimManager);
        }
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "volte", i) != 1 && DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS_SWITCH, i) != 1) {
            if (Mno.fromSalesCode(OmcCode.get()).isAus()) {
                this.mEventLog.logAndAdd(i, "Aus device, keep IMS Service Up for Emergency Call.");
                EmergencyDomainUpdater.update(this.mContext, i, getEmergencyProfile(i), iSimManager, "PS");
                return true;
            }
            this.mEventLog.logAndAdd(i, "IMS is disabled. Do not load profiles");
            IMSLog.c(LogClass.REGI_IMS_OFF, i + ",IMS OFF");
            return false;
        }
        if (!z) {
            IServiceModuleManager serviceModuleManager = this.mImsFramework.getServiceModuleManager();
            if (!loadImsProfile(i) || !serviceModuleManager.isLooperExist()) {
                AsyncResult asyncResult = new AsyncResult(null, Integer.valueOf(i), null);
                RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(20, asyncResult), 1000L);
            } else {
                serviceModuleManager.serviceStartDeterminer(SlotBasedConfig.getInstance(i).getProfiles(), i);
                serviceModuleManager.notifyImsSwitchUpdateToApp();
                if (ConfigUtil.isRcsChn(SimUtil.getSimMno(i)) && (rcsConfVersion = this.mConfigModule.getRcsConfVersion(i)) != null && rcsConfVersion.intValue() == -2) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "onSimReady: disableRcsByAcs for ConfigDBVer == -2");
                    this.mConfigModule.getAcsConfig(i).disableRcsByAcs(true);
                }
            }
        } else {
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal3 = RegistrationUtils.getPendingRegistrationInternal(i);
            if (pendingRegistrationInternal3 != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal3.iterator();
                while (it.hasNext()) {
                    it.next().getGovernor().releaseThrottle(4);
                }
            }
        }
        RegistrationUtils.setVoLTESupportProperty(z, i);
        EmergencyDomainUpdater.update(this.mContext, i, getEmergencyProfile(i), iSimManager, this.mImsFramework.getString(i, GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, "PS"));
        if (!iSimManager.hasVsim()) {
            clearTask(i);
        }
        buildTask(i);
        RegistrationUtils.initRttMode(this.mContext);
        if (!ConfigUtil.hasAcsProfile(this.mContext, i, iSimManager)) {
            this.mImsFramework.getServiceModuleManager().notifyConfigured(false, i);
        }
        updateImsIconManagerStatus(i);
        Mno simMno = iSimManager.getSimMno();
        if (this.mlegacyPhoneCount == 0 && SlotBasedConfig.getInstance(i).getIconManager() == null && this.mCmcAccountManager.isSecondaryDevice()) {
            SlotBasedConfig.getInstance(i).createIconManager(this.mContext, this, this.mPdnController, simMno, i);
        }
        if (simMno.isOneOf(Mno.TMOUS, Mno.DISH) && this.mVsm != null) {
            this.mVsm.setRttMode(Settings.Secure.getInt(this.mContext.getContentResolver(), "preferred_rtt_mode", 0));
        }
        if (simMno == Mno.CMCC && iSimManager.isLabSimCard() && !z) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "Change SS domain to PS_ONLY_VOLTEREGIED");
            ImsUtil.updateSsDomain(this.mContext, i, "PS_ONLY_VOLTEREGIED");
        }
        if (!z) {
            notifySimMobilityStatusChanged(i, iSimManager);
            if (DeviceUtil.dimVolteMenuBySaMode(i) && this.mTelephonyManager.getPreferredNetworkType(SimUtil.getSubId(i)) >= 23) {
                ImsConstants.SystemSettings.setVoiceCallType(this.mContext, 0, i);
            }
        }
        if (!z && OmcCode.isDCMOmcCode() && simMno == Mno.DOCOMO && SemSystemProperties.getInt("ro.telephony.default_network", 26) >= 23 && (pendingRegistrationInternal2 = RegistrationUtils.getPendingRegistrationInternal(i)) != null) {
            Iterator<RegisterTask> it2 = pendingRegistrationInternal2.iterator();
            while (it2.hasNext()) {
                RegisterTask next = it2.next();
                if (next != null && next.getProfile().getPdnType() == 11) {
                    next.getGovernor().notifyVoLteOnOffToRil(ImsConstants.SystemSettings.getVoiceCallType(this.mContext, 0, i) == 0);
                }
            }
        }
        if (!z && simMno == Mno.SKT && OmcCode.isKOROmcCode() && (pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i)) != null) {
            Iterator<RegisterTask> it3 = pendingRegistrationInternal.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                RegisterTask next2 = it3.next();
                if (!next2.isRcsOnly() && next2.getProfile().getCmcType() == 0) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "onSimReady: registerAllowedNetworkTypesListener");
                    next2.getGovernor().registerAllowedNetworkTypesListener();
                    break;
                }
            }
        }
        this.mRegStackIf.configure(i);
        tryRegister(i);
        return true;
    }

    protected void updateImsIconManagerStatus(int i) {
        initImsIconManagerOrCreate(i);
        if (SimUtil.isSimActive(this.mContext, SimUtil.getOppositeSimSlot(i))) {
            initImsIconManagerOrCreate(SimUtil.getOppositeSimSlot(i));
        }
        updateImsIconManagerOrCreate(i);
        if (SimUtil.isSimActive(this.mContext, SimUtil.getOppositeSimSlot(i))) {
            updateImsIconManagerOrCreate(SimUtil.getOppositeSimSlot(i));
        }
    }

    private void initImsIconManagerOrCreate(int i) {
        SlotBasedConfig slotBasedConfig = SlotBasedConfig.getInstance(i);
        ImsIconManager iconManager = slotBasedConfig.getIconManager();
        if (RegistrationUtils.hasLoadedProfile(i)) {
            Mno mno = SimUtil.getMno(i);
            if (iconManager == null) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "initImsIconManagerOrCreate: added iconmanager.");
                slotBasedConfig.createIconManager(this.mContext, this, this.mPdnController, mno, i);
            } else {
                iconManager.initConfiguration(mno, i);
            }
        }
    }

    private void updateImsIconManagerOrCreate(int i) {
        SlotBasedConfig slotBasedConfig = SlotBasedConfig.getInstance(i);
        ImsIconManager iconManager = slotBasedConfig.getIconManager();
        if (RegistrationUtils.hasLoadedProfile(i)) {
            Mno mno = SimUtil.getMno(i);
            if (iconManager == null) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateImsIconManagerOrCreate: added iconmanager.");
                slotBasedConfig.createIconManager(this.mContext, this, this.mPdnController, mno, i);
            } else {
                iconManager.updateRegistrationIcon();
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void stopPdnConnectivity(int i, IRegisterTask iRegisterTask) {
        int phoneId = iRegisterTask.getPhoneId();
        iRegisterTask.getGovernor().resetPcscfList();
        iRegisterTask.getGovernor().resetPcoType();
        iRegisterTask.getGovernor().resetPdnFailureInfo();
        iRegisterTask.clearSuspended();
        iRegisterTask.clearSuspendedBySnapshot();
        iRegisterTask.setKeepPdn(false);
        this.mPdnController.stopPdnConnectivity(i, phoneId, iRegisterTask);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void moveNextPcscf(int i, Message message) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "moveNextPcscf");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().hasEmergencySupport()) {
                    IRegistrationGovernor governor = next.getGovernor();
                    IMSLog.i(IRegistrationManager.LOG_TAG, next.getPhoneId(), "moveNextPcscf: current [" + governor.getPcscfOrdinal() + "]");
                    next.setResultMessage(message);
                    this.mMoveNextPcscf = true;
                    next.setDeregiReason(11);
                    if (next.getState() == RegistrationConstants.RegisterTaskState.EMERGENCY) {
                        IMSLog.i(IRegistrationManager.LOG_TAG, next.getPhoneId(), "moveNextPcscf: EMERGENCY state, try UA delete");
                        onDeregistered(next, SipErrorBase.OK, 0L, true, false);
                    } else if (next.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                        IMSLog.i(IRegistrationManager.LOG_TAG, next.getPhoneId(), "moveNextPcscf: REGISTERED state, local deregister");
                        tryDeregisterInternal(next, true, true);
                    } else {
                        IMSLog.i(IRegistrationManager.LOG_TAG, next.getPhoneId(), "It should not occur. ImsEmergencySession Issue!");
                        this.mMoveNextPcscf = false;
                        next.getProfile().setUicclessEmergency(true);
                        next.getGovernor().increasePcscfIdx();
                        this.mHandler.sendTryRegister(i);
                    }
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void suspendRegister(boolean z, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "suspendRegister:");
        if (z != SlotBasedConfig.getInstance(i).isSuspendedWhileIrat()) {
            SlotBasedConfig.getInstance(i).setSuspendWhileIrat(z);
            this.mEventLog.logAndAdd(i, "suspendedByIrat : " + z);
            if (!z) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "Resume reRegister: mNetType = " + this.mNetEvtCtr.getNetType() + ", mWiFi = " + this.mNetEvtCtr.isWiFi());
                this.mHandler.removeMessages(136);
                if (this.mNetEvtCtr.isNwChanged()) {
                    this.mNetEvtCtr.setNwChanged(false);
                    Bundle bundle = new Bundle();
                    bundle.putInt("networkType", this.mNetEvtCtr.getNetType());
                    bundle.putInt("isWifiConnected", this.mNetEvtCtr.isWiFi() ? 1 : 0);
                    bundle.putInt("phoneId", i);
                    RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                    registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(3, bundle));
                }
            } else {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "Suspend reRegister");
                RegistrationManagerHandler registrationManagerHandler2 = this.mHandler;
                registrationManagerHandler2.sendMessageDelayed(registrationManagerHandler2.obtainMessage(136, i, 0, null), 300000L);
            }
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
            if (pendingRegistrationInternal != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                while (it.hasNext()) {
                    RegisterTask next = it.next();
                    if (z) {
                        next.suspendByIrat();
                    } else {
                        next.resumeByIrat();
                    }
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean getCsfbSupported(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getCsfbSupported:");
        NetworkEvent networkEvent = getNetworkEvent(i);
        if (networkEvent == null) {
            return false;
        }
        if (NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network)) {
            boolean z = networkEvent.csOutOfService;
            boolean isPsOnlyReg = this.mPdnController.isPsOnlyReg(i);
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "isPsOnlyReg : " + isPsOnlyReg + " mEmmCause = " + getEmmCause());
            if (this.mEmmCause == 22) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "Support for EMM Cause 22");
                return true;
            }
            if (z || isPsOnlyReg) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "CS OOS or CSFB not supported.");
                return false;
            }
        }
        return true;
    }

    protected void onEmergencyReady(int i) {
        Log.i(IRegistrationManager.LOG_TAG, "onEmergencyReady:");
        RegisterTask registerTask = getRegisterTask(i);
        if (registerTask != null) {
            registerTask.setState(RegistrationConstants.RegisterTaskState.EMERGENCY);
            if (registerTask.getResultMessage() != null) {
                registerTask.getResultMessage().sendToTarget();
                registerTask.setResultMessage(null);
            }
        }
    }

    boolean loadImsProfile(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "loadImsProfile:");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            IMSLog.e(IRegistrationManager.LOG_TAG, i, "loadImsProfile: no SIM loaded");
            return false;
        }
        String simMnoName = iSimManager.getSimMnoName();
        IMSLog.e(IRegistrationManager.LOG_TAG, i, "loadImsProfile : " + simMnoName);
        if (TextUtils.isEmpty(simMnoName)) {
            IMSLog.e(IRegistrationManager.LOG_TAG, i, "loadImsProfile: no SIM detected.");
            return false;
        }
        SlotBasedConfig.getInstance(i).clearProfiles();
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "loadImsProfile: mno: " + simMnoName);
        for (ImsProfile imsProfile : ImsProfileLoaderInternal.getProfileListWithMnoName(this.mContext, simMnoName, i)) {
            if (loademergencyprofileinvalidimpu(imsProfile, i, iSimManager.isISimDataValid())) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "loadImsProfile: Add profile: " + imsProfile.getName() + " - profile id[" + imsProfile.getId() + "]");
                SlotBasedConfig.getInstance(i).addProfile(imsProfile);
            }
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "loadImsProfile: mRcsProfile: " + ConfigUtil.getRcsProfileLoaderInternalWithFeature(this.mContext, simMnoName, i));
        RcsUtils.DualRcs.refreshDualRcsReg(this.mContext);
        ImsUtil.notifyImsProfileLoaded(this.mContext, i);
        return true;
    }

    boolean loademergencyprofileinvalidimpu(ImsProfile imsProfile, int i, boolean z) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "loademergencyprofileinvalidimpu:");
        return Mno.fromName(imsProfile.getMnoName()) != Mno.BELL || z || imsProfile.hasEmergencySupport();
    }

    protected void onImsProfileUpdated(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onImsProfileUpdated:");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            this.mHandler.removeMessages(15, Integer.valueOf(i));
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(15, Integer.valueOf(i)), 100L);
            return;
        }
        loadImsProfile(i);
        RegistrationUtils.setVoLTESupportProperty(iSimManager.hasNoSim(), i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    next.setReason("profile updated");
                    next.setDeregiReason(29);
                    this.mJibeRcsRegistration.addDeRegisteringTask(i, next);
                    if (this.mTelephonyManager.getCallState(i) != 0) {
                        next.setHasPendingDeregister(true);
                    } else {
                        tryDeregisterInternal(next, false, false);
                    }
                }
                RegistrationUtils.replaceProfilesOnTask(next);
            }
        }
        if (this.mJibeRcsRegistration.needAwaitDeRegistered(i)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "onImsProfileUpdated: Proceed after de-regi done");
        } else {
            onImsProfileUpdateDone(i);
        }
    }

    void onImsSwitchUpdated(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onImsSwitchUpdated:");
        this.mImsFramework.getServiceModuleManager().onImsSwitchUpdated(i);
        this.mRegStackIf.configure(i);
        this.mHandler.onConfigUpdated(null, i);
    }

    void onOwnCapabilitiesChanged(int i, Capabilities capabilities) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onOwnCapabilitiesChanged: capabilities=" + capabilities);
        Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getPhoneId() == i && (!next.getMno().isKor() || next.isRcsOnly())) {
                next.getGovernor().checkAcsPcscfListChange();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    if (this.mHandler.hasMessages(139, Integer.valueOf(i))) {
                        if (RcsUtils.isImsSingleRegiRequired(this.mContext, i) && this.mConfigModule.getRcsConfVersion(i).intValue() == 0) {
                            IMSLog.i(IRegistrationManager.LOG_TAG, i, "onOwnCapabilitiesChanged: Postpone the update registration till next ACS complete event");
                            return;
                        }
                        this.mHandler.removeMessages(139, Integer.valueOf(i));
                    }
                    next.setReason("own capability changed : " + capabilities);
                    if (next.getMno() == Mno.TMOUS && ImsUtil.needForceRegiOrPublishForMmtelCallComposer(this.mContext, next.getProfile(), i)) {
                        updateRegistration(next, RegistrationConstants.UpdateRegiReason.CAPABILITY_CHANGED_FORCED);
                    } else {
                        updateRegistration(next, RegistrationConstants.UpdateRegiReason.CAPABILITY_CHANGED);
                    }
                } else {
                    tryRegister(i);
                }
            }
        }
    }

    boolean verifyCmcCertificate(X509Certificate[] x509CertificateArr) {
        List<IRegisterTask> pendingRegistration;
        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
        if (getCmcLineSlotIndex() == -1 || !this.mCmcAccountManager.isCmcActivated() || getCmcLineSlotIndex() == SimUtil.getActiveDataPhoneId() || SimUtil.getPhoneCount() <= 1 || (pendingRegistration = getPendingRegistration(getCmcLineSlotIndex())) == null) {
            return false;
        }
        boolean z = false;
        for (IRegisterTask iRegisterTask : pendingRegistration) {
            if (RegistrationUtils.isCmcProfile(iRegisterTask.getProfile()) && (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING || iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED)) {
                String pcscfHostname = iRegisterTask.getPcscfHostname();
                Log.i(IRegistrationManager.LOG_TAG, "Checking task: " + iRegisterTask.getProfile().getName() + " / " + pcscfHostname);
                if (!TextUtils.isEmpty(pcscfHostname) && (z = okHostnameVerifier.verify(pcscfHostname, x509CertificateArr[0]))) {
                    break;
                }
            }
        }
        return z;
    }

    void onSimRefresh(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onSimRefresh:");
        logTask();
        RcsUtils.DualRcs.refreshDualRcsReg(this.mContext);
        int simState = this.mTelephonyManager.getSimState(i);
        if (simState == 1 || simState == 6) {
            updateImsIconManagerStatus(i);
        }
        if (!this.mHandler.hasMessages(42)) {
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(42, Integer.valueOf(i)), 10000L);
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                next.getGovernor().releaseThrottle(0);
                RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERING;
                RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.REGISTERED;
                if (next.isOneOf(registerTaskState, registerTaskState2, RegistrationConstants.RegisterTaskState.DEREGISTERING)) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "De-Register would be called by RIL(or timeout).");
                    AsyncResult asyncResult = new AsyncResult(null, Integer.valueOf(next.getPhoneId()), null);
                    RegistrationManagerHandler registrationManagerHandler2 = this.mHandler;
                    registrationManagerHandler2.sendMessageDelayed(registrationManagerHandler2.obtainMessage(36, asyncResult), 600L);
                    if (next.getMno().isChn() && next.isRcsOnly() && next.getRegistrationRat() == 18 && next.isOneOf(registerTaskState, registerTaskState2)) {
                        next.setDeregiReason(25);
                        IMSLog.i(IRegistrationManager.LOG_TAG, i, "CHN deregister explicitly on WiFi");
                        tryDeregisterInternal(next, false, false);
                    }
                    if (RegistrationUtils.isCmcProfile(next.getProfile()) && next.getRegistrationRat() == 18 && next.isOneOf(registerTaskState, registerTaskState2)) {
                        next.setDeregiReason(25);
                        IMSLog.i(IRegistrationManager.LOG_TAG, i, "CMC deregister explicitly on WiFi");
                        tryDeregisterInternal(next, false, false);
                    }
                    if (next.getMno().isKor() && !next.isRcsOnly() && !RegistrationUtils.isCmcProfile(next.getProfile()) && TelephonyManager.getDefault().getSimState() == 1 && next.getState() == registerTaskState2) {
                        next.setDeregiReason(25);
                        IMSLog.i(IRegistrationManager.LOG_TAG, i, "De-Register is called right away to send SIP explicitly by sim absent event.");
                        tryDeregisterInternal(next, false, false);
                        return;
                    }
                    return;
                }
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.CONFIGURING, RegistrationConstants.RegisterTaskState.CONFIGURED)) {
                    if (next.getMno() == Mno.RJIL) {
                        IMSLog.e(IRegistrationManager.LOG_TAG, i, "stop auto configuration using config module");
                        next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                    }
                } else if (next.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED)) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "connecting task Stop PDN by sim refresh event.");
                    stopPdnConnectivity(next.getPdnType(), next);
                    next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                }
            }
        }
        this.mEventLog.logAndAdd(i, "onSimRefresh: Reset SIM-related configuration.");
        clearTask(i);
        SlotBasedConfig.getInstance(i).clear();
        UriGeneratorFactory uriGeneratorFactory = UriGeneratorFactory.getInstance();
        for (UriGenerator.URIServiceType uRIServiceType : UriGenerator.URIServiceType.values()) {
            uriGeneratorFactory.removeByPhoneId(i, uRIServiceType);
        }
        if (this.mHandler.hasMessages(42)) {
            this.mHandler.removeMessages(42);
        }
        EmergencyDomainUpdater.update(this.mContext, i, getEmergencyProfile(i), this.mSimManagers.get(i), this.mImsFramework.getString(i, GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, "PS"));
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onSimRefresh: reset NetworkEvent");
        this.mPdnController.resetNetworkState(i);
        this.mPdnController.registerTelephonyCallback(i);
        ICmcAccountManager iCmcAccountManager = this.mCmcAccountManager;
        if (iCmcAccountManager != null) {
            iCmcAccountManager.onSimRefresh(i);
        }
    }

    void onActiveDataSubscriptionChanged() {
        RcsUtils.DualRcs.refreshDualRcsReg(this.mContext);
        if (SimUtil.isDualIMS()) {
            handleAdsChangeOnDualIms();
        }
    }

    void handleAdsChangeOnDualIms() {
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        updateRegistration(activeDataPhoneId, RegistrationConstants.UpdateRegiReason.ADS_CHANGED);
        Iterator<RegisterTask> it = SlotBasedConfig.getInstance(activeDataPhoneId).getRegistrationTasks().iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getPdnType() == 0 && next.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING)) {
                IMSLog.i(IRegistrationManager.LOG_TAG, activeDataPhoneId, "onActiveDataSubscriptionChanged: stopPdnConnectivity");
                stopPdnConnectivity(next.getPdnType(), next);
                next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                tryRegister(activeDataPhoneId);
            }
        }
        int oppositeSimSlot = SimUtil.getOppositeSimSlot(activeDataPhoneId);
        Iterator<RegisterTask> it2 = SlotBasedConfig.getInstance(oppositeSimSlot).getRegistrationTasks().iterator();
        while (it2.hasNext()) {
            RegisterTask next2 = it2.next();
            if (RegistrationUtils.isCmcProfile(next2.getProfile()) && next2.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && (next2.getProfile().getCmcType() == 2 || next2.getRegistrationRat() != 18)) {
                next2.setReason("ADS change");
                next2.setDeregiReason(35);
                tryDeregisterInternal(next2, true, false);
                IMSLog.i(IRegistrationManager.LOG_TAG, oppositeSimSlot, "onActiveDataSubscriptionChanged: Cmc deregister");
            } else if (next2.getPdnType() == 0 && next2.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING)) {
                IMSLog.i(IRegistrationManager.LOG_TAG, oppositeSimSlot, "onActiveDataSubscriptionChanged: stopPdnConnectivity");
                stopPdnConnectivity(next2.getPdnType(), next2);
                next2.setState(RegistrationConstants.RegisterTaskState.IDLE);
                tryRegister(oppositeSimSlot);
            }
            if (next2.getPdnType() == 11) {
                next2.getGovernor().onAdsChanged(activeDataPhoneId);
            }
        }
        if (RcsUtils.DualRcs.isRegAllowed(this.mContext, oppositeSimSlot)) {
            return;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, oppositeSimSlot, "ADS set to other SIM, dual rcs not supported, dereg previous ads rcs.");
        Iterator<RegisterTask> it3 = SlotBasedConfig.getInstance(oppositeSimSlot).getRegistrationTasks().iterator();
        while (it3.hasNext()) {
            RegisterTask next3 = it3.next();
            if (next3.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && next3.isRcsOnly()) {
                next3.setReason("ADS change");
                updateRegistration(next3, RegistrationConstants.UpdateRegiReason.ADS_CHANGED);
            }
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationManagerInternal
    protected void onDelayedDeregister(RegisterTask registerTask) {
        this.mHandler.removeMessages(128);
        registerTask.getGovernor().runDelayedDeregister();
    }

    @Override // com.sec.internal.ims.core.RegistrationManagerInternal
    protected void notifyImsNotAvailable(RegisterTask registerTask, boolean z, boolean z2) {
        ImsRegistrationError imsRegistrationError;
        if (this.mCallState != 0) {
            Log.i(IRegistrationManager.LOG_TAG, "ignore notifyImsNotAvailable in call");
            return;
        }
        if ((registerTask.getMno().isKor() || registerTask.getMno() == Mno.DOCOMO) && !registerTask.mGovernor.needImsNotAvailable()) {
            return;
        }
        if (z2) {
            this.mEventLog.logAndAdd("notifyImsNotAvailable: Permanent blocked");
            imsRegistrationError = new ImsRegistrationError(0, "", 81, 33);
        } else {
            imsRegistrationError = new ImsRegistrationError(0, "", 72, 32);
        }
        if (!SlotBasedConfig.getInstance(registerTask.getPhoneId()).isNotifiedImsNotAvailable() || z) {
            SimpleEventLog simpleEventLog = this.mEventLog;
            StringBuilder sb = new StringBuilder();
            sb.append("notifyImsNotAvailable: UserAgent: ");
            sb.append(registerTask.mObject == null ? "null" : "exist");
            sb.append(", force: ");
            sb.append(z);
            sb.append(", task: ");
            sb.append(registerTask.getState());
            sb.append(", reason: ");
            sb.append(registerTask.getNotAvailableReason());
            simpleEventLog.logAndAdd(sb.toString());
            registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_IMS_NOT_AVAILABLE);
            ImsRegistration build = ImsRegistration.getBuilder().setHandle(-1).setImsProfile(new ImsProfile(registerTask.getProfile())).setServices(registerTask.getProfile().getAllServiceSetFromAllNetwork()).setEpdgStatus(this.mPdnController.isEpdgConnected(registerTask.getPhoneId())).setPdnType(registerTask.getPdnType()).setUuid(getUuid(registerTask.getPhoneId(), registerTask.getProfile())).setInstanceId(getInstanceId(registerTask.getPhoneId(), registerTask.getPdnType(), registerTask.getProfile())).setNetwork(registerTask.getNetworkConnected()).setRegiRat(SlotBasedConfig.getInstance(registerTask.getPhoneId()).getNetworkEvent().network).setPhoneId(registerTask.getPhoneId()).build();
            if (registerTask.getUserAgent() == null || registerTask.getNotAvailableReason() == 1) {
                notifyImsRegistration(build, false, registerTask, imsRegistrationError);
                makeThrottleforImsNotAvailable(registerTask);
            }
            if (registerTask.getUserAgent() != null) {
                if (registerTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                    registerTask.setDeregiReason(72);
                    makeThrottleforImsNotAvailable(registerTask);
                    tryDeregisterInternal(registerTask, true, registerTask.getNotAvailableReason() == 1);
                } else if (registerTask.getNotAvailableReason() != 1) {
                    ImsRegistration imsRegistration = registerTask.getImsRegistration();
                    if (imsRegistration != null) {
                        build = imsRegistration;
                    }
                    notifyImsRegistration(build, false, registerTask, imsRegistrationError);
                    makeThrottleforImsNotAvailable(registerTask);
                }
            }
            SlotBasedConfig.getInstance(registerTask.getPhoneId()).setNotifiedImsNotAvailable(true);
            registerTask.clearNotAvailableReason();
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationManagerInternal
    protected void notifyImsNotAvailable(RegisterTask registerTask, boolean z) {
        notifyImsNotAvailable(registerTask, z, false);
    }

    void makeThrottleforImsNotAvailable(RegisterTask registerTask) {
        if (!registerTask.getGovernor().needImsNotAvailable() || this.mPdnController.isEpsOnlyReg(registerTask.getPhoneId())) {
            return;
        }
        int i = SemSystemProperties.getInt(ImsConstants.SystemProperties.LTE_VOICE_STATUS, -1);
        IMSLog.i(IRegistrationManager.LOG_TAG, "makeThrottleforImsNotAvailable: lteVoiceStatus = " + i);
        if (i != 1) {
            return;
        }
        this.mEventLog.logAndAdd("makeThrottleforImsNotAvailable, combined with csfb supported");
        registerTask.getGovernor().makeThrottle();
        registerTask.getGovernor().throttleforImsNotAvailable();
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateRegistrationBySSAC(int i, boolean z) {
        int i2;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateRegistrationBySSAC:[" + i + "]");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null || iSimManager.getSimMno() != Mno.VZW || Boolean.parseBoolean(SemSystemProperties.get("ro.ril.svlte1x"))) {
            return;
        }
        boolean isSsacEnabled = SlotBasedConfig.getInstance(i).isSsacEnabled();
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateRegistrationBySSAC : " + isSsacEnabled + " -> " + z);
        if (!z) {
            this.mHandler.removeMessages(121, Integer.valueOf(i));
        }
        if (isSsacEnabled != z) {
            this.mHandler.removeMessages(121, Integer.valueOf(i));
            if (z) {
                Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        i2 = 0;
                        break;
                    }
                    RegisterTask next = it.next();
                    if (ImsProfile.hasVolteService(next.getProfile()) && next.getState() == RegistrationConstants.RegisterTaskState.REGISTERED && NetworkUtil.is3gppPsVoiceNetwork(next.getRegistrationRat())) {
                        i2 = DmConfigHelper.readInt(this.mContext, "tvolte_hys_timer", 60, i).intValue() * 1000;
                        break;
                    }
                }
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateRegistrationBySSAC : registration will be started after " + i2 + "ms.");
                RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(121, 1, 0, Integer.valueOf(i)), (long) i2);
                return;
            }
            RegistrationManagerHandler registrationManagerHandler2 = this.mHandler;
            registrationManagerHandler2.sendMessage(registrationManagerHandler2.obtainMessage(121, 0, 0, Integer.valueOf(i)));
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateTelephonyCallStatus(int i, int i2) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateTelephonyCallStatus: " + i2);
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(33, i, i2, null));
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isSelfActivationRequired(int i) {
        boolean z;
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                if (it.next().getGovernor().getPcoType() == RegistrationGovernor.PcoType.PCO_SELF_ACTIVATION) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        Log.d(IRegistrationManager.LOG_TAG, "isSelfActivationRequired = " + z);
        return z;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void startEmergencyRegistration(int i, Message message, int i2) {
        this.mPdnController.setEmergencyQualifiedNetowrk(i, i2);
        startEmergencyRegistrationInternal(i, message);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void startEmergencyRegistration(int i, Message message) {
        startEmergencyRegistrationInternal(i, message);
    }

    private void startEmergencyRegistrationInternal(int i, Message message) {
        ImsProfile imsProfile;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "startEmergencyRegistration:");
        ISimManager iSimManager = this.mSimManagers.get(i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (iSimManager == null || pendingRegistrationInternal == null) {
            return;
        }
        if (this.mHandler.hasMessages(10)) {
            this.mHasSilentE911 = message;
            this.mPhoneIdForSilentE911 = i;
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "startEmergencyRegistration: retry after previous stopEmergencyRegistration");
            return;
        }
        if (SlotBasedConfig.getInstance(i).getIconManager() != null) {
            SlotBasedConfig.getInstance(i).getIconManager().setDuringEmergencyCall(true);
        }
        Iterator it = pendingRegistrationInternal.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            RegisterTask registerTask = (RegisterTask) it.next();
            if (registerTask.getProfile().hasEmergencySupport()) {
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "startEmergencyRegistration: EmergencyRegistration state=" + registerTask.mState);
                registerTask.getGovernor().releaseThrottle(15);
                if (registerTask.getMno().isAus() && (imsProfile = this.mAuEmergencyProfile.get(i)) != null && imsProfile.getId() != registerTask.getProfile().getId()) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "Aus Emergency case, remove emergency task if old and new profile ID are different.");
                    stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                    this.mRegStackIf.removeUserAgent(registerTask);
                    pendingRegistrationInternal.remove(registerTask);
                } else if (registerTask.getMno() == Mno.KDDI && registerTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTED)) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "remove emergency pending RegiTask.");
                    pendingRegistrationInternal.remove(registerTask);
                } else {
                    RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERED;
                    RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.EMERGENCY;
                    if (registerTask.isOneOf(registerTaskState, registerTaskState2)) {
                        if (registerTask.mState == registerTaskState2 && registerTask.mMno == Mno.GENERIC_IR92 && registerTask.getUserAgent() == null) {
                            Log.d(IRegistrationManager.LOG_TAG, "startEmergencyRegistration: Trigger New Register with same task");
                            registerTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
                            registerTask.setResultMessage(message);
                            pendingRegistrationInternal.remove(registerTask);
                            this.mHandler.requestTryEmergencyRegister(registerTask);
                            return;
                        }
                        Log.d(IRegistrationManager.LOG_TAG, "startEmergencyRegistration: already registered.");
                        message.sendToTarget();
                        return;
                    }
                    if (registerTask.getState() == RegistrationConstants.RegisterTaskState.DEREGISTERING) {
                        IMSLog.i(IRegistrationManager.LOG_TAG, i, "startEmergencyRegistration: DeRegistering Mode. Deregister current and start new registration.");
                        if (!this.mHandler.hasMessages(107, registerTask)) {
                            return;
                        }
                        this.mHandler.removeMessages(107, registerTask);
                        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(107, registerTask));
                    } else {
                        if (registerTask.getResultMessage() != null) {
                            registerTask.getResultMessage().sendToTarget();
                        }
                        registerTask.setResultMessage(message);
                        return;
                    }
                }
            }
        }
        if (iSimManager.getDevMno().isAus()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "startEmergencyRegistration: refresh Emergency profile...");
            refreshAuEmergencyProfile(i);
        }
        ImsProfile emergencyProfile = getEmergencyProfile(i);
        if (emergencyProfile != null) {
            tryEmergencyRegister(i, emergencyProfile, message, iSimManager.hasNoSim());
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void refreshAuEmergencyProfile(int i) {
        this.mAuEmergencyProfile.delete(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void stopEmergencyRegistration(int i) {
        ImsProfile imsProfile;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "stopEmergencyRegistration:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().hasEmergencySupport()) {
                    imsProfile = next.mProfile;
                    break;
                }
            }
        }
        imsProfile = null;
        if (imsProfile != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("id", imsProfile.getId());
            bundle.putBoolean("explicitDeregi", true);
            bundle.putInt("phoneId", i);
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(10, bundle));
            if (!this.mSimManagers.get(i).hasNoSim()) {
                imsProfile.setUicclessEmergency(false);
            }
        }
        if (SlotBasedConfig.getInstance(i).getIconManager() != null) {
            SlotBasedConfig.getInstance(i).getIconManager().setDuringEmergencyCall(false);
        }
        if (imsProfile == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "stopEmergencyRegistration: profile not found.");
            startSilentEmergency();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void stopEmergencyPdnOnly(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "stopEmergencyPdnOnly:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().hasEmergencySupport()) {
                    stopPdnConnectivity(next.getPdnType(), next);
                    next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setOwnCapabilities(int i, Capabilities capabilities) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(31, i, 0, capabilities));
    }

    protected void updateGeolocation(LocationInfo locationInfo, boolean z) {
        ISmsServiceModule smsServiceModule;
        IGeolocationController iGeolocationController;
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                int supportedGeolocationPhase = next.getProfile().getSupportedGeolocationPhase();
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateGeolocation: " + next.getProfile().getName() + ", geoLocPhase: " + supportedGeolocationPhase);
                if (getNetworkEvent(i) != null) {
                    if (supportedGeolocationPhase >= 2) {
                        this.mRegStackIf.updateGeolocation(next, locationInfo);
                    }
                    if (next.getGovernor().onUpdateGeolocation(locationInfo) && (iGeolocationController = this.mGeolocationCon) != null) {
                        iGeolocationController.stopPeriodicLocationUpdate(i);
                    }
                }
            }
        }
        Log.i(IRegistrationManager.LOG_TAG, "updateGeolocation: CountryCode : " + locationInfo.mCountry + ", silentUpdate : " + z);
        IVolteServiceModule iVolteServiceModule = this.mVsm;
        if (iVolteServiceModule != null && !z) {
            iVolteServiceModule.onUpdateGeolocation();
        }
        IServiceModuleManager serviceModuleManager = this.mImsFramework.getServiceModuleManager();
        if (serviceModuleManager == null || (smsServiceModule = serviceModuleManager.getSmsServiceModule()) == null) {
            return;
        }
        smsServiceModule.onUpdateGeolocation();
    }

    protected void updateRat(RegisterTask registerTask, int i) {
        this.mRegStackIf.updateRat(registerTask, i);
    }

    protected void updateTimeInPlani(int i, boolean z) {
        if (z) {
            this.mRegStackIf.removePreviousLastPani(i);
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                this.mRegStackIf.updateTimeInPlani(i, it.next().getProfile());
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void handleInactiveCiaOnMobileConnected(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (!next.isRcsOnly()) {
                    this.mRegStackIf.handleInactiveCiaOnMobileConnected(i, next);
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void handleInactiveCiaOnMobileDisconnected(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (!next.isRcsOnly()) {
                    this.mRegStackIf.handleInactiveCiaOnMobileDisconnected(i, next);
                }
            }
        }
    }

    void notifyGeolocationUpdate(LocationInfo locationInfo, boolean z) {
        IMSLog.i(IRegistrationManager.LOG_TAG, "notifyGeolocationUpdate, silentUpdate = " + z);
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(51, z ? 1 : 0, 0, locationInfo));
        if (z) {
            return;
        }
        this.mHandler.sendEmptyMessage(40);
    }

    protected void sendNrDisableDuringEpdgCall(int i) {
        IVolteServiceModule volteServiceModule = this.mImsFramework.getServiceModuleManager().getVolteServiceModule();
        if (volteServiceModule == null || volteServiceModule.getEpdgCallCount(i) <= 0 || !DeviceUtil.isSupportNrMode(this.mTelephonyManager, i)) {
            return;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "sendNrDisableDuringEpdgCall, set semSetNrMode: 4");
        this.mTelephonyManager.semSetNrMode(i, 4);
    }

    protected void onFlightModeChanged(boolean z) {
        if (z) {
            for (int i = 0; i < this.mSimManagers.size(); i++) {
                Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
                while (it.hasNext()) {
                    RegisterTask next = it.next();
                    if (next.getState() == RegistrationConstants.RegisterTaskState.REGISTERING) {
                        this.mRegStackIf.removeUserAgent(next);
                        next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                    }
                    next.clearSuspended();
                }
                suspendRegister(false, i);
            }
            return;
        }
        this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManagerBase$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationManagerBase.this.lambda$onFlightModeChanged$0((ISimManager) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFlightModeChanged$0(ISimManager iSimManager) {
        int simSlotIndex = iSimManager.getSimSlotIndex();
        if (iSimManager.getSimMno() == Mno.VODAFONE_UK || iSimManager.getSimMno() == Mno.ORANGE_SPAIN) {
            sendNrDisableDuringEpdgCall(simSlotIndex);
        }
        SlotBasedConfig.getInstance(simSlotIndex).setNotifiedImsNotAvailable(false);
        if (iSimManager.getSimMno().isOneOf(Mno.VELCOM_BY, Mno.SBERBANK_RUSSIA, Mno.MTS_RUSSIA, Mno.MEGAFON_RUSSIA, Mno.BEELINE_RUSSIA, Mno.TMOBILE)) {
            updateTimeInPlani(simSlotIndex, true);
        }
        if (iSimManager.getSimMno().isKor()) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(simSlotIndex).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getGovernor().isMobilePreferredForRcs() && NetworkUtil.isMobileDataOn(this.mContext) && NetworkUtil.isMobileDataPressed(this.mContext) && this.mPdnController.isWifiConnected()) {
                    this.mNetEvtCtr.isPreferredPdnForRCSRegister(next, simSlotIndex, true);
                }
            }
        }
        IMSLogTimer.setLatchStartTime(simSlotIndex);
        tryRegister(iSimManager.getSimSlotIndex());
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setSilentLogEnabled(boolean z) {
        this.mRegStackIf.setSilentLogEnabled(z);
    }

    public void onDnsResponse(List<String> list, int i, int i2) {
        IMSLog.d(IRegistrationManager.LOG_TAG, i2, "onDnsResponse, ipAddr size " + list.size() + ", port " + i);
        Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i2).getRegistrationTasks().iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getState() == RegistrationConstants.RegisterTaskState.RESOLVING) {
                if (next.getMno().isKor() && !next.isRcsOnly()) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i2, "onDnsResponse: profile not match!! " + next.getProfile().getName() + " port: " + i);
                } else {
                    next.setState(RegistrationConstants.RegisterTaskState.RESOLVED);
                    list = next.getGovernor().checkValidPcscfIp(list);
                    if (list.isEmpty() || i > 65535) {
                        this.mAresLookupRequired = false;
                    } else {
                        next.getGovernor().updatePcscfIpList(list);
                        next.getProfile().setSipPort(i);
                        next.setDnsQueryRetryCount(0);
                    }
                    if (next.isRcsOnly() && list.isEmpty()) {
                        String acsServerType = ConfigUtil.getAcsServerType(next.getPhoneId());
                        if (((ConfigUtil.isRcsEur(next.getMno()) || next.getMno().isKor() || ConfigUtil.isRcsChn(next.getMno())) && next.getRegistrationRat() == 18) || ImsConstants.RCS_AS.JIBE.equals(acsServerType)) {
                            int dnsQueryRetryCount = next.getDnsQueryRetryCount();
                            IMSLog.s(IRegistrationManager.LOG_TAG, "onDnsResponse: retrycount=" + dnsQueryRetryCount);
                            if (dnsQueryRetryCount <= 5) {
                                next.setDnsQueryRetryCount(dnsQueryRetryCount + 1);
                                this.mHandler.sendTryRegister(next.getPhoneId(), 10000L);
                            }
                        }
                    }
                    if (!list.isEmpty()) {
                        this.mHandler.sendTryRegister(next.getPhoneId());
                    }
                }
            }
        }
    }

    public void finishThreadForGettingHostAddress(Thread thread, int i) {
        if (thread != null && thread.isAlive()) {
            thread.interrupt();
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, "getHostAddress time out or failed");
        RegisterTask registerTask = getRegisterTask(i);
        if (registerTask == null || registerTask.getState() != RegistrationConstants.RegisterTaskState.RESOLVING) {
            return;
        }
        registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
        int dnsQueryRetryCount = registerTask.getDnsQueryRetryCount();
        IMSLog.s(IRegistrationManager.LOG_TAG, "onDnsResponse: retrycount=" + dnsQueryRetryCount);
        if (dnsQueryRetryCount <= 5) {
            registerTask.setDnsQueryRetryCount(dnsQueryRetryCount + 1);
            this.mHandler.sendTryRegister(registerTask.getPhoneId(), 10000L);
        }
    }

    public void registerDmListener(IImsDmConfigListener iImsDmConfigListener) {
        this.mHandler.registerDmListener(iImsDmConfigListener);
    }

    public void unregisterDmListener(IImsDmConfigListener iImsDmConfigListener) {
        this.mHandler.unregisterDmListener(iImsDmConfigListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void setRegiConfig(int i) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(RegistrationEvents.EVENT_UPDATE_REGI_CONFIG, Integer.valueOf(i)));
    }

    public void updateRegiConfig(int i) {
        this.mRcsPolicyManager.updateRegiConfig(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.StringBuilder] */
    private boolean isHoEnable(int i) {
        int hoEnable = SlotBasedConfig.getInstance(i).getHoEnable();
        ?? r0 = hoEnable;
        if (hoEnable == -1) {
            boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "EPDGHANDOVERENABLE", false);
            setHoEnable(i, z);
            r0 = z;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "isHoEnable: " + r0);
        return r0 == 1;
    }

    private void setHoEnable(int i, boolean z) {
        SlotBasedConfig.getInstance(i).setHoEnable(z);
        ImsSharedPrefHelper.save(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "EPDGHANDOVERENABLE", z);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "setHoEnable: " + z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.StringBuilder] */
    private boolean isOnlyEpsFallback(int i) {
        int onlyEpsFallback = SlotBasedConfig.getInstance(i).getOnlyEpsFallback();
        ?? r0 = onlyEpsFallback;
        if (onlyEpsFallback == -1) {
            boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "ONLYEPSFALLBACK", false);
            setOnlyEpsFallback(i, z);
            r0 = z;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "isOnlyEpsFallback: " + r0);
        return r0 == 1;
    }

    private void setOnlyEpsFallback(int i, boolean z) {
        SlotBasedConfig.getInstance(i).setOnlyEpsFallback(z);
        ImsSharedPrefHelper.save(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "ONLYEPSFALLBACK", z);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "setOnlyEpsFallback: " + z);
    }

    public boolean isNrPreferredMode(int i) {
        boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "NRPREFERREDMODE", false);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "nrPreferredMode: " + z);
        return z;
    }

    private void setNrPreferredMode(int i, boolean z) {
        ImsSharedPrefHelper.save(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "NRPREFERREDMODE", z);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "setNrPreferredMode: " + z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.StringBuilder] */
    public boolean isNrSaMode(int i) {
        int nrSaMode = SlotBasedConfig.getInstance(i).getNrSaMode();
        ?? r0 = nrSaMode;
        if (nrSaMode == -1) {
            boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "NRSAMODE", true);
            setNrSaMode(i, z);
            r0 = z;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "nrSaMode : " + r0);
        return r0 == 1;
    }

    private void setNrSaMode(int i, boolean z) {
        SlotBasedConfig.getInstance(i).setNrSaMode(z);
        ImsSharedPrefHelper.save(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "NRSAMODE", z);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "setNrSaMode : " + z);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void supportVoWiFiDisable5GSA(int r10, boolean r11, boolean r12, boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationManagerBase.supportVoWiFiDisable5GSA(int, boolean, boolean, boolean, boolean):void");
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isSupportVoWiFiDisable5GSA(int i) {
        if (!this.mSimManagers.get(i).getSimMno().isEmeasewaoce()) {
            return false;
        }
        if ("ENABLE".equals(this.mImsFramework.getString(i, GlobalSettingsConstants.Call.VOWIFI_5GSA_MODE, "ENABLE"))) {
            boolean z = this.mImsFramework.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_VOWIFI_DEPRIORITIZE_NR5G, false);
            boolean z2 = this.mImsFramework.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_DISABLE_VOWIFI_5GSA, false);
            if (!z && !z2) {
                return false;
            }
        }
        return isHoEnable(i) && isOnlyEpsFallback(i) && isNrPreferredMode(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateEpsFbInImsCall(int i) {
        boolean isHoEnable = isHoEnable(i);
        boolean z = getNetworkEvent(i).network != 20;
        boolean isNrPreferredMode = isNrPreferredMode(i);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateEpsFbInImsCall: onlyEpsFb = " + z);
        supportVoWiFiDisable5GSA(i, z, isHoEnable, isNrPreferredMode, false);
    }

    public void updateEpdgHandoverEnableChanged(int i, boolean z) {
        boolean isOnlyEpsFallback = isOnlyEpsFallback(i);
        boolean isNrPreferredMode = isNrPreferredMode(i);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateEpdgHandoverEnableChanged: onlyEpsFb = " + isOnlyEpsFallback + " , nrPreferredMode = " + isNrPreferredMode + " , hoEnable = " + z);
        supportVoWiFiDisable5GSA(i, isOnlyEpsFallback, z, isNrPreferredMode, false);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateNrPreferredMode(int i, boolean z) {
        boolean isHoEnable = isHoEnable(i);
        boolean isOnlyEpsFallback = isOnlyEpsFallback(i);
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateNrPreferredMode: onlyEpsFb = " + isOnlyEpsFallback + " , nrPreferredMode = " + z + " , hoEnable = " + isHoEnable);
        supportVoWiFiDisable5GSA(i, isOnlyEpsFallback, isHoEnable, z, false);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateNrSaMode(int i, boolean z) {
        boolean isHoEnable = isHoEnable(i);
        boolean isOnlyEpsFallback = isOnlyEpsFallback(i);
        boolean isNrPreferredMode = isNrPreferredMode(i);
        if (isNrSaMode(i) != z) {
            setNrSaMode(i, z);
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "updateNrSaMode: onlyEpsFb = " + isOnlyEpsFallback + " , nrPreferredMode = " + isNrPreferredMode + " , hoEnable = " + isHoEnable + " , nrSaMode = " + z);
            supportVoWiFiDisable5GSA(i, isOnlyEpsFallback, isHoEnable, isNrPreferredMode, true);
        }
    }

    void postponeUpdateRegistrationByDmaChange(int i) {
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(139, Integer.valueOf(i)), 30000L);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void updateVo5gIconStatus(int i, int i2) {
        if (SlotBasedConfig.getInstance(i).getIconManager() != null) {
            SlotBasedConfig.getInstance(i).getIconManager().setVo5gIcon(i2);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void handleE911RegiTimeOut(IRegisterTask iRegisterTask) {
        Log.i(IRegistrationManager.LOG_TAG, "handleE911RegiTimeOut");
        iRegisterTask.getGovernor().onRegistrationError(SipErrorBase.SIP_TIMEOUT, 1000L, true);
    }

    public void checkUnProcessedVoLTEState(int i) {
        Optional.ofNullable(RegistrationUtils.getPendingRegistrationInternal(i)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManagerBase$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationManagerBase.lambda$checkUnProcessedVoLTEState$1((SlotBasedConfig.RegisterTaskList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkUnProcessedVoLTEState$1(SlotBasedConfig.RegisterTaskList registerTaskList) {
        registerTaskList.stream().map(new NetworkEventController$$ExternalSyntheticLambda1()).forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManagerBase$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((IRegistrationGovernor) obj).checkUnProcessedVoLTEState();
            }
        });
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public boolean isSupportVoWiFiDisable5GSAFromConfiguration(int i) {
        if ("ENABLE".equals(this.mImsFramework.getString(i, GlobalSettingsConstants.Call.VOWIFI_5GSA_MODE, "ENABLE"))) {
            return this.mImsFramework.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_VOWIFI_DEPRIORITIZE_NR5G, false) || this.mImsFramework.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_DISABLE_VOWIFI_5GSA, false);
        }
        return true;
    }
}
