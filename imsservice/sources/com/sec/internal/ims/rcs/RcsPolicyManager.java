package com.sec.internal.ims.rcs;

import android.content.Context;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.UserConfiguration;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.config.RcsConfig;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsServiceConnector;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.RegiConfig;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.ims.core.RcsRegistration;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.handler.secims.ResipRegistrationManager$$ExternalSyntheticLambda0;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.MnoStrategyCreator;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.log.IMSLog;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class RcsPolicyManager extends Handler implements IRcsPolicyManager {
    private static final int EVENT_IMS_GLOBAL_SETTINGS_CHANGED = 10;
    private static final int EVENT_IMS_SWITCHES_CHANGED = 11;
    private static final int EVENT_RCS_ALLOWED_CHANGED = 9;
    private static final int EVENT_RCS_ROAMING_PREF = 8;
    private static final int EVT_SIM_READY = 0;
    private static final int EVT_SIM_REFRESH = 3;
    private static Map<Integer, IMnoStrategy> mRcsStrategy = new ConcurrentHashMap();
    private static PhoneIdKeyMap<RegiConfig> mRegiConfig;
    private static UriMatcher sUriMatcher;
    protected final Context context;
    private ContentObserver mRcsContentObserver;
    private IRegistrationManager mRegMgr;
    private List<ISimManager> mSimManagers;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        ImsConstants.SystemSettings.addUri(uriMatcher, ImsConstants.SystemSettings.RCS_ROAMING_PREF, 8);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.RCS_ALLOWED_URI, 9);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_GLOBAL, 10);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_SWITCHES, 11);
    }

    public RcsPolicyManager(Looper looper, Context context, List list) {
        super(looper);
        this.mRcsContentObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.rcs.RcsPolicyManager.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
                if (uri.getFragment() != null) {
                    activeDataPhoneId = UriUtil.getSimSlotFromUri(uri);
                }
                int match = RcsPolicyManager.sUriMatcher.match(uri);
                IMSLog.i(IRcsPolicyManager.LOG_TAG, activeDataPhoneId, "onChange: match: " + match);
                switch (match) {
                    case 8:
                        RcsPolicyManager.this.onRcsRoamingPrefChanged(activeDataPhoneId);
                        break;
                    case 9:
                        RcsPolicyManager.this.onRCSAllowedChangedbyMDM();
                        break;
                    case 10:
                    case 11:
                        RcsPolicyManager.this.updateRcsStrategy(activeDataPhoneId);
                        break;
                }
            }
        };
        this.context = context;
        this.mSimManagers = list;
        mRegiConfig = new PhoneIdKeyMap<>(SimUtil.getPhoneCount(), null);
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            mRegiConfig.put(i, new RegiConfig(i, context));
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        for (ISimManager iSimManager : this.mSimManagers) {
            iSimManager.registerForSimReady(this, 0, null);
            iSimManager.registerForSimRefresh(this, 3, null);
        }
        this.context.getContentResolver().registerContentObserver(ImsConstants.SystemSettings.RCS_ROAMING_PREF.getUri(), false, this.mRcsContentObserver);
        this.context.getContentResolver().registerContentObserver(ImsConstants.SystemSettings.IMS_GLOBAL.getUri(), true, this.mRcsContentObserver);
        this.context.getContentResolver().registerContentObserver(ImsConstants.SystemSettings.IMS_SWITCHES.getUri(), true, this.mRcsContentObserver);
        mRcsStrategy.clear();
        for (ISimManager iSimManager2 : this.mSimManagers) {
            if (iSimManager2 != null) {
                mRcsStrategy.put(Integer.valueOf(iSimManager2.getSimSlotIndex()), new DefaultRCSMnoStrategy(this.context, iSimManager2.getSimSlotIndex()));
            }
        }
    }

    public void setRegistrationManager(IRegistrationManager iRegistrationManager) {
        this.mRegMgr = iRegistrationManager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.i(IRcsPolicyManager.LOG_TAG, "handleMessage:" + message.what);
        int i = message.what;
        if (i == 0 || i == 3) {
            updateRcsStrategy(((Integer) ((AsyncResult) message.obj).result).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRcsStrategy(int i) {
        IMSLog.i(IRcsPolicyManager.LOG_TAG, i, "updateRcsStrategy");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return;
        }
        mRcsStrategy.put(Integer.valueOf(i), MnoStrategyCreator.makeInstance(iSimManager.getSimMno(), i, this.context));
    }

    public static IMnoStrategy getRcsStrategy(int i) {
        return mRcsStrategy.get(Integer.valueOf(i));
    }

    public static boolean loadRcsSettings(int i, boolean z) {
        IMnoStrategy iMnoStrategy = mRcsStrategy.get(Integer.valueOf(i));
        if (iMnoStrategy == null) {
            return false;
        }
        return iMnoStrategy.loadRcsSettings(z);
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public boolean pendingRcsRegister(IRegisterTask iRegisterTask, List<IRegisterTask> list, int i) {
        IMSLog.i(IRcsPolicyManager.LOG_TAG, i, "pendingRcsRegister: mActiveDataPhoneId = " + SimUtil.getActiveDataPhoneId());
        if ((ConfigUtil.isRcsEur(iRegisterTask.getMno()) || ConfigUtil.isRcsChn(iRegisterTask.getMno())) && iRegisterTask.isRcsOnly() && !RcsUtils.DualRcs.isDualRcsReg() && i != SimUtil.getActiveDataPhoneId()) {
            return true;
        }
        return (ConfigUtil.isRcsChn(iRegisterTask.getMno()) || iRegisterTask.getMno().isKor()) && iRegisterTask.isRcsOnly() && isWaitingRcsDeregister(iRegisterTask, list, iRegisterTask.getPhoneId());
    }

    private boolean isWaitingRcsDeregister(IRegisterTask iRegisterTask, List<IRegisterTask> list, int i) {
        for (IRegisterTask iRegisterTask2 : list) {
            if (iRegisterTask2 != iRegisterTask && iRegisterTask2.isRcsOnly() && iRegisterTask2.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.DEREGISTERING)) {
                Log.i(IRcsPolicyManager.LOG_TAG, "isWaitingRcsDeregister: " + iRegisterTask2.getProfile().getName() + "(" + iRegisterTask2.getState() + ")");
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String getRcsPcscfAddress(ImsProfile imsProfile, int i) {
        String substring;
        IMSLog.d(IRcsPolicyManager.LOG_TAG, i, "getRcsPcscfAddress:");
        Bundle lboPcscfAddressAndIpType = mRegiConfig.get(i).getLboPcscfAddressAndIpType();
        String string = lboPcscfAddressAndIpType.getString("address");
        String string2 = lboPcscfAddressAndIpType.getString(ConfigConstants.ConfigTable.LBO_PCSCF_ADDRESS_TYPE);
        if (string != null) {
            int indexOf = string.indexOf(58);
            if (("ipv4".equalsIgnoreCase(string2) || "IP Address".equalsIgnoreCase(string2) || "FQDN".equalsIgnoreCase(string2)) && indexOf > 0) {
                imsProfile.setSipPort(Integer.parseInt(string.substring(indexOf + 1)));
                substring = string.substring(0, indexOf);
            } else {
                if ("ipv6".equalsIgnoreCase(string2)) {
                    int indexOf2 = string.indexOf(91);
                    int indexOf3 = string.indexOf(93);
                    int indexOf4 = string.indexOf("]:");
                    if (indexOf4 > 0) {
                        imsProfile.setSipPort(Integer.parseInt(string.substring(indexOf4 + 2)));
                    }
                    if (indexOf2 == 0 && indexOf3 > 0) {
                        substring = string.substring(indexOf2 + 1, indexOf3);
                    }
                }
                IMSLog.i(IRcsPolicyManager.LOG_TAG, i, "getPcscfAddresses: LBO-PCSCF=" + string + " port=" + imsProfile.getSipPort());
            }
            string = substring;
            IMSLog.i(IRcsPolicyManager.LOG_TAG, i, "getPcscfAddresses: LBO-PCSCF=" + string + " port=" + imsProfile.getSipPort());
        }
        return string;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String selectRcsDnsType(IRegisterTask iRegisterTask, List<String> list) {
        if (iRegisterTask.getProfile().getNeedIpv4Dns() && list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (NetworkUtil.isIPv4Address(it.next())) {
                    return "IPV4";
                }
            }
        }
        return "";
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String selectRcsTransportType(IRegisterTask iRegisterTask, String str) {
        if (!iRegisterTask.isRcsOnly()) {
            return str;
        }
        String rcsTransport = getRcsTransport(this.context, iRegisterTask.getPdnType(), iRegisterTask.getProfile(), iRegisterTask.getPhoneId());
        if ("udp-preferred".equals(rcsTransport)) {
            rcsTransport = "udp";
        }
        return rcsTransport.toUpperCase();
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String getRcsPrivateUserIdentity(String str, ImsProfile imsProfile, int i) {
        if (Mno.fromName(imsProfile.getMnoName()).isKor()) {
            return str;
        }
        IMSLog.i(IRcsPolicyManager.LOG_TAG, i, "RCS only");
        String privateUserIdentity = mRegiConfig.get(i).getPrivateUserIdentity();
        if (privateUserIdentity == null) {
            return str;
        }
        IMSLog.s(IRcsPolicyManager.LOG_TAG, i, "impi: " + privateUserIdentity);
        return privateUserIdentity;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String getRcsPublicUserIdentity(int i) {
        return mRegiConfig.get(i).getPublicUserIdentity();
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String getRcsHomeNetworkDomain(ImsProfile imsProfile, int i) {
        NetworkEvent networkEvent;
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        IConfigModule configModule = ImsRegistry.getConfigModule();
        String acsServerType = ConfigUtil.getAcsServerType(i);
        boolean z = (fromName == Mno.ATT && !ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(acsServerType)) || (ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(acsServerType) && !ImsProfile.hasRcsService(imsProfile));
        if (fromName == Mno.RJIL && (networkEvent = this.mRegMgr.getNetworkEvent(i)) != null) {
            z = ImsProfile.hasVolteService(imsProfile, networkEvent.network);
        }
        if (z || !imsProfile.getNeedAutoconfig() || !configModule.isValidAcsVersion(i)) {
            return "";
        }
        String homeNetworkDomain = mRegiConfig.get(i).getHomeNetworkDomain();
        IMSLog.d(IRcsPolicyManager.LOG_TAG, i, "Config Domain():" + homeNetworkDomain);
        return homeNetworkDomain;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public boolean isRcsRoamingPref(IRegisterTask iRegisterTask, boolean z) {
        int userConfig = UserConfiguration.getUserConfig(this.context, iRegisterTask.getPhoneId(), "rcs_roaming_pref", 2);
        Mno mno = iRegisterTask.getMno();
        NetworkEvent networkEvent = this.mRegMgr.getNetworkEvent(iRegisterTask.getPhoneId());
        if (networkEvent == null || ImsProfile.hasVolteService(iRegisterTask.getProfile(), networkEvent.network) || !ConfigUtil.isRcsEur(mno) || !z || userConfig != 0) {
            return true;
        }
        IMSLog.i(IRcsPolicyManager.LOG_TAG, iRegisterTask.getPhoneId(), "not allowed as per RCS preference");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public void updateDualRcsPcscfIp(IRegisterTask iRegisterTask, List<String> list) {
        if (iRegisterTask.isRcsOnly() && RcsUtils.DualRcs.isDualRcsReg()) {
            String currentPcscfIp = iRegisterTask.getGovernor().getCurrentPcscfIp();
            boolean checkDualRcsPcscfIp = checkDualRcsPcscfIp(iRegisterTask);
            IMSLog.i(IRcsPolicyManager.LOG_TAG, iRegisterTask.getPhoneId(), "checkDualRcsPcscf: " + checkDualRcsPcscfIp + ", curPcscfIp: " + currentPcscfIp);
            if (checkDualRcsPcscfIp) {
                iRegisterTask.getGovernor().increasePcscfIdx();
                if (list != null) {
                    iRegisterTask.getGovernor().updatePcscfIpList(list);
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public ImsUri.UriType getRcsNetworkUriType(int i, String str, boolean z) {
        return RcsConfigurationHelper.getNetworkUriType(this.context, str, z, i);
    }

    private boolean checkDualRcsPcscfIp(IRegisterTask iRegisterTask) {
        String currentPcscfIp = iRegisterTask.getGovernor().getCurrentPcscfIp();
        int oppositeSimSlot = SimUtil.getOppositeSimSlot(iRegisterTask.getPhoneId());
        List<IRegisterTask> pendingRegistration = this.mRegMgr.getPendingRegistration(oppositeSimSlot);
        if (pendingRegistration == null) {
            return false;
        }
        for (IRegisterTask iRegisterTask2 : pendingRegistration) {
            if (iRegisterTask2.isRcsOnly() && (iRegisterTask2.getState() == RegistrationConstants.RegisterTaskState.REGISTERED || iRegisterTask2.getState() == RegistrationConstants.RegisterTaskState.REGISTERING)) {
                if (RcsUtils.UiUtils.isSameRcsOperator(iRegisterTask.getProfile(), iRegisterTask2.getProfile())) {
                    String currentPcscfIp2 = iRegisterTask2.getGovernor().getCurrentPcscfIp();
                    IMSLog.i(IRcsPolicyManager.LOG_TAG, oppositeSimSlot, "checkDualRcsPcscfIp: pcscf: " + currentPcscfIp2);
                    if (currentPcscfIp.equals(currentPcscfIp2)) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public String changeRcsIfacename(IRegisterTask iRegisterTask, IPdnController iPdnController, String str) {
        NetworkInterface byInetAddress;
        try {
            if (NetworkUtil.isIPv4Address(str)) {
                LinkPropertiesWrapper linkProperties = iPdnController.getLinkProperties(iRegisterTask);
                if (linkProperties == null) {
                    Log.i(IRcsPolicyManager.LOG_TAG, "changeIfacename: LinkPropertiesWrapper null");
                    return null;
                }
                List<InetAddress> allAddresses = linkProperties.getAllAddresses();
                if (allAddresses != null && !allAddresses.isEmpty()) {
                    for (InetAddress inetAddress : allAddresses) {
                        if (NetworkUtil.isIPv4Address(inetAddress.getHostAddress()) && (byInetAddress = NetworkInterface.getByInetAddress(inetAddress)) != null) {
                            String name = byInetAddress.getName();
                            Log.i(IRcsPolicyManager.LOG_TAG, "register: Change iface = " + name);
                            return name;
                        }
                    }
                }
            }
        } catch (SocketException e) {
            Log.d(IRcsPolicyManager.LOG_TAG, e.getMessage());
        }
        String interfaceName = iPdnController.getInterfaceName(iRegisterTask);
        Log.i(IRcsPolicyManager.LOG_TAG, "register: changeIfacename : no change - " + interfaceName);
        return interfaceName;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public Bundle getRcsConfigForUserAgent(ImsProfile imsProfile, Mno mno, int i, int i2, ImConfig imConfig, RcsRegistration.Builder builder) {
        String password;
        String str;
        String transportPsMediaRoaming;
        boolean z;
        String str2;
        Bundle bundle = new Bundle();
        String transportName = imsProfile.getTransportName();
        synchronized (IRcsPolicyManager.class) {
            String str3 = ((ImConstants.ImMsgTech) Optional.ofNullable(imConfig).map(new ResipRegistrationManager$$ExternalSyntheticLambda0()).orElse(ImConstants.ImMsgTech.SIMPLE_IM)).toString();
            Integer valueOf = Integer.valueOf(imsProfile.getQValue());
            String acsServerType = ConfigUtil.getAcsServerType(i2);
            RegiConfig regiConfig = mRegiConfig.get(i2);
            if (TextUtils.isEmpty(imsProfile.getPassword())) {
                password = regiConfig.getAppUserPwd(imsProfile.getPassword());
                builder.setPassword(password);
                if (ImsConstants.RCS_AS.JIBE.equals(acsServerType) || ImsConstants.RCS_AS.SEC.equals(acsServerType) || ImsConstants.RCS_AS.INTEROP.equals(acsServerType)) {
                    password = ConfigUtil.decryptParam(password, imsProfile.getPassword());
                }
                IMSLog.s(IRcsPolicyManager.LOG_TAG, i2, "getRcsConfigForUserAgent: Rcs Config password=" + password);
            } else {
                password = imsProfile.getPassword();
                IMSLog.s(IRcsPolicyManager.LOG_TAG, i2, "getRcsConfigForUserAgent: profile password=" + password);
            }
            String appRealm = (mno != Mno.RJIL || ConfigUtil.isRcsOnly(imsProfile)) ? regiConfig.getAppRealm() : "";
            if (i == 1) {
                transportPsMediaRoaming = regiConfig.getTransportWifiMedia();
                str = transportName;
            } else {
                str = transportName;
                transportPsMediaRoaming = (ImsProfile.isRcsUpProfile(ConfigUtil.getRcsProfileWithFeature(this.context, i2, imsProfile)) && ((TelephonyManager) this.context.getSystemService(PhoneConstants.PHONE_KEY)).isNetworkRoaming() && !ImsConstants.RCS_AS.JIBE.equals(acsServerType)) ? regiConfig.getTransportPsMediaRoaming() : regiConfig.getTransportPsMedia();
            }
            IMSLog.s(IRcsPolicyManager.LOG_TAG, i2, "msrpTransType=(" + transportPsMediaRoaming + ")");
            if (ImsProfile.hasVolteService(imsProfile)) {
                z = false;
                str2 = str;
            } else {
                str2 = getRcsTransport(this.context, i, imsProfile, i2);
                z = regiConfig.getKeepAlive();
            }
            if (ConfigUtil.getAutoconfigSourceWithFeature(i2, 0) == 0 && ConfigUtil.isRcsChn(mno)) {
                str3 = "CPM";
            }
            int timer1 = imsProfile.getTimer1();
            int timer2 = imsProfile.getTimer2();
            int timer4 = imsProfile.getTimer4();
            if (ConfigUtil.isRcsOnly(imsProfile)) {
                String qValue = regiConfig.getQValue();
                if (!TextUtils.isEmpty(qValue)) {
                    try {
                        valueOf = Integer.valueOf(Float.valueOf(Float.parseFloat(qValue) * 1000.0f).intValue());
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                }
                timer1 = regiConfig.getTimer1(imsProfile.getTimer1());
                timer2 = regiConfig.getTimer2(imsProfile.getTimer2());
                timer4 = regiConfig.getTimer4(imsProfile.getTimer4());
            }
            int regRetryBaseTime = regiConfig.getRegRetryBaseTime(imsProfile.getRegRetryBaseTime());
            int regRetryMaxTime = regiConfig.getRegRetryMaxTime(imsProfile.getRegRetryMaxTime());
            bundle.putString("password", password);
            bundle.putString("realm", appRealm);
            bundle.putString("msrpTransType", transportPsMediaRoaming);
            bundle.putString("transport", str2);
            bundle.putString(ConfigConstants.ConfigTable.IM_IM_MSG_TECH, str3);
            bundle.putBoolean("useKeepAlive", z);
            bundle.putInt("qVal", valueOf.intValue());
            bundle.putInt(ConfigConstants.ConfigTable.TIMER_T1, timer1);
            bundle.putInt(ConfigConstants.ConfigTable.TIMER_T2, timer2);
            bundle.putInt(ConfigConstants.ConfigTable.TIMER_T4, timer4);
            bundle.putInt(ConfigConstants.ConfigTable.REG_RETRY_BASE_TIME, regRetryBaseTime);
            bundle.putInt(ConfigConstants.ConfigTable.REG_RETRY_MAX_TIME, regRetryMaxTime);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRcsRoamingPrefChanged(int i) {
        int userConfig = UserConfiguration.getUserConfig(this.context, i, "rcs_roaming_pref", 2);
        Log.i(IRcsPolicyManager.LOG_TAG, "onRcsRoamingPrefChanged: now [" + userConfig + "]");
        this.mRegMgr.notifyRomaingSettingsChanged(userConfig, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRCSAllowedChangedbyMDM() {
        this.mRegMgr.notifyRCSAllowedChangedbyMDM();
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public boolean tryRcsConfig(IRegisterTask iRegisterTask) {
        IConfigModule configModule = ImsRegistry.getConfigModule();
        if (!configModule.tryAutoconfiguration(iRegisterTask)) {
            return false;
        }
        IMSLog.i(IRcsPolicyManager.LOG_TAG, iRegisterTask.getPhoneId(), "tryRcsConfig for task : " + iRegisterTask.getProfile().getName());
        if (configModule.getAcsTryReason(iRegisterTask.getPhoneId()) != DiagnosisConstants.RCSA_ATRE.INIT) {
            return true;
        }
        configModule.setAcsTryReason(iRegisterTask.getPhoneId(), DiagnosisConstants.RCSA_ATRE.FROM_REGI);
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public boolean doRcsConfig(IRegisterTask iRegisterTask, List<IRegisterTask> list) {
        IConfigModule configModule = ImsRegistry.getConfigModule();
        if (!configModule.isWaitAutoconfig(iRegisterTask)) {
            return false;
        }
        IMSLog.i(IRcsPolicyManager.LOG_TAG, iRegisterTask.getPhoneId(), "doRcsConfig for task : " + iRegisterTask.getProfile().getName());
        if (configModule.getAcsTryReason(iRegisterTask.getPhoneId()) == DiagnosisConstants.RCSA_ATRE.INIT) {
            configModule.setAcsTryReason(iRegisterTask.getPhoneId(), DiagnosisConstants.RCSA_ATRE.FROM_REGI);
        }
        configModule.triggerAutoConfig(false, iRegisterTask.getPhoneId(), list);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        if (r1.equals("SIPoTLS") == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String getRcsTransport(android.content.Context r5, int r6, com.sec.ims.settings.ImsProfile r7, int r8) {
        /*
            r4 = this;
            com.sec.internal.helper.PhoneIdKeyMap<com.sec.internal.helper.RegiConfig> r4 = com.sec.internal.ims.rcs.RcsPolicyManager.mRegiConfig
            java.lang.Object r4 = r4.get(r8)
            com.sec.internal.helper.RegiConfig r4 = (com.sec.internal.helper.RegiConfig) r4
            r0 = 1
            if (r6 == r0) goto L5a
            boolean r6 = com.sec.internal.ims.rcs.util.RcsUtils.DualRcs.isDualRcsReg()
            if (r6 == 0) goto L18
            boolean r6 = com.sec.internal.helper.SimUtil.isDdsSimSlot(r8)
            if (r6 != 0) goto L18
            goto L5a
        L18:
            java.lang.String r6 = "phone"
            java.lang.Object r6 = r5.getSystemService(r6)
            android.telephony.TelephonyManager r6 = (android.telephony.TelephonyManager) r6
            java.lang.String r1 = r4.getTransProtoPsSignaling()
            com.sec.internal.constants.Mno r2 = com.sec.internal.helper.SimUtil.getSimMno(r8)
            java.lang.String r3 = com.sec.internal.ims.util.ConfigUtil.getAcsServerType(r8)
            java.lang.String r5 = com.sec.internal.ims.util.ConfigUtil.getRcsProfileWithFeature(r5, r8, r7)
            boolean r5 = com.sec.ims.settings.ImsProfile.isRcsUpProfile(r5)
            if (r5 == 0) goto L5e
            boolean r5 = r6.isNetworkRoaming()
            if (r5 == 0) goto L5e
            com.sec.internal.constants.Mno r5 = com.sec.internal.constants.Mno.SPRINT
            if (r2 == r5) goto L5e
            com.sec.internal.constants.Mno r5 = com.sec.internal.constants.Mno.VZW
            if (r2 == r5) goto L5e
            com.sec.internal.constants.Mno r5 = com.sec.internal.constants.Mno.TCE
            if (r2 == r5) goto L5e
            com.sec.internal.constants.Mno r5 = com.sec.internal.constants.Mno.ROGERS
            if (r2 == r5) goto L5e
            java.lang.String r5 = "jibe"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L5e
            java.lang.String r1 = r4.getTransProtoPsRoamSignaling()
            goto L5e
        L5a:
            java.lang.String r1 = r4.getTransProtoWifiSignaling()
        L5e:
            r1.hashCode()
            int r4 = r1.hashCode()
            r5 = -1
            switch(r4) {
                case -1479406420: goto L7f;
                case -1479406138: goto L76;
                case -1479405428: goto L6b;
                default: goto L69;
            }
        L69:
            r0 = r5
            goto L89
        L6b:
            java.lang.String r4 = "SIPoUDP"
            boolean r4 = r1.equals(r4)
            if (r4 != 0) goto L74
            goto L69
        L74:
            r0 = 2
            goto L89
        L76:
            java.lang.String r4 = "SIPoTLS"
            boolean r4 = r1.equals(r4)
            if (r4 != 0) goto L89
            goto L69
        L7f:
            java.lang.String r4 = "SIPoTCP"
            boolean r4 = r1.equals(r4)
            if (r4 != 0) goto L88
            goto L69
        L88:
            r0 = 0
        L89:
            switch(r0) {
                case 0: goto L99;
                case 1: goto L95;
                case 2: goto L91;
                default: goto L8c;
            }
        L8c:
            java.lang.String r4 = r7.getTransportName()
            return r4
        L91:
            java.lang.String r4 = "udp"
            return r4
        L95:
            java.lang.String r4 = "tls"
            return r4
        L99:
            java.lang.String r4 = "tcp"
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.rcs.RcsPolicyManager.getRcsTransport(android.content.Context, int, com.sec.ims.settings.ImsProfile, int):java.lang.String");
    }

    public static RcsConfig getRcsConfig(Context context, ImsProfile imsProfile, int i, ImConfig imConfig) {
        String str;
        if (!RcsUtils.DualRcs.isRegAllowed(context, i) || imConfig == null) {
            return null;
        }
        int i2 = ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.FT_CHUNK_SIZE, 0);
        int i3 = ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.ISH_CHUNK_SIZE, 0);
        boolean z = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.MSRP_CEMA, false);
        boolean z2 = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.CONF_SUBSCRIBE_ENABLED, true);
        int i4 = ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.SUPPORT_CANCEL_MESSAGE, 0);
        int pagerModeLimit = imConfig.getPagerModeLimit();
        boolean z3 = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.AGGR_IMDN_SUPPORTED, false);
        boolean realtimeUserAliasAuth = imConfig.getRealtimeUserAliasAuth();
        ImsUri confFactoryUri = imConfig.getConfFactoryUri();
        String imsUri = confFactoryUri != null ? confFactoryUri.toString() : "";
        String fileDownloadPath = FilePathGenerator.getFileDownloadPath(context, true);
        if (fileDownloadPath == null) {
            fileDownloadPath = "";
        }
        ImsUri exploderUri = imConfig.getExploderUri();
        String imsUri2 = (exploderUri == null || "sip:foo@bar".equals(exploderUri.toString())) ? "" : exploderUri.toString();
        boolean z4 = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.MSRP_DISCARD_PORT, false);
        boolean botPrivacyDisable = imsProfile.getRcsProfileType() >= ImsProfile.RCS_PROFILE.UP_2_2.ordinal() ? imConfig.getBotPrivacyDisable() : true;
        int ordinal = imConfig.getChatbotMsgTech() != null ? imConfig.getChatbotMsgTech().ordinal() : 1;
        String endUserConfReqId = mRegiConfig.get(i).getEndUserConfReqId();
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.RCS.SUPPORTED_BOT_VERSIONS, "");
        if (ImsUtil.isSingleRegiAppConnected(i)) {
            String str2 = (String) new SecImsServiceConnector(context).getSipTransportImpl(i).getAllocatedFeatureTags().stream().filter(new Predicate() { // from class: com.sec.internal.ims.rcs.RcsPolicyManager$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getRcsConfig$0;
                    lambda$getRcsConfig$0 = RcsPolicyManager.lambda$getRcsConfig$0((String) obj);
                    return lambda$getRcsConfig$0;
                }
            }).findFirst().map(new Function() { // from class: com.sec.internal.ims.rcs.RcsPolicyManager$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$getRcsConfig$1;
                    lambda$getRcsConfig$1 = RcsPolicyManager.lambda$getRcsConfig$1((String) obj);
                    return lambda$getRcsConfig$1;
                }
            }).map(new Function() { // from class: com.sec.internal.ims.rcs.RcsPolicyManager$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$getRcsConfig$2;
                    lambda$getRcsConfig$2 = RcsPolicyManager.lambda$getRcsConfig$2((String) obj);
                    return lambda$getRcsConfig$2;
                }
            }).orElse("");
            if (!TextUtils.isEmpty(str2)) {
                IMSLog.i(IRcsPolicyManager.LOG_TAG, i, "Replace botversion retrieving from SipDelegate: " + str2);
                string = str2;
            }
        }
        if (TextUtils.isEmpty(string)) {
            str = imsProfile.getRcsProfileType() >= ImsProfile.RCS_PROFILE.UP_2_4.ordinal() ? "#=1,#=2" : "#=1";
        } else {
            str = string;
        }
        return new RcsConfig(i2, i3, imsUri, z, fileDownloadPath, z2, imsUri2, pagerModeLimit, z4, z3, botPrivacyDisable, ordinal, endUserConfReqId, str, i4, realtimeUserAliasAuth);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getRcsConfig$0(String str) {
        return str.startsWith(SipMsg.FEATURE_TAG_CHATBOT_VER_PREFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getRcsConfig$1(String str) {
        return str.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR, 2)[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getRcsConfig$2(String str) {
        return str.replaceAll(CmcConstants.E_NUM_STR_QUOTE, "");
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public void updateRegiConfig(int i) {
        mRegiConfig.get(i).load();
    }

    @Override // com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager
    public RegiConfig getRegiConfig(int i) {
        return mRegiConfig.get(i);
    }
}
