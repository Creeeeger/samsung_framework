package com.sec.internal.ims.core;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class RegistrationGovernorIR92 extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnIR92";

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkVolteSetting(int i) {
        return true;
    }

    public RegistrationGovernorIR92(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        if (registerTask.getMno() == Mno.ALTICE) {
            IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "Force to enable vocecall_type for ATL.");
            ImsConstants.SystemSettings.setVoiceCallType(context, 0, registerTask.getPhoneId());
        }
        if (!DmConfigHelper.readSwitch(this.mContext, "mmtel", true, this.mPhoneId)) {
            this.mRegMan.getEventLog().logAndAdd("VOLTE_ENABLED=0. Recover OMADM nodes.");
            ContentValues contentValues = new ContentValues();
            contentValues.put("VOLTE_ENABLED", "1");
            contentValues.put("LVC_ENABLED", "1");
            contentValues.put("EAB_SETTING", "1");
            contentValues.put("VWF_ENABLED", "1");
            this.mContext.getContentResolver().insert(UriUtil.buildUri("content://com.samsung.rcs.dmconfigurationprovider/", this.mPhoneId), contentValues);
        }
        updateVolteState();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected Set<String> applyVoPsPolicy(Set<String> set) {
        Log.i(LOG_TAG, "applyVoPsPolicy:");
        if (set == null) {
            return new HashSet();
        }
        if (this.mRegMan.getNetworkEvent(this.mTask.getPhoneId()).voiceOverPs == VoPsIndication.NOT_SUPPORTED) {
            this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.VOPS_OFF.getCode());
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mTask.getPhoneId());
            if (simManagerFromSimSlot != null && "GenericIR92_US:CSpire".equals(simManagerFromSimSlot.getSimMnoName())) {
                return new HashSet();
            }
            removeService(set, "mmtel", "applyVoPsPolicy");
        }
        return set;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        return super.filterService(applyMmtelUserSettings(set, i), i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        if (r3 >= 3) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onPdnRequestFailed(com.sec.internal.constants.ims.core.PdnFailReason r3, int r4) {
        /*
            r2 = this;
            super.onPdnRequestFailed(r3, r4)
            com.sec.internal.ims.core.RegisterTask r4 = r2.mTask
            int r4 = r4.getRegistrationRat()
            r0 = 13
            if (r4 != r0) goto L3e
            com.sec.internal.ims.core.RegisterTask r4 = r2.mTask
            int r4 = r4.getPhoneId()
            com.sec.internal.constants.ims.core.PdnFailReason r0 = com.sec.internal.constants.ims.core.PdnFailReason.SERVICE_OPTION_NOT_SUBSCRIBED
            r1 = 1
            if (r0 != r3) goto L1a
        L18:
            r3 = r1
            goto L2d
        L1a:
            java.lang.String r3 = "voice_domain_pref_eutran"
            int r3 = com.sec.internal.ims.registry.ImsRegistry.getInt(r4, r3, r1)
            r4 = 3
            if (r3 != r4) goto L2c
            int r3 = r2.mPdnRejectCounter
            int r3 = r3 + r1
            r2.mPdnRejectCounter = r3
            if (r3 < r4) goto L2c
            goto L18
        L2c:
            r3 = 0
        L2d:
            if (r3 == 0) goto L3e
            java.lang.String r3 = "RegiGvnIR92"
            java.lang.String r4 = "send ImsNotAvailable"
            android.util.Log.i(r3, r4)
            com.sec.internal.ims.core.RegistrationManagerInternal r3 = r2.mRegMan
            com.sec.internal.ims.core.RegisterTask r2 = r2.mTask
            r3.notifyImsNotAvailable(r2, r1)
        L3e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationGovernorIR92.onPdnRequestFailed(com.sec.internal.constants.ims.core.PdnFailReason, int):void");
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mTask.getPhoneId());
        if (simManagerFromSimSlot != null && ("GenericIR92_US:CSpire".equals(simManagerFromSimSlot.getSimMnoName()) || "GenericIR92_US:Cellcom".equals(simManagerFromSimSlot.getSimMnoName()))) {
            String line1Number = simManagerFromSimSlot.getLine1Number(simManagerFromSimSlot.getSubscriptionId());
            if (TextUtils.isEmpty(line1Number) || line1Number.startsWith("000000")) {
                Log.e(LOG_TAG, "Invalid MSISDN, pending IMS Register until SIM OTA");
                return false;
            }
        }
        return super.isReadyToRegister(i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " mIsPermanentStopped " + this.mIsPermanentStopped);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mTask.getPhoneId());
        if (simManagerFromSimSlot != null && (("GenericIR92_US:Cellcom".equals(simManagerFromSimSlot.getSimMnoName()) || "GenericIR92_US:CSpire".equals(simManagerFromSimSlot.getSimMnoName())) && (SipErrorBase.isImsForbiddenError(sipError) || SipErrorBase.NOT_FOUND.equals(sipError)))) {
            int i = this.mFailureCounter + 1;
            this.mFailureCounter = i;
            int i2 = this.mCurPcscfIpIdx + 1;
            int i3 = this.mNumOfPcscfIp;
            this.mCurPcscfIpIdx = i2 % i3;
            if (i < i3 || (this.mCurImpu == 1 && i < i3 * 3)) {
                if (j <= 0) {
                    j = getWaitTime();
                }
                startRetryTimer(j);
                return;
            } else {
                if (ImsUtil.isCdmalessEnabled(this.mContext, this.mPhoneId) && this.mCurImpu != 1) {
                    Log.e(LOG_TAG, "onRegistrationError: Retry with IMSI based Register before blocking PLMN");
                    if (j <= 0) {
                        j = getWaitTime();
                    }
                    startRetryTimer(j);
                    this.mCurImpu = 1;
                    return;
                }
                Log.e(LOG_TAG, "onRegistrationError: Permanently prohibited.");
                this.mIsPermanentStopped = true;
                if (this.mTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED) {
                    this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
                    resetPcscfList();
                    return;
                }
                return;
            }
        }
        super.onRegistrationError(sipError, j, z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onVolteSettingChanged() {
        updateVolteState();
    }
}
