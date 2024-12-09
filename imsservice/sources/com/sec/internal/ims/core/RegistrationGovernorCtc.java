package com.sec.internal.ims.core;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.android.internal.telephony.TelephonyFeatures;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.core.PdnFailReason;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.core.SimConstants;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.SemTelephonyAdapter;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class RegistrationGovernorCtc extends RegistrationGovernorBase {
    private static final int DEFAULT_TIMS_TIMER = 730;
    private static final String LOG_TAG = "RegiGvnCtc";
    protected Set<String> mInvalidPcscfIp;
    private boolean mPendingCtcVolteOff;
    private boolean mPendingCtcVolteOn;
    protected List<String> mRcsPcscfList;
    protected final long[] mRegRetryTime_MS;

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkDelayedStopPdnEvent() {
        return true;
    }

    public RegistrationGovernorCtc(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        this.mPendingCtcVolteOff = false;
        this.mPendingCtcVolteOn = false;
        this.mInvalidPcscfIp = new TreeSet();
        this.mRegRetryTime_MS = new long[]{0, 30000, SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF, 120000, 240000, 480000};
        updateEutranValues();
        updateCTCVolteState();
        this.mHandlePcscfOnAlternativeCall = true;
        this.mRcsPcscfList = new ArrayList();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void releaseThrottle(int i) {
        if (i == 1 || i == 4) {
            this.mIsPermanentStopped = false;
            this.mRegiAt = 0L;
            stopRetryTimer();
        } else if (i == 7) {
            this.mIsPermanentStopped = false;
        }
        if (this.mIsPermanentStopped) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "releaseThrottle: case by " + i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onCallStatus(IRegistrationGovernor.CallEvent callEvent, SipError sipError, int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onCallStatus: event=" + callEvent + " error=" + sipError);
        if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_LAST_CALL_END) {
            this.mHasVoLteCall = false;
            if (isDeregisterWithVoPSNeeded()) {
                this.mTask.setDeregiReason(72);
                this.mRegMan.deregister(this.mTask, false, false, "SERVICE NOT AVAILABLE");
                return;
            }
            return;
        }
        super.onCallStatus(callEvent, sipError, i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void checkAcsPcscfListChange() {
        if (this.mTask.isRcsOnly()) {
            ArrayList arrayList = new ArrayList();
            String readStringParam = RcsConfigurationHelper.readStringParam(this.mContext, "address", null);
            if (readStringParam == null) {
                IMSLog.i(LOG_TAG, "checkAcsPcscfIpListChange : lboPcscfAddress is null");
                return;
            }
            arrayList.add(readStringParam);
            IMSLog.i(LOG_TAG, "checkAcsPcscfIpListChange : previous pcscf = " + this.mRcsPcscfList + ", new pcscf = " + arrayList);
            if (arrayList.equals(this.mRcsPcscfList)) {
                return;
            }
            if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                this.mTask.setDeregiReason(8);
                this.mRegMan.deregister(this.mTask, true, false, "pcscf updated");
            }
            resetPcscfList();
            ArrayList arrayList2 = new ArrayList();
            this.mRcsPcscfList = arrayList2;
            arrayList2.add(readStringParam);
            IMSLog.i(LOG_TAG, "checkAcsPcscfIpListChange : resetPcscfList");
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        Set<String> hashSet = new HashSet<>();
        HashSet hashSet2 = new HashSet(set);
        if (isImsDisabled()) {
            return new HashSet();
        }
        Set<String> applyMmtelUserSettings = applyMmtelUserSettings(hashSet2, i);
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "volte", this.mPhoneId) == 1) {
            Set<String> servicesByImsSwitch = servicesByImsSwitch(ImsProfile.getVoLteServiceList());
            hashSet.addAll(servicesByReadSwitch((String[]) servicesByImsSwitch.toArray(new String[servicesByImsSwitch.size()])));
            if (!hashSet.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_IMS_SWITCH_OFF.getCode());
            }
        }
        if (this.mConfigModule.isValidAcsVersion(this.mPhoneId)) {
            Set<String> servicesByImsSwitch2 = servicesByImsSwitch(ImsProfile.getRcsServiceList());
            hashSet.addAll(servicesByReadSwitch((String[]) servicesByImsSwitch2.toArray(new String[servicesByImsSwitch2.size()])));
        }
        if ((i == 13 || i == 20) && this.mTask.getProfile().getPdnType() == 11) {
            hashSet = applyVoPsPolicy(hashSet);
            if (hashSet.isEmpty()) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.VOPS_OFF.getCode());
                return hashSet;
            }
        }
        if (!applyMmtelUserSettings.isEmpty()) {
            applyMmtelUserSettings.retainAll(hashSet);
        }
        return applyMmtelUserSettings;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onSipError: service=" + str + " error=" + sipError);
        if ("smsip".equals(str) && checkCallStatus()) {
            if (sipError.getCode() == 408 || sipError.getCode() == 708) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "SMS error : mCurPcscfIpIdx=" + this.mCurPcscfIpIdx + " mNumOfPcscfIp=" + this.mNumOfPcscfIp);
                removeCurrentPcscfAndInitialRegister(true);
            }
            return sipError;
        }
        return super.onSipError(str, sipError);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkCallStatus() {
        IVolteServiceModule iVolteServiceModule;
        if (!this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS)) {
            return true;
        }
        int i = this.mPhoneId;
        if (this.mRegMan.getTelephonyCallStatus(i) != 0 || ((iVolteServiceModule = this.mVsm) != null && iVolteServiceModule.getSessionCount(i) > 0 && !this.mVsm.hasEmergencyCall(i) && this.mVsm.hasActiveCall(i))) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToRegister: call state is not idle");
            return false;
        }
        if (!SimConstants.DSDS_DI.equals(SimUtil.getConfigDualIMS()) || this.mRegMan.getTelephonyCallStatus(SimUtil.getOppositeSimSlot(i)) == 0) {
            return true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToRegister: another slot's call state is not idle");
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkRcsEvent(int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "checkRcsEvent: pdn = " + this.mTask.getProfile().getPdn() + ", state = " + this.mTask.getState());
        if (!this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) && this.mTask.isRcsOnly()) {
            if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mPhoneId) != 1) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToRegister: Default MSG app isn't used for RCS");
                return false;
            }
            if (this.mTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERED && this.mPdnController.isWifiConnected() && i != 18) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToRegister: The RCS rat is not wifi, when wifi is connected.");
                return false;
            }
        }
        return true;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkVolteSetting(int i) {
        if (i == 18 || getVoiceTechType(this.mPhoneId) == 0) {
            return true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isReadyToRegister: volte disabled");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF.getCode());
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected long getWaitTime() {
        int min = Math.min(this.mFailureCounter, this.mRegRetryTime_MS.length - 1);
        return this.mRegRetryTime_MS[min] + (min == 3 ? ImsUtil.getRandom().nextInt(15) * 1000 : 0L);
    }

    protected boolean isInvalidPcscfIp(String str) {
        if (!TextUtils.isEmpty(str) && CollectionUtils.isNullOrEmpty(this.mInvalidPcscfIp)) {
            return false;
        }
        Iterator<String> it = this.mInvalidPcscfIp.iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public List<String> checkValidPcscfIp(List<String> list) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "checkValidPcscfIp");
        if (!this.mTask.isRcsOnly()) {
            return super.checkValidPcscfIp(list);
        }
        List<String> arrayList = new ArrayList<>();
        LinkPropertiesWrapper linkProperties = this.mPdnController.getLinkProperties(this.mTask);
        if (list != null && !list.isEmpty() && linkProperties != null) {
            arrayList = addIpv6Addr(list, arrayList, linkProperties);
            if (CollectionUtils.isNullOrEmpty(arrayList)) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "validPcscfIp ipv6 is null");
                arrayList = addIpv4Addr(list, arrayList, linkProperties);
            } else if (isInvalidPcscfIp(arrayList.get(0))) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "validPcscfIp ipv6 is not valid");
                String str = arrayList.get(0);
                arrayList.clear();
                arrayList = addIpv4Addr(list, arrayList, linkProperties);
                if (CollectionUtils.isNullOrEmpty(arrayList) || isInvalidPcscfIp(arrayList.get(0))) {
                    arrayList.clear();
                    arrayList.add(str);
                    IMSLog.i(LOG_TAG, this.mPhoneId, "validPcscfIp ipv6 and ipv4 all is not valid, so select ipv6");
                } else {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "validPcscfIp ipv4 is valid");
                }
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "validPcscfIp ipv6 is valid");
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "ValidPcscfIp: " + arrayList);
        }
        return arrayList;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " mIsPermanentStopped " + this.mIsPermanentStopped);
        if (this.mTask.isRcsOnly()) {
            String currentPcscfIp = getCurrentPcscfIp();
            IMSLog.i(LOG_TAG, this.mPhoneId, "onRegistrationError: " + currentPcscfIp);
            if (!TextUtils.isEmpty(currentPcscfIp)) {
                this.mInvalidPcscfIp.add(currentPcscfIp);
            }
            super.onRegistrationError(sipError, j, z);
            return;
        }
        super.onRegistrationError(sipError, j, z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        super.onRegistrationDone();
        stopTimsTimer(RegistrationConstants.REASON_REGISTERED);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onDeregistrationDone(boolean z) {
        if (z && !this.mTask.mKeepPdn && getVoiceTechType(this.mPhoneId) == 1 && this.mTask.getPdnType() == 11) {
            this.mRegHandler.notifyVolteSettingOff(this.mTask, 1000L);
        }
        if (TelephonyFeatures.isChnGlobalModel(this.mPhoneId) && this.mTask.getPdnType() == 11 && this.mPendingCtcVolteOff) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "update volte off state to CP after IMS deregistered.");
            this.mPendingCtcVolteOff = false;
            SemTelephonyAdapter.sendVolteState(this.mPhoneId, false);
            if (this.mPendingCtcVolteOn) {
                this.mPendingCtcVolteOn = false;
                SemTelephonyAdapter.sendVolteState(this.mPhoneId, true);
            }
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnRequestFailed(PdnFailReason pdnFailReason, int i) {
        super.onPdnRequestFailed(pdnFailReason, i);
        if (isMatchedPdnFailReason(pdnFailReason)) {
            return;
        }
        onPdnFailCounterInNr();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void notifyVoLteOnOffToRil(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "notifyVoLteOnOffToRil: " + z);
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 3);
        } else {
            contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 1);
        }
        this.mContext.getContentResolver().update(Uri.parse("content://com.sec.ims.settings/global").buildUpon().fragment("simslot" + this.mPhoneId).build(), contentValues, null, null);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onVolteSettingChanged() {
        updateEutranValues();
        updateCTCVolteState();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void startTimsTimer(String str) {
        startTimsEstablishTimer(this.mTask, 730000, str);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void stopTimsTimer(String str) {
        stopTimsEstablishTimer(this.mTask, str);
    }

    private void updateEutranValues() {
        if (this.mTask.getProfile().hasService("mmtel")) {
            int voiceTechType = getVoiceTechType(this.mPhoneId);
            IMSLog.i(LOG_TAG, this.mPhoneId, "updateEutranValues : voiceTech : " + voiceTechType);
            if (voiceTechType == 0) {
                this.mRegHandler.removeVolteSettingOffEvent();
                notifyVoLteOnOffToRil(true);
            } else {
                if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED || this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING) {
                    return;
                }
                notifyVoLteOnOffToRil(false);
            }
        }
    }

    private void updateCTCVolteState() {
        if (TelephonyFeatures.isChnGlobalModel(this.mPhoneId) && this.mTask.getProfile().hasService("mmtel")) {
            int voiceTechType = getVoiceTechType(this.mPhoneId);
            IMSLog.i(LOG_TAG, this.mPhoneId, "updateCTCVolteState : voiceTech : " + voiceTechType);
            if (voiceTechType == 0) {
                if (this.mPendingCtcVolteOff) {
                    this.mPendingCtcVolteOn = true;
                    return;
                } else {
                    SemTelephonyAdapter.sendVolteState(this.mPhoneId, true);
                    return;
                }
            }
            if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                this.mPendingCtcVolteOn = false;
                this.mPendingCtcVolteOff = true;
            } else {
                SemTelephonyAdapter.sendVolteState(this.mPhoneId, false);
            }
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected int getVoiceTechType() {
        forceTurnOnVoLteWhenMenuRemoved();
        return super.getVoiceTechType();
    }
}
