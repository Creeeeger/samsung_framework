package com.sec.internal.ims.config;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.config.params.ACSConfig;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.interfaces.ims.config.IWorkflow;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class ConfigComplete {
    private static final String LOG_TAG = "ConfigComplete";
    private IConfigModule mCm;
    private final Context mContext;
    private final SimpleEventLog mEventLog;
    private IRegistrationManager mRm;

    public ConfigComplete(Context context, IRegistrationManager iRegistrationManager, IConfigModule iConfigModule, SimpleEventLog simpleEventLog) {
        this.mContext = context;
        this.mRm = iRegistrationManager;
        this.mCm = iConfigModule;
        this.mEventLog = simpleEventLog;
    }

    protected void setStateforACSComplete(int i, int i2, List<IRegisterTask> list, int i3) {
        IMSLog.i(LOG_TAG, i2, "setStateforACSComplete: " + i);
        if (list == null) {
            return;
        }
        Integer rcsConfVersion = this.mCm.getRcsConfVersion(i2);
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.DRCS_KEY_RACV, rcsConfVersion);
        ImsLogAgentUtil.storeLogToAgent(i2, this.mContext, DiagnosisConstants.FEATURE_DRCS, contentValues);
        String acsServerType = ConfigUtil.getAcsServerType(i2);
        releasePermanentBlockforJibe(i, i2, list, rcsConfVersion, acsServerType, i3);
        ImsRegistry.getServiceModuleManager().notifyAutoConfigDone(i2);
        ImsRegistry.getServiceModuleManager().notifyConfigured(true, i2);
        setStateforDualRegistration(i, i2, list, rcsConfVersion, acsServerType);
    }

    void releasePermanentBlockforJibe(int i, int i2, List<IRegisterTask> list, Integer num, String str, int i3) {
        for (IRegisterTask iRegisterTask : list) {
            if (ImsConstants.RCS_AS.JIBE.equals(str) && iRegisterTask.isRcsOnly() && iRegisterTask.getGovernor().isThrottled() && i == 200 && num != null && num.intValue() > 0 && i3 < 2) {
                IMSLog.i(LOG_TAG, i2, "releasePermanentBlock: register is blocked, release");
                this.mRm.releaseThrottleByAcs(i2);
            }
        }
    }

    void setStateforDualRegistration(int i, int i2, List<IRegisterTask> list, Integer num, String str) {
        for (IRegisterTask iRegisterTask : list) {
            if ((!iRegisterTask.getMno().isKor() && !ImsConstants.RCS_AS.JIBE.equals(str)) || (!iRegisterTask.getProfile().hasService("mmtel") && !iRegisterTask.getProfile().hasService("mmtel-video"))) {
                if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.CONFIGURING) {
                    this.mEventLog.logAndAdd(i2, "RegisterTask setState: CONFIGURED");
                    iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONFIGURED);
                } else if (iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && (this.mCm.getAcsConfig(i2).getAcsVersion() == 0 || (iRegisterTask.getMno().isKor() && i == -1))) {
                    if (iRegisterTask.getMno() != Mno.RJIL && num != null && num.intValue() > 0 && iRegisterTask.getProfile().getNeedAutoconfig()) {
                        iRegisterTask.setReason("autocofig is changed");
                        iRegisterTask.setDeregiReason(32);
                        this.mRm.deregister(iRegisterTask, false, true, "AUTOCONFIG_CHANGED");
                    }
                }
            }
        }
    }

    protected void sendRCSAInfoToHQM(int i, int i2, int i3) {
        if (i3 < 0) {
            Log.i(LOG_TAG, "sendRCSAInfoToHQM : phoneId is invaild " + i3);
            i3 = 0;
        }
        int i4 = i2 == 200 ? 1 : 0;
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.RCSA_KEY_ARST, String.valueOf(i4 ^ 1));
        contentValues.put(DiagnosisConstants.RCSA_KEY_AVER, String.valueOf(i));
        contentValues.put("ERRC", String.valueOf(i2));
        contentValues.put(DiagnosisConstants.RCSA_KEY_PROF, this.mCm.getRcsProfile(i3));
        contentValues.put(DiagnosisConstants.RCSA_KEY_ATRE, String.valueOf(this.mCm.getAcsTryReason(i3).ordinal()));
        this.mCm.resetAcsTryReason(i3);
        contentValues.put(DiagnosisConstants.RCSA_KEY_TDRE, String.valueOf(this.mCm.getTokenDeletedReason(i3).ordinal()));
        this.mCm.resetTokenDeletedReason(i3);
        ImsLogAgentUtil.sendLogToAgent(i3, this.mContext, DiagnosisConstants.FEATURE_RCSA, contentValues);
    }

    protected void handleAutoconfigurationComplete(int i, List<IRegisterTask> list, int i2, IWorkflow iWorkflow) {
        IMSLog.i(LOG_TAG, i, "handleAutoconfigurationComplete: " + i2);
        Mno simMno = SimUtil.getSimMno(i);
        ACSConfig acsConfig = this.mCm.getAcsConfig(i);
        if (list == null || simMno == Mno.DEFAULT || iWorkflow == null || acsConfig == null) {
            return;
        }
        handleAutoconfigurationVersion(iWorkflow, acsConfig, simMno, i2, i);
        acsConfig.setAcsCompleteStatus(true);
        acsConfig.setForceAcs(false);
        acsConfig.setIsTriggeredByNrcr(false);
    }

    void handleAutoconfigurationVersion(IWorkflow iWorkflow, ACSConfig aCSConfig, Mno mno, int i, int i2) {
        Integer rcsConfVersion = this.mCm.getRcsConfVersion(i2);
        String str = LOG_TAG;
        IMSLog.i(str, i2, "Autoconfiguration Version: " + rcsConfVersion);
        if (rcsConfVersion == null) {
            return;
        }
        if (rcsConfVersion.intValue() == 0) {
            this.mEventLog.logAndAdd(i2, "Since the version is 0, RCS services are filtered");
            IMSLog.c(LogClass.CM_ACS_COMPLETE, i2 + ",VER:" + rcsConfVersion + ",EC:" + i);
            if (i != 987) {
                aCSConfig.disableRcsByAcs(true);
            }
        } else if (rcsConfVersion.intValue() == -1 || rcsConfVersion.intValue() == -2) {
            IMSLog.i(str, i2, "RCS services are disabled");
            if (mno == Mno.SKT) {
                iWorkflow.clearToken(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
                iWorkflow.removeValidToken();
                IImModule imModule = ImsRegistry.getServiceModuleManager().getImModule();
                if (imModule != null) {
                    IMSLog.i(str, i2, "Try deleteChatsForUnsubscribe for SKT");
                    imModule.deleteChatsForUnsubscribe(i2);
                }
            }
            if (ConfigUtil.isRcsChn(mno)) {
                IMSLog.i(str, i2, "auto config result don't turn off rcs settings for CHN.");
                aCSConfig.disableRcsByAcs(true);
            } else {
                if ((aCSConfig.isTriggeredByNrcr() || mno == Mno.SWISSCOM || mno.isKor()) && ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, i2) != 0) {
                    DmConfigHelper.setImsUserSetting(this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), -2, i2);
                }
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 0, i2);
            }
        } else if (rcsConfVersion.intValue() == -3) {
            aCSConfig.setRcsDormantMode(true);
        } else if (rcsConfVersion.intValue() >= 1) {
            handleAutoconfigurationActiveVersion(aCSConfig, mno, i2);
        }
        aCSConfig.setAcsVersion(rcsConfVersion.intValue());
    }

    void handleAutoconfigurationActiveVersion(ACSConfig aCSConfig, Mno mno, int i) {
        int acsVersion = aCSConfig.getAcsVersion();
        if (ConfigUtil.isRcsChn(mno)) {
            IMSLog.i(LOG_TAG, i, "auto config result don't turn on rcs settings for CHN.");
            return;
        }
        if (acsVersion == -2 || (mno.isKor() && acsVersion == -1)) {
            if (aCSConfig.isTriggeredByNrcr() && ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, i) != 1) {
                DmConfigHelper.setImsUserSetting(this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), 3, i);
            }
            ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 1, i);
            return;
        }
        if (mno == Mno.SKT && DmConfigHelper.getImsUserSetting(this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), i) == 2) {
            IMSLog.i(LOG_TAG, i, "disable RCS failed modify rcs_user_setting to RCS_ENABLED for SKT");
            ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 1, i);
        }
    }

    public String getProvisioningStringValue(String str, int i) {
        IStorageAdapter storage = this.mCm.getStorage(i);
        if (storage != null) {
            String paramPath = getParamPath(str, storage);
            if (!TextUtils.isEmpty(paramPath)) {
                String read = storage.read(paramPath.toLowerCase(Locale.US));
                if (!TextUtils.isDigitsOnly(read)) {
                    return read;
                }
            }
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int setProvisioningStringValue(String str, String str2, int i) {
        boolean z;
        IStorageAdapter storage = this.mCm.getStorage(i);
        if (!TextUtils.isEmpty(str2) && storage != null) {
            String paramPath = getParamPath(str, storage);
            if (!TextUtils.isEmpty(paramPath)) {
                z = storage.write(paramPath.toLowerCase(Locale.US), str2);
                return !z;
            }
        }
        z = 0;
        return !z;
    }

    public int getProvisioningIntValue(String str, int i) {
        IStorageAdapter storage = this.mCm.getStorage(i);
        if (storage != null) {
            String paramPath = getParamPath(str, storage);
            if (!TextUtils.isEmpty(paramPath)) {
                String read = storage.read(paramPath.toLowerCase(Locale.US));
                if (TextUtils.isDigitsOnly(read)) {
                    return Integer.parseInt(read);
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int setProvisioningIntValue(String str, int i, int i2) {
        boolean z;
        IStorageAdapter storage = this.mCm.getStorage(i2);
        String num = Integer.toString(i);
        if (!TextUtils.isEmpty(num) && storage != null) {
            String paramPath = getParamPath(str, storage);
            if (!TextUtils.isEmpty(paramPath)) {
                z = storage.write(paramPath.toLowerCase(Locale.US), num);
                return !z;
            }
        }
        z = 0;
        return !z;
    }

    public String getParamPath(String str, IStorageAdapter iStorageAdapter) {
        Map<String, String> readAll;
        if (iStorageAdapter == null || (readAll = iStorageAdapter.readAll()) == null || readAll.isEmpty()) {
            return "";
        }
        Iterator<Map.Entry<String, String>> it = readAll.entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            int lastIndexOf = key.lastIndexOf(47);
            String substring = key.substring(lastIndexOf + 1);
            if (isIndexTag(substring)) {
                String substring2 = key.substring(0, lastIndexOf);
                substring = substring2.substring(substring2.lastIndexOf("/") + 1);
            }
            if (substring.equalsIgnoreCase(str)) {
                return key;
            }
        }
        return "";
    }

    public static boolean isIndexTag(String str) {
        Iterator it = List.of("0", "1", "2", DiagnosisConstants.RCSM_ORST_REGI, DiagnosisConstants.RCSM_ORST_HTTP, DiagnosisConstants.RCSM_ORST_ITER, "6", "7", "8", "9").iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
