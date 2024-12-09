package com.sec.internal.ims.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class RegistrationGovernorRcsJibe extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnRcs";
    protected RcsRegistration mRcsRegistration;

    public RegistrationGovernorRcsJibe(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        super.onRegistrationDone();
        this.mRcsRegistration = this.mTask.buildRcsRegistration();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        Set<String> filterService = super.filterService(set, i);
        if (i == 18 || NetworkUtil.isMobileDataOn(this.mContext)) {
            return filterService;
        }
        Log.i(LOG_TAG, "filterService: Mobile data OFF!");
        return new HashSet();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        Log.i(LOG_TAG, "onSipError: service=" + str + " error=" + sipError);
        if (("im".equals(str) || "ft".equals(str)) && SipErrorBase.FORBIDDEN.equals(sipError)) {
            this.mTask.setDeregiReason(43);
            this.mRegMan.deregister(this.mTask, true, this.mIsValid, "SIP ERROR[IM] : FORBIDDEN. DeRegister..");
        }
        return sipError;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkCallStatus() {
        IVolteServiceModule iVolteServiceModule;
        if (this.mRegMan.getTelephonyCallStatus(this.mTask.getPhoneId()) == 0 || !this.mMno.isOneOf(Mno.USCC, Mno.VZW, Mno.SPRINT) || (iVolteServiceModule = this.mVsm) == null || !iVolteServiceModule.hasCsCall(this.mTask.getPhoneId())) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: TelephonyCallStatus is not idle (CS call)");
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkRcsEvent(int i) {
        if ((ConfigUtil.isRcsPreConsent(this.mTask.getPhoneId()) || !this.mMno.isEmeasewaoce()) && RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId("version", this.mTask.getPhoneId()), -1).intValue() <= 0 && ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, this.mTask.getPhoneId()) == -1) {
            Log.i(LOG_TAG, "isReadyToRegister: User don't try RCS service yet");
            return false;
        }
        if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mTask.getPhoneId()) == 1) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: Default MSG app isn't used for RCS");
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkRoamingStatus(int i) {
        if (i == 18 || !this.mRegMan.getNetworkEvent(this.mTask.getPhoneId()).isDataRoaming || allowRoaming()) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: IMS roaming is not allowed.");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.ROAMING_NOT_SUPPORTED.getCode());
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        return checkRegiStatus() && checkRoamingStatus(i) && checkCallStatus() && checkRcsEvent(i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onTelephonyCallStatusChanged(int i) {
        ImsRegistration imsRegistration = this.mTask.getImsRegistration();
        Log.i(LOG_TAG, "onTelephonyCallStatusChanged: callState = " + i);
        IVolteServiceModule iVolteServiceModule = this.mVsm;
        if (iVolteServiceModule == null || !iVolteServiceModule.hasCsCall(this.mTask.getPhoneId()) || imsRegistration == null || this.mTask.getRegistrationRat() == 18) {
            return;
        }
        if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED || this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING) {
            if (!this.mMno.isOneOf(Mno.USCC, Mno.VZW, Mno.SPRINT)) {
                Log.i(LOG_TAG, "CS call. Don't Trigger deregister for Google RCS");
                return;
            }
            Log.i(LOG_TAG, "CS call. Trigger deregister for RCS");
            this.mTask.setDeregiReason(7);
            this.mRegMan.deregister(this.mTask, false, true, 0, "CS call. Trigger deregister for RCS");
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean determineDeRegistration(int i, int i2) {
        if (needDeRegiByAcsParamChanged()) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "determineDeRegistration: Registration related ACS param has changed. Deregister!");
            this.mTask.setReason("ACS changed");
            this.mTask.setDeregiReason(32);
            this.mRegMan.tryDeregisterInternal(this.mTask, false, false);
            return true;
        }
        return super.determineDeRegistration(i, i2);
    }

    private boolean needDeRegiByAcsParamChanged() {
        String str = new String[]{"UserPwd"}[0];
        String string = this.mRcsRegistration.getString(str);
        String readStringParam = RcsConfigurationHelper.readStringParam(this.mContext, ImsUtil.getPathWithPhoneId(str, this.mPhoneId), "");
        if (TextUtils.equals(string, readStringParam)) {
            return false;
        }
        int i = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("needDeRegiByAcsParamChanged: ");
        sb.append(str);
        sb.append(IMSLog.numberChecker(" [" + string.trim() + "] -> [" + readStringParam.trim() + "]"));
        IMSLog.i(LOG_TAG, i, sb.toString());
        return true;
    }
}
