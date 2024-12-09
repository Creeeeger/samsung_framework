package com.sec.internal.ims.core.iil;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.core.SimConstants;
import com.sec.internal.constants.ims.os.IccCardConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ServiceStateWrapper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.iil.IIilManager;
import com.sec.internal.log.IMSLog;
import java.io.IOException;

/* loaded from: classes.dex */
public class IilManager extends Handler implements IIilManager {
    static final String DMCONFIG_URI = "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/";
    protected static final int EVENT_IIL_CONNECTED = 101;
    private static final int EVENT_IMS_READY = 12;
    private static final int EVENT_IMS_SETTING_CHANGED = 5;
    private static final int EVENT_IMS_SETTING_DELAYED = 11;
    private static final int EVENT_IMS_SETTING_REFRESH = 6;
    private static final int EVENT_MODE_CHANGE_DONE = 10;
    protected static final int EVENT_NEW_IPC = 100;
    private static final int EVENT_REGISTRATION_DONE = 1;
    private static final int EVENT_REGISTRATION_E911_DONE = 3;
    private static final int EVENT_REGISTRATION_E911_FAILED = 4;
    private static final int EVENT_REGISTRATION_FAILED = 2;
    private static final int EVENT_REGISTRATION_RETRY_OVER = 7;
    private static final int EVENT_SIM_STATE_CHANGED = 9;
    private static final int EVENT_UPDATE_SSAC_INFO = 14;
    static final int FEATURE_TAG_CS = 1;
    static final int FEATURE_TAG_MMTEL = 16;
    static final int FEATURE_TAG_SMSIP = 2;
    static final int FEATURE_TAG_VIDEO = 8;
    static final int FEATURE_TAG_VOLTE = 4;
    private static final int ISIM_LOADED_BOOTING = 0;
    private static final String LOG_TAG = "IilManager";
    static final int NET_TYPE_BLUETOOTH = 3;
    static final int NET_TYPE_ETHERNET = 4;
    static final int NET_TYPE_MAX = 5;
    static final int NET_TYPE_MOBILE = 0;
    static final int NET_TYPE_WIFI = 1;
    static final int NET_TYPE_WIMAX = 2;
    static final int PREF_REGISTRATION_DONE = 3;
    static final int PREF_SETTING_CHANGED = 2;
    static final int PREF_SETTING_REFRESH = 1;
    private static final int REQUEST_NETWORK_MODE_CHANGE = 5;
    private final Context mContext;
    int mEcmp;
    int[] mEcmpByNetType;
    int mEpdgMode;
    int[] mEpdgModeByNetType;
    int mFeatureMask;
    int[] mFeatureMaskByNetType;
    int mFeatureTag;
    private final IImsFramework mImsFramework;
    IilImsPreference mImsPreference;
    private final BroadcastReceiver mIntentReceiver;
    private final IpcDispatcher mIpcDispatcher;
    int mLimitedMode;
    int[] mLimitedModeByNetType;
    private boolean mNeedTwwan911TimerUpdate;
    private int mNetworkClass;
    private int mNetworkType;
    int mPdnType;
    private final IilPhoneStateListener mPhoneStateListener;
    private ImsRegistration mReg;
    int mSlotId;
    int mSrvccVersion;
    private int mSubId;

    private byte convertSupportTypeToByte(boolean z, boolean z2) {
        if (z && z2) {
            return (byte) 3;
        }
        if (z) {
            return (byte) 1;
        }
        return z2 ? (byte) 2 : (byte) 0;
    }

