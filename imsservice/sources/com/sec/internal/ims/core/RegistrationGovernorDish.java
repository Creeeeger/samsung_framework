package com.sec.internal.ims.core;

import android.content.Context;
import android.provider.Settings;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.Set;

/* loaded from: classes.dex */
public class RegistrationGovernorDish extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnDish";
    protected boolean mIs5XXRegiRetried;

    public RegistrationGovernorDish(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        this.mIs5XXRegiRetried = false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd(this.mPhoneId, "onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " unsolicit " + z);
        if (j < 0) {
            j = 0;
        }
        this.mFailureCounter++;
        this.mCurPcscfIpIdx++;
        if (this.mTask.getProfile().hasEmergencySupport() && SipErrorBase.SIP_TIMEOUT.equals(sipError) && this.mTask.getProfile().getE911RegiTime() > 0) {
            handleTimeOutEmerRegiError();
        } else {
            handleRetryTimer(j);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        Set<String> filterService = super.filterService(set, i);
        boolean isDataAllowed = isDataAllowed();
        IMSLog.i(LOG_TAG, this.mPhoneId, "Data allowed: " + isDataAllowed);
        if (!isDataAllowed && i != 18) {
            removeService(filterService, "mmtel-video", "MobileData OFF");
        }
        if (this.mTask.isRcsOnly() && !RcsUtils.DualRcs.isRegAllowed(this.mContext, this.mPhoneId)) {
            for (String str : ImsProfile.getRcsServiceList()) {
                removeService(filterService, str, "No DualRcs");
            }
        }
        return filterService;
    }

    private boolean isDataAllowed() {
        boolean z = Settings.Global.getInt(this.mContext.getContentResolver(), "data_roaming", 0) == 1;
        boolean isNetworkRoaming = this.mTelephonyManager.isNetworkRoaming();
        return (!isNetworkRoaming && NetworkUtil.isMobileDataOn(this.mContext)) || (isNetworkRoaming && z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        return checkEmergencyStatus() || (checkRegiStatus() && checkCallStatus());
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkCallStatus() {
        if (this.mIs5XXRegiRetried || !this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) || this.mRegMan.getTelephonyCallStatus(this.mPhoneId) == 0) {
            return true;
        }
        IMSLog.i(LOG_TAG, "isReadyToRegister: call state is not idle");
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onTelephonyCallStatusChanged(int i) {
        super.onTelephonyCallStatusChanged(i);
        if (i == 0 && this.mTask.getProfile().hasEmergencySupport()) {
            this.mTask.setDeregiReason(7);
            this.mRegMan.deregister(this.mTask, true, false, "Call status changed. Deregister..");
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        super.onSipError(str, sipError);
        if ("mmtel".equals(str)) {
            if (SipErrorBase.SipErrorType.ERROR_5XX.equals(sipError.getCode()) && !this.mTask.getProfile().hasEmergencySupport() && !this.mHasVoLteCall && !this.mIs5XXRegiRetried && this.mNumOfPcscfIp > 1) {
                IMSLog.i(LOG_TAG, "onSipError: Move to Next PCSCF and use it as Current PCSCF");
                this.mCurPcscfIpIdx = (this.mCurPcscfIpIdx + 1) % this.mNumOfPcscfIp;
                updatePcscfIpList(this.mPcscfIpList, true);
                this.mIs5XXRegiRetried = true;
            } else {
                this.mIs5XXRegiRetried = false;
            }
        }
        return sipError;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onCallStatus(IRegistrationGovernor.CallEvent callEvent, SipError sipError, int i) {
        IMSLog.i(LOG_TAG, "onCallStatus :" + callEvent);
        super.onCallStatus(callEvent, sipError, i);
        if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ESTABLISHED || callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_SILENT_REDIAL_END) {
            this.mIs5XXRegiRetried = false;
        }
    }
}
