package com.samsung.android.cmcsetting;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.cmcsetting.CmcSettingManagerConstants;
import com.samsung.android.cmcsetting.listeners.CmcActivationInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcCallActivationInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcDeviceInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcLineInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcMessageActivationInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcNetworkModeInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcSameWifiNetworkStatusListener;
import com.samsung.android.cmcsetting.listeners.CmcSamsungAccountInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcWatchActivationInfoChangedListener;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.servicemodules.im.interfaces.ImIntent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CmcSettingManager {
    private static boolean IS_DUAL_SIM_SUPPORTED;
    private static boolean IS_MORE_THAN_U_OS;
    private static boolean SHIP_BUILD = CloudMessageProviderContract.JsonData.TRUE.equals(SemSystemProperties.get("ro.product_ship", ConfigConstants.VALUE.INFO_COMPLETED));
    private Uri authorityUri = Uri.parse("content://com.samsung.android.mdec.provider.setting");
    private Uri authorityUriForCmcActivation = Uri.parse("content://com.samsung.android.mdec.provider.setting/cmc_activation");
    private Uri authorityUriForCmcMessageActivation = Uri.parse("content://com.samsung.android.mdec.provider.setting/cmc_message_activation");
    private Uri authorityUriForCmcCallActivation = Uri.parse("content://com.samsung.android.mdec.provider.setting/cmc_call_activation");
    private Uri authorityUriForWatchActivation = Uri.parse("content://com.samsung.android.mdec.provider.setting/watch_activation");
    private Uri authorityUriForNetworkMode = Uri.parse("content://com.samsung.android.mdec.provider.setting/network_mode");
    private Uri authorityUriForLines = Uri.parse("content://com.samsung.android.mdec.provider.setting/lines");
    private Uri authorityUriForDevices = Uri.parse("content://com.samsung.android.mdec.provider.setting/devices");
    private Uri authorityUriForSaInfo = Uri.parse("content://com.samsung.android.mdec.provider.setting/sainfo");
    private Uri authorityUriForSameWifiNetworkStatus = Uri.parse("content://com.samsung.android.mdec.provider.setting/same_wifi_network_status");
    private ArrayList<CmcActivationInfoChangedListener> mCmcActivationChangedListenerList = null;
    private ArrayList<CmcMessageActivationInfoChangedListener> mCmcMessageActivationChangedListenerList = null;
    private ArrayList<CmcCallActivationInfoChangedListener> mCmcCallActivationChangedListenerList = null;
    private ArrayList<CmcWatchActivationInfoChangedListener> mCmcWatchActivationChangedListenerList = null;
    private ArrayList<CmcNetworkModeInfoChangedListener> mCmcNetworkModeChangedListenerList = null;
    private ArrayList<CmcLineInfoChangedListener> mCmcLineInfoChangedListenerList = null;
    private ArrayList<CmcDeviceInfoChangedListener> mCmcDeviceInfoChangedListenerList = null;
    private ArrayList<CmcSamsungAccountInfoChangedListener> mCmcSamsungAccountInfoChangedListenerList = null;
    private ArrayList<CmcSameWifiNetworkStatusListener> mSameWifiNetworkStatusListenerList = null;
    private ContentObserver mCmcActivationDbChangeObserver = null;
    private ContentObserver mCmcMessageActivationDbChangeObserver = null;
    private ContentObserver mCmcCallActivationDbChangeObserver = null;
    private ContentObserver mWatchActivationDbChangeObserver = null;
    private ContentObserver mNetworkModeDbChangeObserver = null;
    private ContentObserver mLinesDbChangeObserver = null;
    private ContentObserver mDevicesDbChangeObserver = null;
    private ContentObserver mSaInfoDbChangeObserver = null;
    private ContentObserver mSameWifiNetworkStatusObserver = null;
    private Context mContext = null;

    private enum OBSERVER_TYPE {
        mainActivation,
        messageActivation,
        callActivation,
        watchActivation,
        networkMode,
        lineInfo,
        deviceInfo,
        saInfo,
        sameWifiNetworkStatus,
        all
    }

    static {
        IS_DUAL_SIM_SUPPORTED = SemSystemProperties.getInt("ro.build.version.oneui", -1) >= 50100;
        IS_MORE_THAN_U_OS = true;
    }

    public boolean init(Context context) {
        Log.i("CmcSettingManager", "init : CmcSettingManager version : 2.1.2, context : " + context);
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        this.mContext = context;
        return isCmcPackageInstalled(context);
    }

    public void deInit() {
        Log.i("CmcSettingManager", "deInit");
        unregisterListener();
        this.mContext = null;
    }

    public boolean registerListener(CmcActivationInfoChangedListener cmcActivationInfoChangedListener) {
        Log.d("CmcSettingManager", "registerListener : CmcActivationInfoChangedListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcActivationInfoChangedListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mCmcActivationChangedListenerList == null) {
            this.mCmcActivationChangedListenerList = new ArrayList<>();
        }
        this.mCmcActivationChangedListenerList.add(cmcActivationInfoChangedListener);
        registerObserver(OBSERVER_TYPE.mainActivation);
        return true;
    }

    public boolean registerListener(CmcCallActivationInfoChangedListener cmcCallActivationInfoChangedListener) {
        Log.d("CmcSettingManager", "registerListener : CmcCallActivationInfoChangedListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcCallActivationInfoChangedListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mCmcCallActivationChangedListenerList == null) {
            this.mCmcCallActivationChangedListenerList = new ArrayList<>();
        }
        this.mCmcCallActivationChangedListenerList.add(cmcCallActivationInfoChangedListener);
        registerObserver(OBSERVER_TYPE.callActivation);
        return true;
    }

    public boolean registerListener(CmcNetworkModeInfoChangedListener cmcNetworkModeInfoChangedListener) {
        Log.d("CmcSettingManager", "registerListener : CmcNetworkModeInfoChangedListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcNetworkModeInfoChangedListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mCmcNetworkModeChangedListenerList == null) {
            this.mCmcNetworkModeChangedListenerList = new ArrayList<>();
        }
        this.mCmcNetworkModeChangedListenerList.add(cmcNetworkModeInfoChangedListener);
        registerObserver(OBSERVER_TYPE.networkMode);
        return true;
    }

    public boolean registerListener(CmcLineInfoChangedListener cmcLineInfoChangedListener) {
        Log.d("CmcSettingManager", "registerListener : CmcLineInfoChangedListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcLineInfoChangedListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mCmcLineInfoChangedListenerList == null) {
            this.mCmcLineInfoChangedListenerList = new ArrayList<>();
        }
        this.mCmcLineInfoChangedListenerList.add(cmcLineInfoChangedListener);
        registerObserver(OBSERVER_TYPE.lineInfo);
        return true;
    }

    public boolean registerListener(CmcDeviceInfoChangedListener cmcDeviceInfoChangedListener) {
        Log.d("CmcSettingManager", "registerListener : CmcDeviceInfoChangedListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcDeviceInfoChangedListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mCmcDeviceInfoChangedListenerList == null) {
            this.mCmcDeviceInfoChangedListenerList = new ArrayList<>();
        }
        this.mCmcDeviceInfoChangedListenerList.add(cmcDeviceInfoChangedListener);
        registerObserver(OBSERVER_TYPE.deviceInfo);
        return true;
    }

    public boolean registerListener(CmcSamsungAccountInfoChangedListener cmcSamsungAccountInfoChangedListener) {
        Log.d("CmcSettingManager", "registerListener : CmcSamsungAccountInfoChangedListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcSamsungAccountInfoChangedListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mCmcSamsungAccountInfoChangedListenerList == null) {
            this.mCmcSamsungAccountInfoChangedListenerList = new ArrayList<>();
        }
        this.mCmcSamsungAccountInfoChangedListenerList.add(cmcSamsungAccountInfoChangedListener);
        registerObserver(OBSERVER_TYPE.saInfo);
        return true;
    }

    public boolean registerListener(CmcSameWifiNetworkStatusListener cmcSameWifiNetworkStatusListener) {
        Log.d("CmcSettingManager", "registerListener : CmcSameWifiNetworkStatusListener");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (cmcSameWifiNetworkStatusListener == null) {
            Log.e("CmcSettingManager", "listener is null");
            return false;
        }
        if (this.mSameWifiNetworkStatusListenerList == null) {
            this.mSameWifiNetworkStatusListenerList = new ArrayList<>();
        }
        this.mSameWifiNetworkStatusListenerList.add(cmcSameWifiNetworkStatusListener);
        registerObserver(OBSERVER_TYPE.sameWifiNetworkStatus);
        return true;
    }

    public boolean unregisterListener() {
        Log.d("CmcSettingManager", "unregisterListener : all");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        Log.d("CmcSettingManager", "context : " + this.mContext);
        this.mCmcActivationChangedListenerList = null;
        this.mCmcMessageActivationChangedListenerList = null;
        this.mCmcCallActivationChangedListenerList = null;
        this.mCmcWatchActivationChangedListenerList = null;
        this.mCmcNetworkModeChangedListenerList = null;
        this.mCmcLineInfoChangedListenerList = null;
        this.mCmcDeviceInfoChangedListenerList = null;
        this.mCmcSamsungAccountInfoChangedListenerList = null;
        this.mSameWifiNetworkStatusListenerList = null;
        unregisterObserver(OBSERVER_TYPE.all);
        return true;
    }

    public boolean getCmcSupported() {
        Log.d("CmcSettingManager", "getCmcSupported");
        return isCmcPackageInstalled(this.mContext);
    }

    public boolean getOwnCmcActivation() {
        Log.d("CmcSettingManager", "getOwnCmcActivation");
        Context context = this.mContext;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        int i = Settings.Global.getInt(context.getContentResolver(), "cmc_activation", 0);
        Log.i("CmcSettingManager", "cmc activation : " + i);
        return i == 1;
    }

    public boolean getCmcCallActivation(String str) {
        Log.i("CmcSettingManager", "getCmcCallActivation : " + str);
        boolean z = false;
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("device_id", str);
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/get_activations", (String) null, bundle);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    int i = call.getInt("call_activation", -1);
                    Log.i("CmcSettingManager", "call inf : getCmcCallActivation success : " + i);
                    if (i == 1) {
                        z = true;
                    }
                } else {
                    Log.e("CmcSettingManager", "call inf : getCmcCallActivation fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return z;
    }

    public CmcSettingManagerConstants.DeviceType getOwnDeviceType() {
        Log.d("CmcSettingManager", "getOwnDeviceType");
        Context context = this.mContext;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        String string = Settings.Global.getString(context.getContentResolver(), "cmc_device_type");
        Log.d("CmcSettingManager", "own device type - db : " + string);
        if (TextUtils.isEmpty(string)) {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager != null) {
                return packageManager.hasSystemFeature("com.samsung.feature.device_category_tablet") ? CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD : CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD;
            }
            String str = SemSystemProperties.get("ro.build.characteristics", "");
            Log.d("CmcSettingManager", "own device type - characteristics : " + str);
            return str.contains("tablet") ? CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD : CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD;
        }
        return getDeviceTypeInternal(string);
    }

    public String getOwnDeviceId() {
        Log.d("CmcSettingManager", "getOwnDeviceId");
        Context context = this.mContext;
        String str = null;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        try {
            Bundle call = context.getContentResolver().call(this.authorityUri, "v1/get_own_device_id", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    str = call.getString("own_device_id", "");
                    Log.d("CmcSettingManager", "call inf : getOwnDeviceId success : " + str);
                } else {
                    Log.e("CmcSettingManager", "call inf : getOwnDeviceId fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                    str = "";
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occurred : " + e.toString());
            str = Settings.Global.getString(this.mContext.getContentResolver(), "cmc_device_id");
        }
        Log.d("CmcSettingManager", "own device id: " + str);
        return str;
    }

    public String getOwnServiceVersion() {
        Log.d("CmcSettingManager", "getOwnServiceVersion");
        Context context = this.mContext;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        String string = Settings.Global.getString(context.getContentResolver(), "cmc_service_version");
        Log.d("CmcSettingManager", "own service version in global : " + string);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String str = SemSystemProperties.get("ro.cmc.version", "");
        Log.d("CmcSettingManager", "own service version in prop : " + str);
        return str;
    }

    public CmcSettingManagerConstants.NetworkMode getOwnNetworkMode() {
        Log.d("CmcSettingManager", "getOwnNetworkMode");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        return getNetworkModeInternal();
    }

    private CmcSettingManagerConstants.NetworkMode getNetworkModeInternal() {
        int i = Settings.Global.getInt(this.mContext.getContentResolver(), "cmc_network_type", -1);
        Log.d("CmcSettingManager", "own network mode : " + i);
        if (i == 0) {
            return CmcSettingManagerConstants.NetworkMode.NETWORK_MODE_USE_MOBILE_NETWORK;
        }
        if (1 == i) {
            return CmcSettingManagerConstants.NetworkMode.NETWORK_MODE_WIFI_ONLY;
        }
        return CmcSettingManagerConstants.NetworkMode.NETWORK_MODE_UNDEFINED;
    }

    public String getLineId() {
        Log.d("CmcSettingManager", "getLineId");
        Context context = this.mContext;
        String str = null;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        try {
            Bundle call = context.getContentResolver().call(this.authorityUri, "v1/get_line_id", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    String string = call.getString(NSDSContractExt.ServiceColumns.LINE_ID, "");
                    Log.d("CmcSettingManager", "getLineId success : " + inspector(string));
                    str = string;
                } else {
                    Log.e("CmcSettingManager", "getLineId fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                    str = "";
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return str;
    }

    public ArrayList<String> getLinePcscfAddrList() {
        Log.d("CmcSettingManager", "getLinePcscfAddrList");
        Context context = this.mContext;
        ArrayList<String> arrayList = null;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        try {
            Bundle call = context.getContentResolver().call(this.authorityUri, "v1/get_line_pcscf_addr_list", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    ArrayList<String> stringArrayList = call.getStringArrayList("pcscf_addr_list");
                    Log.d("CmcSettingManager", "call inf : getPcscfAddrList success : " + inspector(stringArrayList));
                    arrayList = stringArrayList;
                } else {
                    Log.e("CmcSettingManager", "call inf : getPcscfAddrList fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return arrayList;
    }

    public String getLineImpu() {
        Log.d("CmcSettingManager", "getLineImpu");
        Context context = this.mContext;
        String str = null;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        try {
            Bundle call = context.getContentResolver().call(this.authorityUri, "v1/get_line_impu", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    String string = call.getString("impu", "");
                    Log.d("CmcSettingManager", "call inf : getLineImpu success : " + inspector(string));
                    str = string;
                } else {
                    Log.e("CmcSettingManager", "call inf : getLineImpu fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                    str = "";
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return str;
    }

    public ArrayList<String> getDeviceIdList() {
        Log.d("CmcSettingManager", "getDeviceIdList");
        Context context = this.mContext;
        ArrayList<String> arrayList = null;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        try {
            Bundle call = context.getContentResolver().call(this.authorityUri, "v1/get_device_id_list", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    ArrayList<String> stringArrayList = call.getStringArrayList("device_id_list");
                    Log.d("CmcSettingManager", "call inf : getDeviceIdList success : " + stringArrayList);
                    arrayList = stringArrayList;
                } else {
                    Log.e("CmcSettingManager", "call inf : getDeviceIdList fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return arrayList;
    }

    public CmcSettingManagerConstants.DeviceType getDeviceType(String str) {
        Log.d("CmcSettingManager", "getDeviceType : " + str);
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        CmcSettingManagerConstants.DeviceType deviceType = CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_UNDEFINED;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("device_id", str);
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/get_device_type", (String) null, bundle);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    String string = call.getString(NSDSContractExt.DeviceColumns.DEVICE_TYPE, "");
                    Log.d("CmcSettingManager", "call inf : getDeviceType success : " + string);
                    deviceType = getDeviceTypeInternal(string);
                } else {
                    Log.e("CmcSettingManager", "call inf : getDeviceType fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return deviceType;
    }

    public boolean isCallAllowedSdByPd(String str) {
        Log.d("CmcSettingManager", "isCallAllowedSdByPd : " + str);
        boolean z = false;
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("device_id", str);
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/get_call_allowed_sd_by_pd", (String) null, bundle);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    int i = call.getInt("call_allowed_sd_by_pd", -1);
                    Log.d("CmcSettingManager", "call inf : isCallAllowedSdByPd success : " + i);
                    if (i == 1) {
                        z = true;
                    }
                } else {
                    Log.e("CmcSettingManager", "call inf : isCallAllowedSdByPd fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return z;
    }

    public CmcDeviceInfo getDeviceInfo(String str) {
        Log.d("CmcSettingManager", "getDeviceInfo : " + str);
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("device_id", str);
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/get_device_info", (String) null, bundle);
            if (call == null) {
                return null;
            }
            if (call.getInt("result", -1) == 1) {
                CmcDeviceInfo cmcDeviceInfo = new CmcDeviceInfo();
                cmcDeviceInfo.setDeviceId(str);
                for (String str2 : call.keySet()) {
                    if ("device_name".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setDeviceName(call.getString(str2));
                    } else if ("device_category".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setDeviceCategory(getDeviceCategoryInternal(call.getString(str2)));
                    } else if (NSDSContractExt.DeviceColumns.DEVICE_TYPE.equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setDeviceType(getDeviceTypeInternal(call.getString(str2)));
                    } else if ("activation".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setActivation(call.getInt(str2) == 1);
                    } else if ("message_activation".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setMessageActivation(call.getInt(str2) == 1);
                    } else if ("call_activation".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setCallActivation(call.getInt(str2) == 1);
                    } else if ("message_allowed_sd_by_pd".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setMessageAllowedSdByPd(call.getInt(str2) == 1);
                    } else if ("call_allowed_sd_by_pd".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setCallAllowedSdByPd(call.getInt(str2) == 1);
                    } else if ("emergency_supported".equalsIgnoreCase(str2)) {
                        cmcDeviceInfo.setEmergencyCallSupported(call.getBoolean(str2));
                    }
                }
                return cmcDeviceInfo;
            }
            Log.e("CmcSettingManager", "call inf : getDeviceInfo fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
            return null;
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
            return null;
        }
    }

    public CmcSaInfo getSamsungAccountInfo() {
        Log.d("CmcSettingManager", "getSamsungAccountInfo");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return null;
        }
        CmcSaInfo cmcSaInfo = new CmcSaInfo();
        try {
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/get_sa_info", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    cmcSaInfo.setSaUserId(call.getString("samsung_user_id"));
                    cmcSaInfo.setSaAccessToken(call.getString("access_token"));
                    Log.d("CmcSettingManager", "call inf : getSamsungAccountInfo success");
                } else {
                    Log.e("CmcSettingManager", "call inf : getSamsungAccountInfo fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
                }
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return cmcSaInfo;
    }

    public boolean isSameWifiNetworkOnly() {
        Log.d("CmcSettingManager", "isSameWifiNetworkOnly");
        Context context = this.mContext;
        if (context == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        int i = Settings.Global.getInt(context.getContentResolver(), "cmc_same_wifi_network_status", 0);
        Log.d("CmcSettingManager", "sameWifiNetworkStatus : " + i);
        return i == 1;
    }

    public boolean isEmergencyCallSupported() {
        Log.d("CmcSettingManager", "isEmergencyCallSupported");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (!getOwnCmcActivation()) {
            Log.e("CmcSettingManager", "cmc activation is false");
            return false;
        }
        ArrayList<String> deviceIdList = getDeviceIdList();
        if (deviceIdList == null || deviceIdList.size() <= 0) {
            Log.e("CmcSettingManager", "deviceIdList is empty");
            return false;
        }
        String ownDeviceId = getOwnDeviceId();
        if (TextUtils.isEmpty(ownDeviceId)) {
            Log.e("CmcSettingManager", "ownDeviceId is empty");
            return false;
        }
        Iterator<String> it = deviceIdList.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            String next = it.next();
            CmcDeviceInfo deviceInfo = getDeviceInfo(next);
            if (deviceInfo != null) {
                if (deviceInfo.getDeviceType() == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD) {
                    z2 = deviceInfo.isEmergencyCallSupported();
                }
                if (ownDeviceId.equalsIgnoreCase(next)) {
                    z = deviceInfo.isEmergencyCallSupported();
                }
            }
        }
        Log.d("CmcSettingManager", "isOwnEmergencyCallSupported(" + z + "), isPdEmergencyCallSupported(" + z2 + ")");
        return z && z2;
    }

    public boolean isDualSimSupportedOnPd() {
        int i;
        Log.d("CmcSettingManager", "isDualSimSupportedOnPd");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return false;
        }
        if (!isApiSupportedWithDualSimSupported()) {
            return false;
        }
        if (IS_MORE_THAN_U_OS) {
            CmcSettingManagerConstants.DeviceType ownDeviceType = getOwnDeviceType();
            if (ownDeviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD) {
                i = Settings.Global.getInt(this.mContext.getContentResolver(), CmcSettingManagerConstants.SETTINGS_KEY_CMC_IS_DUAL_SIM_SUPPORTED, CmcSettingManagerConstants.KEY_NOT_EXIST);
            } else {
                if (ownDeviceType != CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD) {
                    return false;
                }
                i = Settings.Global.getInt(this.mContext.getContentResolver(), CmcSettingManagerConstants.SETTINGS_KEY_CMC_IS_DUAL_SIM_SUPPORTED_ON_PD, CmcSettingManagerConstants.KEY_NOT_EXIST);
            }
            if (i != CmcSettingManagerConstants.KEY_NOT_EXIST) {
                Log.i("CmcSettingManager", "call inf : isDualSimSupportedOnPd success with global db : " + i);
                return i == CmcSettingManagerConstants.SUPPORTED;
            }
        }
        try {
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/is_dual_sim_supported_on_pd", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    Log.d("CmcSettingManager", "call inf : isDualSimSupportedOnPd success : " + call.getBoolean("dual_sim_supported_on_pd", false));
                    return true;
                }
                Log.e("CmcSettingManager", "call inf : isDualSimSupportedOnPd fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return false;
    }

    public List<Integer> getSelectedSimSlotsOnPd() {
        int i;
        Log.d("CmcSettingManager", "getSelectedSimSlotsOnPd");
        if (this.mContext == null) {
            Log.e("CmcSettingManager", "context is null");
            return new ArrayList();
        }
        if (!isApiSupportedWithDualSimSupported()) {
            return new ArrayList();
        }
        if (IS_MORE_THAN_U_OS && (i = Settings.Global.getInt(this.mContext.getContentResolver(), CmcSettingManagerConstants.SETTINGS_KEY_CMC_SELECTED_SIMS_ON_PD, CmcSettingManagerConstants.KEY_NOT_EXIST)) != CmcSettingManagerConstants.KEY_NOT_EXIST) {
            Log.i("CmcSettingManager", "call inf : getSelectedSimSlotsOnPd success with global db : " + i);
            if (i == 0) {
                return new ArrayList(Arrays.asList(0));
            }
            if (i == 1) {
                return new ArrayList(Arrays.asList(1));
            }
            if (i == 2) {
                return new ArrayList(Arrays.asList(0, 1));
            }
            return new ArrayList();
        }
        try {
            Bundle call = this.mContext.getContentResolver().call(this.authorityUri, "v1/get_selected_sim_slots_on_pd", (String) null, (Bundle) null);
            if (call != null) {
                if (call.getInt("result", -1) == 1) {
                    ArrayList<Integer> integerArrayList = call.getIntegerArrayList("selected_sim_slots_on_pd");
                    Log.d("CmcSettingManager", "call inf : getSelectedSimSlotsOnPd success");
                    if (integerArrayList != null) {
                        return integerArrayList;
                    }
                    Log.e("CmcSettingManager", "selectedSimSlotsList is null");
                    return new ArrayList();
                }
                Log.e("CmcSettingManager", "call inf : getSelectedSimSlotsOnPd fail : " + call.getString(ImIntent.Extras.ERROR_REASON));
            }
        } catch (Exception e) {
            Log.e("CmcSettingManager", "exception is occured : " + e.toString());
        }
        return new ArrayList();
    }

    private boolean isApiSupportedWithDualSimSupported() {
        if (IS_DUAL_SIM_SUPPORTED) {
            return true;
        }
        Log.e("CmcSettingManager", "invalid oneui version");
        return false;
    }

    private void registerObserver(OBSERVER_TYPE observer_type) {
        if (Looper.myLooper() == null) {
            Log.d("CmcSettingManager", "looper is null create");
            Looper.prepare();
        }
        switch (AnonymousClass19.$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[observer_type.ordinal()]) {
            case 1:
                registerCmcActivationObserver();
                break;
            case 2:
                registerCmcMessageActivationObserver();
                break;
            case 3:
                registerCmcCallActivationObserver();
                break;
            case 4:
                registerCmcWatchActivationObserver();
                break;
            case 5:
                registerCmcNetworkModeObserver();
                break;
            case 6:
                registerCmcLineInfoObserver();
                break;
            case 7:
                registerCmcDeviceInfoObserver();
                break;
            case 8:
                registerSamsungAccountInfoObserver();
                break;
            case 9:
                registerSameWifiNetworkStatusObserver();
                break;
        }
    }

    /* renamed from: com.samsung.android.cmcsetting.CmcSettingManager$19, reason: invalid class name */
    static /* synthetic */ class AnonymousClass19 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE;

        static {
            int[] iArr = new int[OBSERVER_TYPE.values().length];
            $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE = iArr;
            try {
                iArr[OBSERVER_TYPE.mainActivation.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.messageActivation.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.callActivation.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.watchActivation.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.networkMode.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.lineInfo.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.deviceInfo.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.saInfo.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.sameWifiNetworkStatus.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[OBSERVER_TYPE.all.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private void registerCmcActivationObserver() {
        if (this.mCmcActivationDbChangeObserver == null) {
            this.mCmcActivationDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.1
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mCmcActivationDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcActivation();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForCmcActivation, true, this.mCmcActivationDbChangeObserver);
        }
    }

    private void registerCmcMessageActivationObserver() {
        if (this.mCmcMessageActivationDbChangeObserver == null) {
            this.mCmcMessageActivationDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.2
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mCmcMessageActivationDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcMessageActivation();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForCmcMessageActivation, true, this.mCmcMessageActivationDbChangeObserver);
        }
    }

    private void registerCmcCallActivationObserver() {
        if (this.mCmcCallActivationDbChangeObserver == null) {
            this.mCmcCallActivationDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.3
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mCmcCallActivationDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcCallActivation();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForCmcCallActivation, true, this.mCmcCallActivationDbChangeObserver);
        }
    }

    private void registerCmcWatchActivationObserver() {
        if (this.mWatchActivationDbChangeObserver == null) {
            this.mWatchActivationDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.4
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mWatchActivationDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcWatchActivation();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForWatchActivation, true, this.mWatchActivationDbChangeObserver);
        }
    }

    private void registerCmcNetworkModeObserver() {
        if (this.mNetworkModeDbChangeObserver == null) {
            this.mNetworkModeDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.5
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mNetworkModeDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcNetworkMode();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForNetworkMode, true, this.mNetworkModeDbChangeObserver);
        }
    }

    private void registerCmcLineInfoObserver() {
        if (this.mLinesDbChangeObserver == null) {
            this.mLinesDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.6
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mLinesDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcLines();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForLines, true, this.mLinesDbChangeObserver);
        }
    }

    private void registerCmcDeviceInfoObserver() {
        if (this.mDevicesDbChangeObserver == null) {
            this.mDevicesDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.7
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mDevicesDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcDevices();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForDevices, true, this.mDevicesDbChangeObserver);
        }
    }

    private void registerSamsungAccountInfoObserver() {
        if (this.mSaInfoDbChangeObserver == null) {
            this.mSaInfoDbChangeObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.8
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mSaInfoDbChangeObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventCmcSaInfo();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForSaInfo, true, this.mSaInfoDbChangeObserver);
        }
    }

    private void registerSameWifiNetworkStatusObserver() {
        if (this.mSameWifiNetworkStatusObserver == null) {
            this.mSameWifiNetworkStatusObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.cmcsetting.CmcSettingManager.9
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    Log.d("CmcSettingManager", "mSameWifiNetworkStatusObserver : selfChange = " + z);
                    CmcSettingManager.this.sendEventSameWifiNetworkStatus();
                }
            };
            this.mContext.getContentResolver().registerContentObserver(this.authorityUriForSameWifiNetworkStatus, true, this.mSameWifiNetworkStatusObserver);
        }
    }

    private void unregisterObserver(OBSERVER_TYPE observer_type) {
        switch (AnonymousClass19.$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE[observer_type.ordinal()]) {
            case 1:
                unregisterCmcActivationObserver();
                break;
            case 2:
                unregisterCmcMessageActivationObserver();
                break;
            case 3:
                unregisterCmcCallActivationObserver();
                break;
            case 4:
                unregisterCmcWatchActivationObserver();
                break;
            case 5:
                unregisterCmcNetworkModeObserver();
                break;
            case 6:
                unregisterCmcLineInfoObserver();
                break;
            case 7:
                unregisterCmcDeviceInfoObserver();
                break;
            case 8:
                unregisterSamsungAccountInfoObserver();
                break;
            case 9:
                unregisterSameWifiNetworkStatusObserver();
                break;
            case 10:
                unregisterCmcActivationObserver();
                unregisterCmcMessageActivationObserver();
                unregisterCmcCallActivationObserver();
                unregisterCmcWatchActivationObserver();
                unregisterCmcNetworkModeObserver();
                unregisterCmcLineInfoObserver();
                unregisterCmcDeviceInfoObserver();
                unregisterSamsungAccountInfoObserver();
                unregisterSameWifiNetworkStatusObserver();
                break;
        }
    }

    private void unregisterCmcActivationObserver() {
        if (this.mCmcActivationDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mCmcActivationDbChangeObserver);
            this.mCmcActivationDbChangeObserver = null;
        }
    }

    private void unregisterCmcMessageActivationObserver() {
        if (this.mCmcMessageActivationDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mCmcMessageActivationDbChangeObserver);
            this.mCmcMessageActivationDbChangeObserver = null;
        }
    }

    private void unregisterCmcCallActivationObserver() {
        if (this.mCmcCallActivationDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mCmcCallActivationDbChangeObserver);
            this.mCmcCallActivationDbChangeObserver = null;
        }
    }

    private void unregisterCmcWatchActivationObserver() {
        if (this.mWatchActivationDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mWatchActivationDbChangeObserver);
            this.mWatchActivationDbChangeObserver = null;
        }
    }

    private void unregisterCmcNetworkModeObserver() {
        if (this.mNetworkModeDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mNetworkModeDbChangeObserver);
            this.mNetworkModeDbChangeObserver = null;
        }
    }

    private void unregisterCmcLineInfoObserver() {
        if (this.mLinesDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mLinesDbChangeObserver);
            this.mLinesDbChangeObserver = null;
        }
    }

    private void unregisterCmcDeviceInfoObserver() {
        if (this.mDevicesDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mDevicesDbChangeObserver);
            this.mDevicesDbChangeObserver = null;
        }
    }

    private void unregisterSamsungAccountInfoObserver() {
        if (this.mSaInfoDbChangeObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mSaInfoDbChangeObserver);
            this.mSaInfoDbChangeObserver = null;
        }
    }

    private void unregisterSameWifiNetworkStatusObserver() {
        if (this.mSameWifiNetworkStatusObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mSameWifiNetworkStatusObserver);
            this.mSameWifiNetworkStatusObserver = null;
        }
    }

    private CmcSettingManagerConstants.DeviceType getDeviceTypeInternal(String str) {
        if ("pd".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD;
        }
        if ("sd".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD;
        }
        return CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_UNDEFINED;
    }

    private CmcSettingManagerConstants.DeviceCategory getDeviceCategoryInternal(String str) {
        if ("Phone".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_PHONE;
        }
        if ("Tablet".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_TABLET;
        }
        if ("BT-Watch".equalsIgnoreCase(str) || "Watch".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_BT_WATCH;
        }
        if ("Speaker".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_SPEAKER;
        }
        if ("PC".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_PC;
        }
        if ("TV".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_TV;
        }
        if ("Laptop".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_LAPTOP;
        }
        if ("VST".equalsIgnoreCase(str)) {
            return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_VST;
        }
        return CmcSettingManagerConstants.DeviceCategory.DEVICE_CATEGORY_UNDEFINED;
    }

    private boolean isCmcPackageInstalled(Context context) {
        try {
            context.getPackageManager().getPackageInfo(CmcConstants.SERVICE_PACKAGE_NAME, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("CmcSettingManager", "cmc package is not exist : " + e);
            return false;
        }
    }

    private String inspector(Object obj) {
        if (obj == null) {
            return null;
        }
        if (SHIP_BUILD) {
            return "xxxxx";
        }
        return "" + obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcActivation() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.10
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcActivationChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcActivationChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcActivationInfoChangedListener cmcActivationInfoChangedListener = (CmcActivationInfoChangedListener) it.next();
                        if (cmcActivationInfoChangedListener != null) {
                            cmcActivationInfoChangedListener.onChangedCmcActivation();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcMessageActivation() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.11
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcMessageActivationChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcMessageActivationChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcMessageActivationInfoChangedListener cmcMessageActivationInfoChangedListener = (CmcMessageActivationInfoChangedListener) it.next();
                        if (cmcMessageActivationInfoChangedListener != null) {
                            cmcMessageActivationInfoChangedListener.onChangedCmcMessageActivation();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcCallActivation() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.12
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcCallActivationChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcCallActivationChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcCallActivationInfoChangedListener cmcCallActivationInfoChangedListener = (CmcCallActivationInfoChangedListener) it.next();
                        if (cmcCallActivationInfoChangedListener != null) {
                            cmcCallActivationInfoChangedListener.onChangedCmcCallActivation();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcWatchActivation() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.13
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcWatchActivationChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcWatchActivationChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcWatchActivationInfoChangedListener cmcWatchActivationInfoChangedListener = (CmcWatchActivationInfoChangedListener) it.next();
                        if (cmcWatchActivationInfoChangedListener != null) {
                            cmcWatchActivationInfoChangedListener.onChangedWatchActivation();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcNetworkMode() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.14
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcNetworkModeChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcNetworkModeChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcNetworkModeInfoChangedListener cmcNetworkModeInfoChangedListener = (CmcNetworkModeInfoChangedListener) it.next();
                        if (cmcNetworkModeInfoChangedListener != null) {
                            cmcNetworkModeInfoChangedListener.onChangedNetworkMode();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcLines() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.15
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcLineInfoChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcLineInfoChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcLineInfoChangedListener cmcLineInfoChangedListener = (CmcLineInfoChangedListener) it.next();
                        if (cmcLineInfoChangedListener != null) {
                            cmcLineInfoChangedListener.onChangedLineInfo();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcDevices() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.16
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcDeviceInfoChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcDeviceInfoChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcDeviceInfoChangedListener cmcDeviceInfoChangedListener = (CmcDeviceInfoChangedListener) it.next();
                        if (cmcDeviceInfoChangedListener != null) {
                            cmcDeviceInfoChangedListener.onChangedDeviceInfo();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventCmcSaInfo() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.17
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mCmcSamsungAccountInfoChangedListenerList != null) {
                    Iterator it = CmcSettingManager.this.mCmcSamsungAccountInfoChangedListenerList.iterator();
                    while (it.hasNext()) {
                        CmcSamsungAccountInfoChangedListener cmcSamsungAccountInfoChangedListener = (CmcSamsungAccountInfoChangedListener) it.next();
                        if (cmcSamsungAccountInfoChangedListener != null) {
                            cmcSamsungAccountInfoChangedListener.onChangedSamsungAccountInfo();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventSameWifiNetworkStatus() {
        new Thread(new Runnable() { // from class: com.samsung.android.cmcsetting.CmcSettingManager.18
            @Override // java.lang.Runnable
            public void run() {
                if (CmcSettingManager.this.mSameWifiNetworkStatusListenerList != null) {
                    Iterator it = CmcSettingManager.this.mSameWifiNetworkStatusListenerList.iterator();
                    while (it.hasNext()) {
                        CmcSameWifiNetworkStatusListener cmcSameWifiNetworkStatusListener = (CmcSameWifiNetworkStatusListener) it.next();
                        if (cmcSameWifiNetworkStatusListener != null) {
                            cmcSameWifiNetworkStatusListener.onChangedSameWifiNetworkStatus();
                        }
                    }
                }
            }
        }).start();
    }
}