    public IilManager(Context context, int i, IImsFramework iImsFramework) {
        super(Looper.myLooper());
        this.mNetworkType = 0;
        this.mNetworkClass = 0;
        this.mSlotId = -1;
        this.mFeatureMaskByNetType = new int[5];
        this.mEcmpByNetType = new int[5];
        this.mLimitedModeByNetType = new int[5];
        this.mEpdgModeByNetType = new int[5];
        this.mReg = null;
        this.mNeedTwwan911TimerUpdate = true;
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.iil.IilManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.SIM_STATE_CHANGED".equals(intent.getAction())) {
                    String stringExtra = intent.getStringExtra("ss");
                    int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    IMSLog.s(IilManager.LOG_TAG, IilManager.this.mSlotId, "SimStateChanaged: phoneId: " + intExtra);
                    IilManager iilManager = IilManager.this;
                    if (intExtra == iilManager.mSlotId) {
                        iilManager.sendMessage(iilManager.obtainMessage(9, stringExtra));
                    }
                }
            }
        };
        this.mSubId = -1;
        this.mPhoneStateListener = new IilPhoneStateListener();
        IMSLog.s(LOG_TAG, i, LOG_TAG);
        this.mContext = context;
        this.mImsFramework = iImsFramework;
        this.mFeatureMask = 0;
        this.mPdnType = 0;
        this.mFeatureTag = 0;
        this.mEcmp = 0;
        this.mLimitedMode = 0;
        this.mEpdgMode = 0;
        this.mSlotId = i;
        this.mSrvccVersion = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            this.mFeatureMaskByNetType[i2] = 0;
            this.mEcmpByNetType[i2] = 0;
            this.mLimitedModeByNetType[i2] = 0;
            this.mEpdgModeByNetType[i2] = 0;
        }
        IpcDispatcher ipcDispatcher = IpcDispatcherFactory.getIpcDispatcher(this.mSlotId);
        this.mIpcDispatcher = ipcDispatcher;
        ipcDispatcher.setRegistrant(100, this);
        ipcDispatcher.setRegistrantForIilConnected(101, this);
        ipcDispatcher.initDispatcher();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
        ImsSettingsObserver imsSettingsObserver = new ImsSettingsObserver(this);
        this.mContext.getContentResolver().registerContentObserver(GlobalSettingsConstants.CONTENT_URI, false, imsSettingsObserver);
        this.mContext.getContentResolver().registerContentObserver(Uri.parse(DMCONFIG_URI), true, imsSettingsObserver);
    }

    private class ImsSettingsObserver extends ContentObserver {
        public ImsSettingsObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            IMSLog.i(IilManager.LOG_TAG, "ImsSettings updated");
            int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
            IilManager iilManager = IilManager.this;
            if (simSlotFromUri != iilManager.mSlotId) {
                IMSLog.i(IilManager.LOG_TAG, "phoneId mismatch, No need to update");
            } else {
                iilManager.removeMessages(5);
                IilManager.this.sendEmptyMessage(5);
            }
        }
    }

    private void handleNewIpc(IpcMessage ipcMessage) {
        if (ipcMessage.getMainCmd() == 112) {
            if (ipcMessage.getSubCmd() == 11) {
                handleSetDeregistration((IilIpcMessage) ipcMessage);
                return;
            }
            if (ipcMessage.getSubCmd() == 14) {
                handleSSACInfo((IilIpcMessage) ipcMessage);
                return;
            }
            if (ipcMessage.getSubCmd() == 16) {
                handleImsSupportStateChanged((IilIpcMessage) ipcMessage);
                return;
            }
            if (ipcMessage.getSubCmd() == 17) {
                handleIsimLoaded((IilIpcMessage) ipcMessage);
                return;
            }
            if (ipcMessage.getSubCmd() == 6) {
                if (ipcMessage.getCmdType() == 2) {
                    handleGetImsPreference();
                }
            } else if (ipcMessage.getSubCmd() == 21) {
                handleSetPreferredNetworkType((IilIpcMessage) ipcMessage);
            } else if (ipcMessage.getSubCmd() == 22) {
                handleSipSuspend((IilIpcMessage) ipcMessage);
            } else if (ipcMessage.getSubCmd() == 33) {
                handleVonrUserStatus((IilIpcMessage) ipcMessage);
            }
        }
    }

    public void onIilConnected() {
        IMSLog.i(LOG_TAG, this.mSlotId, "onIilConnected");
        for (int i = 0; i < 5; i++) {
            IMSLog.s(LOG_TAG, this.mSlotId, "IMS registraton at onIilConnected() : mFeatureMaskByNetType[" + i + "]=" + this.mFeatureMaskByNetType[i]);
            int i2 = this.mFeatureMaskByNetType[i];
            if (i2 > 0) {
                if (!this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsRegisgtrationInfo(this.mLimitedModeByNetType[i] == 0 ? 1 : 2, (i2 & 1) > 0, (i2 & 2) > 0, (i2 & 4) > 0, (i2 & 8) > 0, (i2 & 32) > 0, i, this.mFeatureTag, this.mEcmpByNetType[i], this.mEpdgModeByNetType[i], 0, 0, null, 0))) {
                    IMSLog.s(LOG_TAG, this.mSlotId, "send IMS registraton info failed at onIilConnected() :" + i);
                }
            }
        }
    }

    public void handleSetDeregistration(IilIpcMessage iilIpcMessage) {
        this.mIpcDispatcher.sendGeneralResponse(true, (IpcMessage) iilIpcMessage);
        byte[] body = iilIpcMessage.getBody();
        IMSLog.s(LOG_TAG, this.mSlotId, "de-reg reason : " + ((int) body[0]));
        this.mImsFramework.sendDeregister(body[0], this.mSlotId);
    }

    public void handleGetImsPreference() {
        IMSLog.s(LOG_TAG, this.mSlotId, "handleGetImsPreference");
        UpdateImsPreference();
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsPreferenceResp(this.mImsPreference));
    }

    public void handleSSACInfo(IilIpcMessage iilIpcMessage) {
        IMSLog.s(LOG_TAG, this.mSlotId, "handleSSACInfo()");
        byte[] body = iilIpcMessage.getBody();
        byte b = body[0];
        int i = ((body[2] & 255) << 8) + ((body[1] & 255) << 0);
        byte b2 = body[3];
        int i2 = ((body[5] & 255) << 8) + ((body[4] & 255) << 0);
        removeMessages(14);
        try {
            this.mImsFramework.getServiceModuleManager().getVolteServiceModule().updateSSACInfo(this.mSlotId, b, i, b2, i2);
        } catch (NullPointerException unused) {
            IMSLog.e(LOG_TAG, this.mSlotId, "handleSSACInfo: NPE - resend SSAC to VSM");
            sendMessageDelayed(obtainMessage(14, iilIpcMessage), 500L);
        }
    }

    public void handleImsSupportStateChanged(IilIpcMessage iilIpcMessage) {
        this.mIpcDispatcher.sendGeneralResponse(true, (IpcMessage) iilIpcMessage);
        byte[] body = iilIpcMessage.getBody();
        IMSLog.s(LOG_TAG, this.mSlotId, "handleImsSupportStateChanged() reason: " + ((int) body[0]) + "state: " + ((int) body[1]));
    }

    public void handleIsimLoaded(IilIpcMessage iilIpcMessage) {
        byte b = iilIpcMessage.getBody()[0];
        IMSLog.s(LOG_TAG, this.mSlotId, "handleIsimLoaded() isRefreshed: " + ((int) b));
        if (b == 0) {
            this.mImsFramework.setIsimLoaded();
        }
    }

    public void handleSetPreferredNetworkType(IilIpcMessage iilIpcMessage) {
        this.mIpcDispatcher.sendGeneralResponse(true, (IpcMessage) iilIpcMessage);
        byte[] body = iilIpcMessage.getBody();
        byte b = body[0];
        byte b2 = body[1];
        IMSLog.i(LOG_TAG, this.mSlotId, "handleSetPreferredNetworkType reason: " + ((int) b) + " new NW type: " + ((int) b2));
        if (needSkipDeregister(b2)) {
            sendMessage(obtainMessage(10));
        } else {
            this.mImsFramework.sendDeregister(5, this.mSlotId);
        }
        if (!DeviceUtil.dimVolteMenuBySaMode(this.mSlotId) || b2 < 23) {
            return;
        }
        ImsConstants.SystemSettings.setVoiceCallType(this.mContext, 0, this.mSlotId);
    }

    private boolean needSkipDeregister(int i) {
        Mno simMno = SimUtil.getSimMno(this.mSlotId);
        ImsRegistration imsRegistration = this.mReg;
        if (imsRegistration == null || imsRegistration.getEpdgStatus()) {
            return true;
        }
        if (SimConstants.SINGLE.equals(SimUtil.getConfigDualIMS()) && simMno == Mno.ATT) {
            return false;
        }
        switch (i) {
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 15:
            case 17:
            case 19:
            case 20:
            case 22:
                return true;
            case 13:
            case 14:
            case 16:
            case 18:
            case 21:
            default:
                return i >= 23;
        }
    }

    public void handleSipSuspend(IilIpcMessage iilIpcMessage) {
        byte[] body = iilIpcMessage.getBody();
        byte b = body[0];
        byte b2 = body[1];
        byte b3 = body[2];
        byte b4 = body[3];
        long j = 0;
        for (int i = 11; i >= 4; i--) {
            if (body.length > i) {
                j = (j << 8) + (body[i] & 255);
            }
        }
        if (b == 1) {
            if (((b3 == 3 || b3 == 6) && (b4 == 3 || b4 == 6)) || b2 == 4) {
                this.mImsFramework.getServiceModuleManager().getVolteServiceModule().sendHandOffEvent(this.mSlotId, b2, b3, b4, j);
            } else {
                this.mImsFramework.suspendRegister(b2 == 1, this.mSlotId);
            }
        }
    }

    public void handleVonrUserStatus(IilIpcMessage iilIpcMessage) {
        byte b = iilIpcMessage.getBody()[0];
        IMSLog.s(LOG_TAG, this.mSlotId, "handleVonrUserStatus status= " + ((int) b));
        this.mImsFramework.getRegistrationManager().updateVo5gIconStatus(this.mSlotId, b);
    }

    public void onReceiveRegistrationRetryOver() {
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsRetryOverNoti(5, false, false, false, false, false, 0, 0));
    }

    public void onReceiveImsSettingChange() {
        IMSLog.s(LOG_TAG, this.mSlotId, "onReceiveImsSettingChange");
        this.mNeedTwwan911TimerUpdate = true;
        UpdateImsPreference();
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsPreferenceNoti(this.mImsPreference, 2));
    }

    public void onReceiveImsSettingRefresh() {
        IMSLog.s(LOG_TAG, this.mSlotId, "onReceiveImsSettingRefresh");
        UpdateImsPreference();
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsPreferenceNoti(this.mImsPreference, 1));
    }

    public void onReceiveSimStateChange(String str) {
        IMSLog.s(LOG_TAG, this.mSlotId, "onReceiveSimStateChange() : simState=" + str);
        if (SimUtil.getSimMno(this.mSlotId) == Mno.ATT && IccCardConstants.INTENT_VALUE_ICC_ABSENT.equals(str)) {
            onReceiveImsSettingRefresh();
        }
        if (IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(str)) {
            this.mNeedTwwan911TimerUpdate = true;
        }
    }

    public void onReceiveModeChangeDone() {
        IMSLog.s(LOG_TAG, this.mSlotId, "onReceiveModeChangeDone()");
        this.mIpcDispatcher.sendMessage(IilIpcMessage.ImsChangePreferredNetwork());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void saveRegistrationInfo() {
        /*
            r4 = this;
            int r0 = r4.mPdnType
            r1 = -1
            if (r0 == 0) goto L28
            r2 = 1
            if (r0 == r2) goto L29
            r2 = 6
            if (r0 == r2) goto L26
            r2 = 7
            if (r0 == r2) goto L24
            r2 = 9
            if (r0 == r2) goto L22
            r2 = 11
            if (r0 == r2) goto L28
            int r0 = r4.mSlotId
            java.lang.String r2 = "saveRegistrationInfo : invalid network type"
            java.lang.String r3 = "IilManager"
            com.sec.internal.log.IMSLog.s(r3, r0, r2)
            r2 = r1
            goto L29
        L22:
            r2 = 4
            goto L29
        L24:
            r2 = 3
            goto L29
        L26:
            r2 = 2
            goto L29
        L28:
            r2 = 0
        L29:
            if (r2 == r1) goto L43
            int[] r0 = r4.mFeatureMaskByNetType
            int r1 = r4.mFeatureMask
            r0[r2] = r1
            int[] r0 = r4.mEcmpByNetType
            int r1 = r4.mEcmp
            r0[r2] = r1
            int[] r0 = r4.mLimitedModeByNetType
            int r1 = r4.mLimitedMode
            r0[r2] = r1
            int[] r0 = r4.mEpdgModeByNetType
            int r4 = r4.mEpdgMode
            r0[r2] = r4
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.iil.IilManager.saveRegistrationInfo():void");
    }

    public static int featureTagToInt(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i = str.indexOf("cs") >= 0 ? 1 : 0;
        if (str.indexOf("smsip") >= 0) {
            i |= 2;
        }
        if (str.indexOf("volte") >= 0) {
            i |= 4;
        }
        if (str.indexOf(SipMsg.FEATURE_TAG_MMTEL_VIDEO) >= 0) {
            i |= 8;
        }
        return str.indexOf("mmtel") >= 0 ? i | 16 : i;
    }

    public static String featureMaskToString(int i) {
        String str = "";
        if ((i & 1) == 1) {
            str = "VOLTE";
        }
        if ((i & 2) == 2) {
            if (!str.isEmpty()) {
                str = str + ", ";
            }
            str = str + "SMSIP";
        }
        if ((i & 4) == 4) {
            if (!str.isEmpty()) {
                str = str + ", ";
            }
            str = str + "RCS";
        }
        if ((i & 8) == 8) {
            if (!str.isEmpty()) {
                str = str + ", ";
            }
            str = str + "PSVT";
        }
        if ((i & 32) != 32) {
            return str;
        }
        if (!str.isEmpty()) {
            str = str + ", ";
        }
        return str + "CDPN";
    }

    private void UpdateImsServiceState() {
        UpdateImsPreference();
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsPreferenceNoti(this.mImsPreference, 2));
    }

    private void UpdateImsPreference() {
        if (this.mImsPreference == null) {
            this.mImsPreference = new IilImsPreference();
        }
        String smsFormat = getSmsFormat();
        IMSLog.i(LOG_TAG, this.mSlotId, "UpdateImsPreference: SmsFormat=" + smsFormat);
        if (!TextUtils.isEmpty(smsFormat)) {
            try {
                this.mImsPreference.setSmsFormat((byte) Integer.parseInt(smsFormat));
            } catch (NumberFormatException unused) {
                if ("3GPP".equals(smsFormat)) {
                    this.mImsPreference.setSmsFormat((byte) 0);
                } else if ("3GPP2".equals(smsFormat)) {
                    this.mImsPreference.setSmsFormat((byte) 1);
                }
            }
        }
        this.mImsPreference.setSmsOverIms((getSmsOverIp() || SimUtil.getSimMno(this.mSlotId).isOneOf(Mno.CTC, Mno.CTCMO, Mno.RJIL)) ? (byte) 1 : (byte) 0);
        this.mImsPreference.setSmsWriteUicc("1".equals(this.mImsFramework.getString(this.mSlotId, GlobalSettingsConstants.RCS.SMS_WRITE_UICC, "0")) ? (byte) 1 : (byte) 0);
        int i = this.mImsFramework.getInt(this.mSlotId, GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, 3);
        int i2 = this.mImsFramework.getInt(this.mSlotId, GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_UTRAN, 1);
        this.mImsPreference.setEutranDomain((byte) i);
        this.mImsPreference.setUtranDomain((byte) i2);
        byte convertSsDomainToByte = convertSsDomainToByte(this.mImsFramework.getString(this.mSlotId, GlobalSettingsConstants.SS.DOMAIN, "PS"));
        if (convertSsDomainToByte != -1) {
            this.mImsPreference.setSsDomain(convertSsDomainToByte);
        }
        byte convertUssdDomainToByte = convertUssdDomainToByte(this.mImsFramework.getString(this.mSlotId, GlobalSettingsConstants.Call.USSD_DOMAIN, "CS"));
        if (convertUssdDomainToByte != -1) {
            this.mImsPreference.setUssdDomain(convertUssdDomainToByte);
        }
        String string = this.mImsFramework.getString(this.mSlotId, GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, "PS");
        if ("IMS".equalsIgnoreCase(string) || "PS".equalsIgnoreCase(string)) {
            this.mImsPreference.setEccPreference((byte) 0);
        } else if ("CSFB".equalsIgnoreCase(string) || "CS".equalsIgnoreCase(string)) {
            this.mImsPreference.setEccPreference((byte) 1);
        } else {
            IMSLog.e(LOG_TAG, this.mSlotId, "Invalid emergencyDomainPref=" + string);
        }
        try {
            this.mImsPreference.setImsSupportType(convertSupportTypeToByte(this.mImsFramework.isServiceAvailable("mmtel", 13, this.mSlotId), this.mImsFramework.isServiceAvailable("mmtel", 18, this.mSlotId)));
        } catch (RemoteException e) {
            IMSLog.e(LOG_TAG, this.mSlotId, "UpdateImsPreference: " + e.getMessage());
        }
        int i3 = this.mImsFramework.getInt(this.mSlotId, GlobalSettingsConstants.Call.SRVCC_VERSION, 10);
        this.mSrvccVersion = i3;
        this.mImsPreference.setSrvccVersion((byte) i3);
        this.mImsPreference.setSupportVolteRoaming(getRoamingSupportValueforVolte(true) ? (byte) 1 : (byte) 0);
        if (this.mNeedTwwan911TimerUpdate) {
            updateTwwan911Timer();
        }
    }

    public boolean getRoamingSupportValueforVolte(boolean z) {
        ImsProfile imsProfile = this.mImsFramework.getRegistrationManager().getImsProfile(this.mSlotId, ImsProfile.PROFILE_TYPE.VOLTE);
        return (imsProfile == null || !imsProfile.hasService("mmtel")) ? z : imsProfile.isAllowedOnRoaming();
    }

    private byte convertSsDomainToByte(String str) {
        if ("PS".equalsIgnoreCase(str) || "PS_ALWAYS".equalsIgnoreCase(str)) {
            return (byte) 0;
        }
        if ("CS".equalsIgnoreCase(str) || "CS_ALWAYS".equalsIgnoreCase(str)) {
            return (byte) 1;
        }
        if (DiagnosisConstants.PSCI_KEY_CALL_BEARER.equalsIgnoreCase(str) || "PS_ONLY_VOLTEREGIED".equalsIgnoreCase(str)) {
            return (byte) 2;
        }
        if ("PS_ONLY_PSREGIED".equalsIgnoreCase(str)) {
            return (byte) 3;
        }
        IMSLog.e(LOG_TAG, this.mSlotId, "Invalid value: " + str + " from GENERAL.FIELD for SS_DOMAIN_SETTING");
        return (byte) -1;
    }

    private byte convertUssdDomainToByte(String str) {
        if ("PS".equalsIgnoreCase(str)) {
            return (byte) 0;
        }
        if ("CS".equalsIgnoreCase(str)) {
            return (byte) 1;
        }
        if (DiagnosisConstants.PSCI_KEY_CALL_BEARER.equalsIgnoreCase(str)) {
            return (byte) 2;
        }
        IMSLog.e(LOG_TAG, this.mSlotId, "Invalid UssdDomain=" + str);
        return (byte) -1;
    }

    public int getSrvccVersion() {
        return this.mSrvccVersion;
    }

    private boolean isRadioPowerON() {
        int subId = SimUtil.getSubId(this.mSlotId);
        this.mSubId = subId;
        return getTelephonyManager(subId).getRadioPowerState() == 1;
    }

    private boolean isAirplaneModeOn() {
        try {
            return Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on") == 1;
        } catch (Settings.SettingNotFoundException e) {
            IMSLog.s(LOG_TAG, "isAirplaneModeOn read fail: " + e);
            return false;
        }
    }

    public boolean getSmsOverIp() {
        try {
            Cursor query = this.mContext.getContentResolver().query(UriUtil.buildUri("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/sms_over_ip_network_indication", this.mSlotId), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        boolean equals = "1".equals(query.getString(1));
                        query.close();
                        return equals;
                    }
                } finally {
                }
            }
            if (query == null) {
                return false;
            }
            query.close();
            return false;
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, this.mSlotId, "getSmsOverIp: Exception : " + e.getMessage());
            return false;
        }
    }

    public String getSmsFormat() {
        String str = "3GPP";
        try {
            Cursor query = this.mContext.getContentResolver().query(UriUtil.buildUri("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT", this.mSlotId), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(1);
                        query.close();
                        return str;
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, this.mSlotId, "getSmsFormat: Exception : " + e.getMessage());
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0072 A[Catch: Exception -> 0x0076, TRY_LEAVE, TryCatch #2 {Exception -> 0x0076, blocks: (B:3:0x0004, B:7:0x0072, B:18:0x006e, B:21:0x006b, B:23:0x001c, B:25:0x0022, B:27:0x002a, B:28:0x004b, B:17:0x0066), top: B:2:0x0004, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void updateTwwan911Timer() {
        /*
            r9 = this;
            java.lang.String r0 = "IilManager"
            r1 = 10
            android.content.Context r2 = r9.mContext     // Catch: java.lang.Exception -> L76
            android.content.ContentResolver r3 = r2.getContentResolver()     // Catch: java.lang.Exception -> L76
            java.lang.String r2 = "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/TWWAN_911_FAIL_TIMER"
            int r4 = r9.mSlotId     // Catch: java.lang.Exception -> L76
            android.net.Uri r4 = com.sec.internal.helper.UriUtil.buildUri(r2, r4)     // Catch: java.lang.Exception -> L76
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L76
            if (r2 == 0) goto L6f
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L65
            if (r3 == 0) goto L6f
            java.lang.String r3 = "VALUE"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L65
            if (r3 < 0) goto L4b
            int r4 = r2.getInt(r3)     // Catch: java.lang.Throwable -> L65
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L65
            r5.<init>()     // Catch: java.lang.Throwable -> L65
            java.lang.String r6 = "Read Twwan911 timer from index("
            r5.append(r6)     // Catch: java.lang.Throwable -> L65
            r5.append(r3)     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = "): "
            r5.append(r3)     // Catch: java.lang.Throwable -> L65
            r5.append(r4)     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L65
            com.sec.internal.log.IMSLog.i(r0, r3)     // Catch: java.lang.Throwable -> L65
            goto L70
        L4b:
            r3 = 1
            int r4 = r2.getInt(r3)     // Catch: java.lang.Throwable -> L65
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L65
            r3.<init>()     // Catch: java.lang.Throwable -> L65
            java.lang.String r5 = "Read Twwan911 timer from default index(1): "
            r3.append(r5)     // Catch: java.lang.Throwable -> L65
            r3.append(r4)     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L65
            com.sec.internal.log.IMSLog.i(r0, r3)     // Catch: java.lang.Throwable -> L65
            goto L70
        L65:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L6a
            goto L6e
        L6a:
            r2 = move-exception
            r3.addSuppressed(r2)     // Catch: java.lang.Exception -> L76
        L6e:
            throw r3     // Catch: java.lang.Exception -> L76
        L6f:
            r4 = r1
        L70:
            if (r2 == 0) goto L8c
            r2.close()     // Catch: java.lang.Exception -> L76
            goto L8c
        L76:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Twwan911 timer read fail: "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            com.sec.internal.log.IMSLog.e(r0, r2)
            r4 = r1
        L8c:
            if (r4 >= 0) goto La3
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Use default Twwan911 timer because database has wrong value: "
            r2.append(r3)
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            com.sec.internal.log.IMSLog.e(r0, r2)
            goto La4
        La3:
            r1 = r4
        La4:
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = "ril.twwan911Timer"
            android.os.SystemProperties.set(r2, r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Twwan911 timer update complete: "
            r1.append(r3)
            java.lang.String r2 = android.os.SystemProperties.get(r2)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.sec.internal.log.IMSLog.i(r0, r1)
            r0 = 0
            r9.mNeedTwwan911TimerUpdate = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.iil.IilManager.updateTwwan911Timer():void");
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.s(LOG_TAG, this.mSlotId, "handleMessage: event " + message.what);
        int i = message.what;
        if (i == 14) {
            handleSSACInfo((IilIpcMessage) message.obj);
        }
        if (i == 100) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            Throwable th = asyncResult.exception;
            if (th != null) {
                if (th instanceof IOException) {
                    IMSLog.e(LOG_TAG, this.mSlotId, "RILD crashed. restarting IMS.");
                    return;
                }
                IMSLog.e(LOG_TAG, this.mSlotId, "Exception processing IPC data. Exception:" + asyncResult.exception);
                return;
            }
            handleNewIpc((IpcMessage) asyncResult.result);
            return;
        }
        if (i == 101) {
            onIilConnected();
            return;
        }
        switch (i) {
            case 1:
                onRegistrationDone((Registration) message.obj);
                break;
            case 2:
                onRegistrationFailed((Registration) message.obj);
                break;
            case 3:
                onEmergencyRegistrationDone(message.arg1);
                break;
            case 4:
                onEmergencyRegistrationFailed();
                break;
            case 5:
                onReceiveImsSettingChange();
                break;
            case 6:
                onReceiveImsSettingRefresh();
                break;
            case 7:
                onReceiveRegistrationRetryOver();
                break;
            default:
                switch (i) {
                    case 9:
                        onReceiveSimStateChange((String) message.obj);
                        break;
                    case 10:
                        onReceiveModeChangeDone();
                        break;
                    case 11:
                        UpdateImsPreference();
                        break;
                    case 12:
                        UpdateImsServiceState();
                        break;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFeature(ImsRegistration imsRegistration) {
        if (imsRegistration != null) {
            ImsProfile imsProfile = imsRegistration.getImsProfile();
            Mno simMno = SimUtil.getSimMno(this.mSlotId);
            if ((simMno.isOneOf(Mno.CMCC, Mno.CTC, Mno.CU) || simMno.isKor()) && !imsRegistration.hasVolteService()) {
                IMSLog.s(LOG_TAG, this.mSlotId, "updateFeature: this is not Volte registration " + imsRegistration.getServices());
                return;
            }
            IMSLog.i(LOG_TAG, this.mSlotId, "updateFeature: service=" + imsRegistration.getServices() + "mNetworkType=" + this.mNetworkType);
            int i = (imsRegistration.hasService("mmtel") && isServiceAvailable()) ? 1 : 0;
            if (imsRegistration.hasService("mmtel-video") && (simMno.isKor() || isServiceAvailable())) {
                i |= 8;
            }
            if (imsRegistration.hasService("smsip") && (imsRegistration.getImsProfile().getMnoName().toUpperCase().contains("ORANGE_FR") || imsRegistration.getImsProfile().getMnoName().toUpperCase().contains("ORANGE_PL") || !disallowReregistration() || isServiceAvailable())) {
                i |= 2;
            }
            if (imsRegistration.hasService("cdpn")) {
                i |= 32;
            }
            Registration registration = new Registration(i, imsRegistration.getNetworkType(), imsRegistration.getEcmpStatus(), 0, imsRegistration.getEpdgStatus() ? 1 : 0, imsRegistration.getRegiRat());
            if (i != 0) {
                updateFeatureWithMmtel(imsRegistration, registration, i);
            } else {
                updateFeatureWithoutMmtel(registration, imsProfile);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateFeatureWithMmtel(ImsRegistration imsRegistration, Registration registration, int i) {
        if (imsRegistration.getImsProfile().hasEmergencySupport()) {
            sendMessage(obtainMessage(3, Integer.valueOf(imsRegistration.getNetworkType())));
            return;
        }
        registration.setLimitedMode((SimUtil.getSimMno(this.mSlotId) == Mno.VZW && "0".equals(SystemProperties.get(ImsConstants.SystemProperties.GCF_MODE_PROPERTY, "0"))) ? imsRegistration.isImsiBased(SimManagerFactory.getImsiFromPhoneId(this.mSlotId)) : 0);
        if ((i & 1) == 0 && (i & 8) == 8) {
            registration.setFeatureTags("cs");
        }
        ImsUri registeredImpu = imsRegistration.getRegisteredImpu();
        if (registeredImpu != null) {
            registration.setImpu(registeredImpu.toString());
        }
        sendMessage(obtainMessage(1, registration));
    }

    private void updateFeatureWithoutMmtel(Registration registration, ImsProfile imsProfile) {
        IMSLog.s(LOG_TAG, this.mSlotId, "onRegistered: Registration without MMTEL service");
        if (imsProfile.hasEmergencySupport()) {
            onEmergencyRegistrationFailed();
            return;
        }
        registration.setSipError(200);
        registration.setDeregiReasonCode(0);
        sendMessage(obtainMessage(2, registration));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean disallowReregistration() {
        ImsRegistration imsRegistration = this.mReg;
        return imsRegistration != null && imsRegistration.getImsProfile().getDisallowReregi();
    }

    private boolean isServiceAvailable() {
        int i;
        Mno simMno = SimUtil.getSimMno(this.mSlotId);
        if (simMno.isOneOf(Mno.ATT) || disallowReregistration()) {
            return SimUtil.isSoftphoneEnabled() || (i = this.mNetworkType) == 13 || i == 20 || i == 18;
        }
        if (!simMno.isKor()) {
            return true;
        }
        int i2 = this.mNetworkType;
        return i2 == 13 || i2 == 20;
    }

    private void onRegistrationDone(Registration registration) {
        removeMessages(1);
        this.mFeatureMask = registration.getFeatureMask();
        this.mPdnType = registration.getNetworkType();
        this.mEcmp = registration.getEcmpMode();
        this.mLimitedMode = registration.getLimitedMode();
        this.mEpdgMode = registration.getEpdgMode();
        String featureTags = registration.getFeatureTags();
        String errorMessage = registration.getErrorMessage();
        String impu = registration.getImpu();
        int regiRat = registration.getRegiRat();
        this.mFeatureTag = featureTagToInt(featureTags);
        int i = !TextUtils.isEmpty(errorMessage) ? 1606 : 0;
        IMSLog.s(LOG_TAG, this.mSlotId, "onRegistrationDone - FeatureMask: " + featureMaskToString(this.mFeatureMask) + "(" + this.mFeatureMask + "), PDN type: " + this.mPdnType + ", FeatureTag: " + featureTags + "(" + this.mFeatureTag + "), Ecmp: " + this.mEcmp + ", LimitedMode: " + this.mLimitedMode + ", EpdgMode: " + this.mEpdgMode + ", errorMessage: " + errorMessage + "(" + i + ")");
        if (hasMessages(2)) {
            IMSLog.s(LOG_TAG, "Removed EVENT_REGISTRATION_FAILED");
            removeMessages(2);
        }
        saveRegistrationInfo();
        IpcDispatcher ipcDispatcher = this.mIpcDispatcher;
        int i2 = this.mLimitedMode == 0 ? 1 : 2;
        int i3 = this.mFeatureMask;
        if (!ipcDispatcher.sendMessage(IilIpcMessage.encodeImsRegisgtrationInfo(i2, (i3 & 1) > 0, (i3 & 2) > 0, (i3 & 4) > 0, (i3 & 8) > 0, (i3 & 32) > 0, this.mPdnType, this.mFeatureTag, this.mEcmp, this.mEpdgMode, i, 0, impu, regiRat))) {
            sendMessageDelayed(obtainMessage(1, registration), 1000L);
        } else {
            UpdateImsPreference();
            this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsPreferenceNoti(this.mImsPreference, 3));
        }
    }

    private void onRegistrationFailed(Registration registration) {
        if (SimUtil.getSimMno(this.mSlotId) == Mno.EASTLINK && isAirplaneModeOn() && isRadioPowerON()) {
            sendMessageDelayed(obtainMessage(2, registration), 1000L);
            IMSLog.s(LOG_TAG, "Airplane Mode on but RADIO POWER is still on, delay ims dereg notify by 1 sec");
            return;
        }
        this.mFeatureMask = 0;
        this.mPdnType = registration.getNetworkType();
        this.mFeatureTag = 0;
        this.mEcmp = 0;
        this.mLimitedMode = 0;
        IMSLog.s(LOG_TAG, this.mSlotId, "onRegistrationFailed");
        saveRegistrationInfo();
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsRegisgtrationInfo(0, false, false, false, false, false, this.mPdnType, 0, 0, 0, registration.getDeregiReasonCode(), registration.getSipError(), null, registration.getRegiRat()));
    }

    private void onEmergencyRegistrationDone(int i) {
        IMSLog.s(LOG_TAG, this.mSlotId, "onRegistrationDone (Emergency)");
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsRegisgtrationInfo(4, false, false, false, false, false, i, 0, 0, 0, 0, 0, null, 0));
    }

    public void onEmergencyRegistrationFailed() {
        IMSLog.s(LOG_TAG, this.mSlotId, "onRegistrationFailed (Emergency)");
        this.mIpcDispatcher.sendMessage(IilIpcMessage.encodeImsRegisgtrationInfo(3, false, false, false, false, false, 0, 0, 0, 0, 0, 0, null, 0));
    }

    private TelephonyManager getTelephonyManager(int i) {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        return i >= 0 ? telephonyManager.createForSubscriptionId(i) : telephonyManager;
    }

    private final class IilPhoneStateListener extends PhoneStateListener {
        public IilPhoneStateListener() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onDataConnectionStateChanged(int i, int i2) {
            IMSLog.s(IilManager.LOG_TAG, IilManager.this.mSlotId, "onDataConnectionStateChanged(): state " + i + ", networkType " + i2 + " old " + IilManager.this.mNetworkType);
            doUpdateFeature(i2);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            ServiceStateWrapper serviceStateWrapper = new ServiceStateWrapper(serviceState);
            IMSLog.s(IilManager.LOG_TAG, IilManager.this.mSlotId, "onServiceStateChanged(): data regstate " + serviceStateWrapper.getDataRegState() + ", network type " + serviceStateWrapper.getDataNetworkType());
            if (serviceStateWrapper.getDataRegState() != 0) {
                IMSLog.s(IilManager.LOG_TAG, IilManager.this.mSlotId, "onServiceStateChanged(): not in Service");
            } else {
                doUpdateFeature(serviceStateWrapper.getDataNetworkType());
            }
        }

        private void doUpdateFeature(int i) {
            int networkClass = TelephonyManagerExt.getNetworkClass(i);
            if (i == 0 || IilManager.this.mNetworkType == i) {
                return;
            }
            Mno simMno = SimUtil.getSimMno(IilManager.this.mSlotId);
            boolean z = true;
            if (simMno != Mno.ATT ? !(simMno.isKor() || IilManager.this.disallowReregistration()) : IilManager.this.mNetworkClass == networkClass) {
                z = false;
            }
            IilManager.this.mNetworkType = i;
            IilManager.this.mNetworkClass = networkClass;
            if (IilManager.this.mReg == null || !z) {
                return;
            }
            IilManager iilManager = IilManager.this;
            iilManager.updateFeature(iilManager.mReg);
        }
    }

    private void registerPhoneStateListener() {
        int subId = SimUtil.getSubId(this.mSlotId);
        this.mSubId = subId;
        getTelephonyManager(subId).listen(this.mPhoneStateListener, 65);
    }

    private void unRegisterPhoneStateListener() {
        if (this.mPhoneStateListener == null) {
            return;
        }
        getTelephonyManager(this.mSubId).listen(this.mPhoneStateListener, 0);
    }

    @Override // com.sec.internal.interfaces.ims.core.iil.IIilManager
    public void notifyImsReady(boolean z) {
        unRegisterPhoneStateListener();
        if (z) {
            registerPhoneStateListener();
        }
        sendMessage(obtainMessage(12));
    }

    @Override // com.sec.internal.interfaces.ims.core.iil.IIilManager
    public void notifyImsRegistration(ImsRegistration imsRegistration, boolean z, ImsRegistrationError imsRegistrationError) {
        IMSLog.s(LOG_TAG, this.mSlotId, "notifyImsRegistration: registered=" + z + " registration=" + imsRegistration + " error=" + imsRegistrationError);
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        if (this.mSlotId != imsRegistration.getPhoneId()) {
            IMSLog.s(LOG_TAG, this.mSlotId, "Not matched slotId. Ignore notification.");
            return;
        }
        if (imsProfile.getCmcType() == 1) {
            IMSLog.s(LOG_TAG, this.mSlotId, "CMC PD registered. Ignore notification.");
            return;
        }
        if (z) {
            if (imsRegistration.hasVolteService()) {
                this.mReg = imsRegistration;
                updateFeature(imsRegistration);
                return;
            }
            return;
        }
        if (imsRegistration.hasVolteService()) {
            this.mReg = null;
        }
        if (imsRegistration.hasService("mmtel") || imsRegistration.hasService("mmtel-video") || imsRegistration.hasService("smsip")) {
            if (imsProfile.hasEmergencySupport()) {
                sendMessage(obtainMessage(4));
                return;
            }
            if (imsRegistrationError.getDetailedDeregiReason() == 31) {
                sendMessage(obtainMessage(10, Integer.valueOf(imsRegistration.getNetworkType())));
            }
            Registration registration = new Registration(0, imsRegistration.getNetworkType(), imsRegistration.getEcmpStatus(), 0, imsRegistration.getEpdgStatus() ? 1 : 0, imsRegistration.getRegiRat());
            registration.setSipError(imsRegistrationError.getSipErrorCode());
            registration.setDeregiReasonCode(imsRegistrationError.getDeregistrationReason());
            sendMessage(obtainMessage(2, registration));
        }
    }
}
