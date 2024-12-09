package com.sec.internal.imsphone.cmc;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.ImsProfileLoader;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.imsphone.cmc.ICmcConnectivityController;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class CmcConnectivityController extends Handler implements ICmcConnectivityController {
    private static final int EVENT_TRY_NSD_BIND = 1001;
    private static final int EVENT_TRY_NSD_BIND_DELAYED = 1002;
    private static final String IMS_PCSCF_IP = "ims_pcscf_ip";
    private static final int NSD_BIND_TIMEOUT = 10000;
    private static final String SERVER_DOMAIN = "p2p.samsungims.com";
    private static final String SIP_DOMAIN = "samsungims.com";
    private static final String URN_PREFIX = "urn:duid:";
    private static final String WIFI_HS_PCSCF_PREF = "mobile_hotspot_pcscf";
    private static final String WIFI_HS_PDN_NAME = "swlan";
    private static final String WIFI_HS_PROFILE_NAME_PD = "SamsungCMC_WIFI_HS_PD";
    private static final String WIFI_PDN_NAME = "wlan";
    private static final String WIFI_PROFILE_NAME_PD = "SamsungCMC_WIFI_PD";
    private static final String WIFI_PROFILE_NAME_SD = "SamsungCMC_WIFI_SD";
    private final Context mContext;
    private ICmcConnectivityController.DeviceType mDeviceType;
    private String mFirstTrigger;
    private String mHotspotAuthToken;
    private String mHotspotHostPcscfIp;
    private boolean mHotspotIsConnect;
    private String mHotspotLocalIp;
    private ImsProfile mHotspotProfile;
    private boolean mHotspotRegistered;
    private IpServiceManager mIpServiceManager;
    private boolean mNsdBound;
    private String mOwnDeviceId;
    private String mOwnDuid;
    private CmcP2pController mP2pController;
    private int mPhoneCount;
    private String mPrimaryDuid;
    private final IImsRegistrationListener mRegisterP2pListener;
    private int mRetryCountBound;
    private IRegistrationManager mRm;
    private ITelephonyManager mTelephonyManager;
    private String mWifiAuthToken;
    private String mWifiHostPcscfIp;
    private boolean mWifiIsConnect;
    private String mWifiLocalIp;
    private ImsProfile mWifiProfile;
    private static final boolean DBG = "eng".equals(Build.TYPE);
    private static final String LOG_TAG = CmcConnectivityController.class.getSimpleName();
    public static boolean mWifiRegistered = false;

    private void onWifiDirectConnectionChanged(boolean z, String str) {
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
    }

    public CmcConnectivityController(Looper looper, IRegistrationManager iRegistrationManager) {
        super(looper);
        this.mTelephonyManager = null;
        this.mIpServiceManager = null;
        this.mPhoneCount = 0;
        ICmcConnectivityController.DeviceType deviceType = ICmcConnectivityController.DeviceType.None;
        this.mDeviceType = deviceType;
        this.mFirstTrigger = "";
        this.mOwnDeviceId = "";
        this.mOwnDuid = "";
        this.mPrimaryDuid = "";
        this.mNsdBound = false;
        this.mRetryCountBound = 0;
        this.mWifiIsConnect = false;
        this.mWifiLocalIp = "";
        this.mWifiHostPcscfIp = "";
        this.mWifiAuthToken = "";
        this.mWifiProfile = null;
        this.mHotspotIsConnect = false;
        this.mHotspotRegistered = false;
        this.mHotspotLocalIp = "";
        this.mHotspotHostPcscfIp = "";
        this.mHotspotAuthToken = "";
        this.mHotspotProfile = null;
        this.mRegisterP2pListener = new IImsRegistrationListener.Stub() { // from class: com.sec.internal.imsphone.cmc.CmcConnectivityController.1
            public void onRegistered(ImsRegistration imsRegistration) {
                int cmcType = imsRegistration.getImsProfile().getCmcType();
                Log.i(CmcConnectivityController.LOG_TAG, "onRegistered, cmcType: " + cmcType);
                int i = 0;
                if (cmcType == 2) {
                    IMSLog.i(CmcConnectivityController.LOG_TAG, "cmc is registered, mWifiRegistered: " + CmcConnectivityController.mWifiRegistered);
                    if (!CmcConnectivityController.mWifiRegistered || CmcConnectivityController.this.mWifiProfile == null) {
                        return;
                    }
                    while (i < CmcConnectivityController.this.mPhoneCount) {
                        CmcConnectivityController.this.mRm.deregisterProfile(CmcConnectivityController.this.mWifiProfile.getId(), i, true);
                        i++;
                    }
                    return;
                }
                if (cmcType == 3) {
                    CmcConnectivityController.mWifiRegistered = true;
                    return;
                }
                if (cmcType == 4) {
                    CmcConnectivityController.mWifiRegistered = true;
                    if (CmcConnectivityController.this.mRm.isCmcRegistered(SimUtil.getActiveDataPhoneId()) > 0) {
                        IMSLog.i(CmcConnectivityController.LOG_TAG, "There is already cmc registration. deregister");
                        while (i < CmcConnectivityController.this.mPhoneCount) {
                            CmcConnectivityController.this.mRm.deregisterProfile(CmcConnectivityController.this.mWifiProfile.getId(), i, true);
                            i++;
                        }
                        return;
                    }
                    return;
                }
                if (cmcType != 5) {
                    if (cmcType == 7 || cmcType == 8) {
                        CmcConnectivityController.this.mP2pController.onRegistered(cmcType);
                        return;
                    }
                    return;
                }
                CmcConnectivityController.this.mHotspotRegistered = true;
                String hSPref = CmcConnectivityController.this.getHSPref();
                if (!TextUtils.isEmpty(hSPref)) {
                    CmcConnectivityController.this.mIpServiceManager.ipRuleRemove("local_network", hSPref);
                }
                CmcConnectivityController.this.mIpServiceManager.ipRuleAdd("local_network", CmcConnectivityController.this.mHotspotHostPcscfIp);
                CmcConnectivityController cmcConnectivityController = CmcConnectivityController.this;
                cmcConnectivityController.setHSPref(cmcConnectivityController.mHotspotHostPcscfIp);
            }

            public void onDeregistered(ImsRegistration imsRegistration, ImsRegistrationError imsRegistrationError) {
                int cmcType = imsRegistration.getImsProfile().getCmcType();
                Log.i(CmcConnectivityController.LOG_TAG, "onDeregistered, cmcType: " + cmcType + ", ErrorCode: " + imsRegistrationError.getSipErrorCode() + ", DeregistrationReason: " + imsRegistrationError.getDeregistrationReason());
                if (cmcType == 2) {
                    CmcConnectivityController.this.retryWifiRegister(CmcConnectivityController.WIFI_PROFILE_NAME_SD);
                    return;
                }
                if (cmcType == 3) {
                    CmcConnectivityController.mWifiRegistered = false;
                    CmcConnectivityController.this.retryWifiRegister(CmcConnectivityController.WIFI_PROFILE_NAME_PD);
                    return;
                }
                if (cmcType != 4) {
                    if (cmcType == 7 || cmcType == 8) {
                        CmcConnectivityController.this.mP2pController.onDeregistered(cmcType);
                        return;
                    }
                    return;
                }
                CmcConnectivityController.mWifiRegistered = false;
                if (CmcConnectivityController.this.mWifiProfile != null) {
                    if (imsRegistrationError.getDeregistrationReason() == 24 || imsRegistrationError.getDeregistrationReason() == 25) {
                        CmcConnectivityController.this.retryWifiRegister(CmcConnectivityController.WIFI_PROFILE_NAME_SD);
                        return;
                    }
                    for (int i = 0; i < CmcConnectivityController.this.mPhoneCount; i++) {
                        CmcConnectivityController.this.mRm.deregisterProfile(CmcConnectivityController.this.mWifiProfile.getId(), i, false);
                    }
                }
            }
        };
        Context context = ImsRegistry.getContext();
        this.mContext = context;
        this.mRm = iRegistrationManager;
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(context);
        this.mIpServiceManager = new IpServiceManager(context);
        this.mP2pController = new CmcP2pController(looper, this, iRegistrationManager, this.mIpServiceManager);
        String string = Settings.Global.getString(context.getContentResolver(), "cmc_device_type");
        if ("pd".equals(string)) {
            this.mDeviceType = ICmcConnectivityController.DeviceType.PDevice;
        } else if ("sd".equals(string)) {
            this.mDeviceType = ICmcConnectivityController.DeviceType.SDevice;
        } else {
            this.mDeviceType = deviceType;
        }
        if (this.mDeviceType != deviceType) {
            registerP2pListener();
        }
        this.mPhoneCount = SimUtil.getPhoneCount();
        IMSLog.i(LOG_TAG, "mPhoneCount: " + this.mPhoneCount);
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public boolean isEnabledWifiDirectFeature() {
        return this.mP2pController.isEnabledWifiDirectFeature();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void stopP2p() {
        this.mP2pController.stopP2p();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void startP2pBind() {
        this.mP2pController.startP2pBind();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public ICmcConnectivityController.DeviceType getP2pDeviceType() {
        return this.mP2pController.getDeviceType();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void needP2pCallSession(boolean z) {
        this.mP2pController.needP2pCallSession(z);
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public int getP2pCallSessionId() {
        return this.mP2pController.getP2pCallSessionId();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void setP2pCallSessionId(int i) {
        this.mP2pController.setP2pCallSessionId(i);
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void setCmcActivation(boolean z) {
        this.mP2pController.setCmcActivation(z);
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void setP2pPD() {
        this.mP2pController.setP2pPD();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public boolean isExistP2pConnection() {
        return this.mP2pController.isExistP2pConnection();
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void startNsdBind() {
        Log.i(LOG_TAG, "startNsdBind");
        sendEmptyMessage(1001);
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void startRegi(String str, String str2) {
        this.mOwnDeviceId = str;
        this.mOwnDuid = "urn:duid:" + str;
        this.mPrimaryDuid = "urn:duid:" + str2;
        Log.i(LOG_TAG, "ownDuid: " + this.mOwnDuid + ", primaryDuid: " + this.mPrimaryDuid + ", deviceType: " + this.mDeviceType);
        if (this.mDeviceType == ICmcConnectivityController.DeviceType.SDevice) {
            retryWifiRegister(WIFI_PROFILE_NAME_SD);
        }
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public void stopRegi() {
        Log.i(LOG_TAG, "stopRegi, mWifiRegistered: " + mWifiRegistered);
        if (this.mDeviceType == ICmcConnectivityController.DeviceType.SDevice && mWifiRegistered) {
            for (int i = 0; i < this.mPhoneCount; i++) {
                this.mRm.deregisterProfile(this.mWifiProfile.getId(), i, true);
            }
            mWifiRegistered = false;
        }
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public ICmcConnectivityController.DeviceType getDeviceType() {
        return this.mDeviceType;
    }

    private void onShutDownNsd(boolean z) {
        onWifiDirectConnectionChanged(false, "");
        onWifiConnectionChanged(false, "", "", null);
        if (z) {
            sendEmptyMessageDelayed(1002, 10000L);
        }
    }

    private void onWifiConnectionChanged(boolean z, String str, String str2, ArrayList<String> arrayList) {
        if (this.mDeviceType == ICmcConnectivityController.DeviceType.None) {
            return;
        }
        String str3 = LOG_TAG;
        IMSLog.i(str3, "onWifiConnectionChanged()");
        if (this.mDeviceType == ICmcConnectivityController.DeviceType.PDevice) {
            if (arrayList == null || arrayList.isEmpty()) {
                IMSLog.i(str3, "there are no network interface, all disconnect");
                hotspotConnectionChanged(false, str, str2);
                wifiConnectionChanged(false, str, str2);
                return;
            }
            if (arrayList.size() > 1) {
                IMSLog.i(str3, "wifi register by priority (WIFI > MOBILE-HOTSPOT)");
                hotspotConnectionChanged(false, str, str2);
                wifiConnectionChanged(z, str, str2);
                return;
            }
            String str4 = arrayList.get(0);
            IMSLog.i(str3, "tryRegister intf: " + str4);
            if ("wlan0".equals(str4)) {
                hotspotConnectionChanged(false, str, str2);
                wifiConnectionChanged(z, str, str2);
                return;
            } else {
                wifiConnectionChanged(false, str, str2);
                hotspotConnectionChanged(z, str, str2);
                return;
            }
        }
        wifiConnectionChanged(z, str, str2);
    }

    private void wifiConnectionChanged(boolean z, String str, String str2) {
        if (z) {
            this.mWifiIsConnect = true;
            this.mWifiHostPcscfIp = str;
            this.mWifiAuthToken = str2;
            if (this.mDeviceType == ICmcConnectivityController.DeviceType.PDevice) {
                ICmcConnectivityController.ConnectType connectType = ICmcConnectivityController.ConnectType.Wifi;
                this.mWifiHostPcscfIp = getIpAddress(connectType);
                if (isReadyToWifiPDRegister()) {
                    imsRegister(connectType, WIFI_PDN_NAME, WIFI_PROFILE_NAME_PD);
                    return;
                }
                return;
            }
            if (isReadyToWifiSDRegister()) {
                imsRegister(ICmcConnectivityController.ConnectType.Wifi, WIFI_PDN_NAME, WIFI_PROFILE_NAME_SD);
                return;
            }
            return;
        }
        if (this.mWifiIsConnect) {
            IMSLog.i(LOG_TAG, "the Wifi are all disconnected");
            this.mWifiIsConnect = false;
            this.mWifiLocalIp = "";
            this.mWifiHostPcscfIp = "";
            this.mWifiAuthToken = "";
            if (mWifiRegistered && this.mWifiProfile != null) {
                for (int i = 0; i < this.mPhoneCount; i++) {
                    this.mRm.deregisterProfile(this.mWifiProfile.getId(), i, false);
                }
            }
            mWifiRegistered = false;
        }
    }

    private void hotspotConnectionChanged(boolean z, String str, String str2) {
        if (z) {
            this.mHotspotIsConnect = true;
            this.mHotspotAuthToken = str2;
            ICmcConnectivityController.ConnectType connectType = ICmcConnectivityController.ConnectType.Wifi_HS;
            this.mHotspotHostPcscfIp = getIpAddress(connectType);
            if (isReadyToHotspotRegister()) {
                imsRegister(connectType, WIFI_HS_PDN_NAME, WIFI_HS_PROFILE_NAME_PD);
                return;
            }
            return;
        }
        if (this.mHotspotIsConnect) {
            IMSLog.i(LOG_TAG, "the Hotspot are all disconnected");
            if (!TextUtils.isEmpty(this.mHotspotHostPcscfIp)) {
                this.mIpServiceManager.ipRuleRemove("local_network", this.mHotspotHostPcscfIp);
            }
            this.mHotspotIsConnect = false;
            this.mHotspotLocalIp = "";
            this.mHotspotHostPcscfIp = "";
            this.mHotspotAuthToken = "";
            if (this.mHotspotRegistered && this.mHotspotProfile != null) {
                for (int i = 0; i < this.mPhoneCount; i++) {
                    this.mRm.deregisterProfile(this.mHotspotProfile.getId(), i, false);
                }
            }
            this.mHotspotRegistered = false;
        }
    }

    private void imsRegister(ICmcConnectivityController.ConnectType connectType, String str, String str2) {
        int i = 0;
        for (ImsProfile imsProfile : ImsProfileLoader.getProfileListWithMnoName(this.mContext, "MDMN", 0)) {
            if ("SamsungCMC_P2P".equals(imsProfile.getName())) {
                imsProfile.setDuid(this.mOwnDuid);
                imsProfile.setPdn(str);
                imsProfile.setName(str2);
                imsProfile.setDomain(SERVER_DOMAIN);
                imsProfile.setPriDeviceIdWithURN(this.mPrimaryDuid);
                imsProfile.setDisplayName(this.mOwnDeviceId);
                imsProfile.setImpuList("sip:D2D@samsungims.com");
                imsProfile.setImpi("D2D@samsungims.com");
                imsProfile.setSslType(4);
                imsProfile.setNetworkEnabled(13, false);
                imsProfile.setNetworkEnabled(3, false);
                imsProfile.setNetworkEnabled(10, false);
                imsProfile.setNetworkEnabled(15, false);
                imsProfile.setNetworkEnabled(8, false);
                imsProfile.setNetworkEnabled(9, false);
                imsProfile.setVceConfigEnabled(true);
                ArrayList arrayList = new ArrayList();
                if (connectType == ICmcConnectivityController.ConnectType.Wifi) {
                    arrayList.add(this.mWifiHostPcscfIp);
                    imsProfile.setPcscfList(arrayList);
                    imsProfile.setAccessToken(this.mWifiAuthToken);
                    this.mWifiProfile = imsProfile;
                    while (i < this.mPhoneCount) {
                        this.mRm.registerProfile(this.mWifiProfile, i);
                        i++;
                    }
                    return;
                }
                if (connectType == ICmcConnectivityController.ConnectType.Wifi_HS) {
                    arrayList.add(this.mHotspotHostPcscfIp);
                    imsProfile.setPcscfList(arrayList);
                    imsProfile.setAccessToken(this.mHotspotAuthToken);
                    HashSet hashSet = new HashSet();
                    hashSet.add("mmtel");
                    imsProfile.setServiceSet(13, hashSet);
                    imsProfile.setNetworkEnabled(13, true);
                    this.mHotspotProfile = imsProfile;
                    while (i < this.mPhoneCount) {
                        this.mRm.registerProfile(this.mHotspotProfile, i);
                        i++;
                    }
                    return;
                }
                return;
            }
        }
    }

    private boolean isReadyToWifiRegister() {
        IMSLog.i(LOG_TAG, "mWifiIsConnect: " + this.mWifiIsConnect + ", mWifiRegistered: " + mWifiRegistered);
        return (!this.mWifiIsConnect || mWifiRegistered || TextUtils.isEmpty(this.mWifiHostPcscfIp)) ? false : true;
    }

    private boolean isReadyToWifiPDRegister() {
        if (!isReadyToWifiRegister()) {
            return false;
        }
        String str = LOG_TAG;
        IMSLog.i(str, "mHotspotRegistered: " + this.mHotspotRegistered);
        if (!this.mHotspotRegistered) {
            return true;
        }
        IMSLog.i(str, "There is already [mobile-hotspot] registration. don't wifi registration");
        return false;
    }

    private boolean isReadyToWifiSDRegister() {
        if (!isReadyToWifiRegister()) {
            return false;
        }
        if (this.mRm.isCmcRegistered(SimUtil.getActiveDataPhoneId()) <= 0) {
            return true;
        }
        IMSLog.i(LOG_TAG, "There is already cmc registration. don't wifi registration");
        return false;
    }

    private boolean isReadyToHotspotRegister() {
        String str = LOG_TAG;
        IMSLog.i(str, "mHotspotIsConnect: " + this.mHotspotIsConnect + ", mHotspotRegistered: " + this.mHotspotRegistered);
        if (!this.mHotspotIsConnect || this.mHotspotRegistered || TextUtils.isEmpty(this.mHotspotHostPcscfIp)) {
            return false;
        }
        IMSLog.i(str, "mWifiRegistered: " + mWifiRegistered);
        if (!mWifiRegistered) {
            return true;
        }
        IMSLog.i(str, "There is already [wifi] registration. don't mobile-hotspot registration");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryWifiRegister(String str) {
        IMSLog.i(LOG_TAG, "retryWifiRegister: " + str);
        if (this.mDeviceType == ICmcConnectivityController.DeviceType.PDevice) {
            if (isReadyToWifiPDRegister()) {
                imsRegister(ICmcConnectivityController.ConnectType.Wifi, WIFI_PDN_NAME, str);
            }
        } else if (isReadyToWifiSDRegister()) {
            imsRegister(ICmcConnectivityController.ConnectType.Wifi, WIFI_PDN_NAME, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getHSPref() {
        return ImsSharedPrefHelper.getSharedPref(ImsConstants.Phone.SLOT_1, this.mContext, IMS_PCSCF_IP, 0, false).getString(WIFI_HS_PCSCF_PREF, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHSPref(String str) {
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(ImsConstants.Phone.SLOT_1, this.mContext, IMS_PCSCF_IP, 0, false).edit();
        edit.putString(WIFI_HS_PCSCF_PREF, str);
        edit.apply();
        IMSLog.i(LOG_TAG, "setHSPref: " + str);
    }

    private void registerP2pListener() {
        Log.i(LOG_TAG, "registerP2pListener");
        try {
            this.mRm.registerP2pListener(this.mRegisterP2pListener);
        } catch (Exception unused) {
            Log.e(LOG_TAG, "registerP2pListener failed");
        }
    }

    private void unregisterImsRegistrationListener() {
        Log.i(LOG_TAG, "unregisterImsRegistrationListener");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[Catch: Exception -> 0x007f, TryCatch #0 {Exception -> 0x007f, blocks: (B:2:0x0000, B:3:0x000c, B:5:0x0012, B:46:0x001c, B:20:0x004e, B:21:0x005a, B:23:0x0060, B:26:0x006c, B:29:0x0076, B:8:0x002a, B:39:0x002e, B:11:0x003c, B:13:0x0040), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String getIpAddress(com.sec.internal.imsphone.cmc.ICmcConnectivityController.ConnectType r4) {
        /*
            r3 = this;
            java.util.Enumeration r3 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Exception -> L7f
            java.util.ArrayList r3 = java.util.Collections.list(r3)     // Catch: java.lang.Exception -> L7f
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L7f
        Lc:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Exception -> L7f
            if (r0 == 0) goto L86
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Exception -> L7f
            java.net.NetworkInterface r0 = (java.net.NetworkInterface) r0     // Catch: java.lang.Exception -> L7f
            com.sec.internal.imsphone.cmc.ICmcConnectivityController$ConnectType r1 = com.sec.internal.imsphone.cmc.ICmcConnectivityController.ConnectType.Wifi_HS     // Catch: java.lang.Exception -> L7f
            if (r4 != r1) goto L2a
            java.lang.String r1 = r0.getName()     // Catch: java.lang.Exception -> L7f
            java.lang.String r2 = "swlan"
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L7f
            if (r1 != 0) goto L4e
            goto Lc
        L2a:
            com.sec.internal.imsphone.cmc.ICmcConnectivityController$ConnectType r1 = com.sec.internal.imsphone.cmc.ICmcConnectivityController.ConnectType.Wifi     // Catch: java.lang.Exception -> L7f
            if (r4 != r1) goto L3c
            java.lang.String r1 = r0.getName()     // Catch: java.lang.Exception -> L7f
            java.lang.String r2 = "wlan"
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L7f
            if (r1 != 0) goto L4e
            goto Lc
        L3c:
            com.sec.internal.imsphone.cmc.ICmcConnectivityController$ConnectType r1 = com.sec.internal.imsphone.cmc.ICmcConnectivityController.ConnectType.Internet     // Catch: java.lang.Exception -> L7f
            if (r4 != r1) goto L4e
            java.lang.String r1 = r0.getName()     // Catch: java.lang.Exception -> L7f
            java.lang.String r2 = "rmnet0"
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Exception -> L7f
            if (r1 != 0) goto L4e
            goto Lc
        L4e:
            java.util.Enumeration r0 = r0.getInetAddresses()     // Catch: java.lang.Exception -> L7f
            java.util.ArrayList r0 = java.util.Collections.list(r0)     // Catch: java.lang.Exception -> L7f
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L7f
        L5a:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L7f
            if (r1 == 0) goto Lc
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L7f
            java.net.InetAddress r1 = (java.net.InetAddress) r1     // Catch: java.lang.Exception -> L7f
            boolean r2 = r1.isLoopbackAddress()     // Catch: java.lang.Exception -> L7f
            if (r2 != 0) goto L5a
            java.lang.String r2 = r1.getHostAddress()     // Catch: java.lang.Exception -> L7f
            boolean r2 = com.sec.internal.helper.NetworkUtil.isIPv4Address(r2)     // Catch: java.lang.Exception -> L7f
            if (r2 == 0) goto L5a
            java.lang.String r3 = r1.getHostAddress()     // Catch: java.lang.Exception -> L7f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L7f
            return r3
        L7f:
            java.lang.String r3 = com.sec.internal.imsphone.cmc.CmcConnectivityController.LOG_TAG
            java.lang.String r4 = "error in parsing"
            com.sec.internal.log.IMSLog.i(r3, r4)
        L86:
            java.lang.String r3 = com.sec.internal.imsphone.cmc.CmcConnectivityController.LOG_TAG
            java.lang.String r4 = "returning empty ip address"
            com.sec.internal.log.IMSLog.i(r3, r4)
            java.lang.String r3 = ""
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.cmc.CmcConnectivityController.getIpAddress(com.sec.internal.imsphone.cmc.ICmcConnectivityController$ConnectType):java.lang.String");
    }

    @Override // com.sec.internal.imsphone.cmc.ICmcConnectivityController
    public boolean isWifiRegistered() {
        return mWifiRegistered;
    }
}
