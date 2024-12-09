package com.sec.internal.ims.core;

import android.content.ContentValues;
import android.content.Context;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipErrorTmoUs;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class RegistrationGovernorTmo extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnTmo";
    static final int WFC_STATUS_OFF = 2;
    static final int WFC_STATUS_ON = 1;
    protected boolean mAllPcscfFailed;
    protected boolean mHasPendingDeregistration;
    protected String mLastKnownCountryIso;
    protected byte mWfcPrefMode;
    protected byte mWfcStatus;

    protected Set<String> applyInboundRoamingPolicy(Set<String> set, ISimManager iSimManager) {
        return set;
    }

    public RegistrationGovernorTmo(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        this.mWfcPrefMode = (byte) 0;
        this.mWfcStatus = (byte) 0;
        this.mAllPcscfFailed = false;
        this.mHasPendingDeregistration = false;
        this.mLastKnownCountryIso = "";
        this.mNeedToCheckSrvcc = true;
        updateEutranValues();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onWfcProfileChanged(byte[] bArr) {
        this.mWfcPrefMode = bArr[4];
        this.mWfcStatus = bArr[5];
        Log.i(LOG_TAG, "[WFC] PrefMode = " + ((int) this.mWfcPrefMode) + ", Status = " + ((int) this.mWfcStatus));
        if (this.mWfcStatus == 2) {
            Log.i(LOG_TAG, "WFC switch has turned off. Release throttle.");
            releaseThrottle(3);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onVolteSettingChanged() {
        updateEutranValues();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        super.onRegistrationDone();
        this.mAllPcscfFailed = false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onDeregistrationDone(boolean z) {
        this.mHasPendingDeregistration = false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationTerminated(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationTerminated: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j);
        this.mFailureCounter = 0;
        this.mCurPcscfIpIdx = 0;
        this.mRegiAt = 0L;
        if (!SipErrorBase.NOTIFY_TERMINATED_DEACTIVATED.equals(sipError) || this.mTask.getRegistrationRat() != 18) {
            if (j > 0) {
                startRetryTimer(j);
                return;
            } else {
                this.mRegHandler.sendTryRegister(this.mPhoneId);
                return;
            }
        }
        int i = this.mWFCSubscribeForbiddenCounter + 1;
        this.mWFCSubscribeForbiddenCounter = i;
        if (i > 2) {
            return;
        }
        if (j == 0) {
            j = getWaitTime(i);
        }
        startRetryTimer(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r8 != 20) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003b, code lost:
    
        if (r0 >= 2) goto L11;
     */
    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onPdnRequestFailed(com.sec.internal.constants.ims.core.PdnFailReason r7, int r8) {
        /*
            r6 = this;
            super.onPdnRequestFailed(r7, r8)
            boolean r0 = com.sec.internal.helper.os.DeviceUtil.isApAssistedMode()
            r1 = 1
            if (r0 == 0) goto Lc
            if (r8 != r1) goto L76
        Lc:
            com.sec.internal.ims.core.RegisterTask r8 = r6.mTask
            int r8 = r8.getRegistrationRat()
            boolean r0 = r6.isMatchedPdnFailReason(r7)
            r2 = 0
            if (r0 == 0) goto L23
            com.sec.internal.constants.ims.core.PdnFailReason r0 = com.sec.internal.constants.ims.core.PdnFailReason.PDN_MAX_TIMEOUT
            if (r7 != r0) goto L21
            r0 = 20
            if (r8 != r0) goto L3e
        L21:
            r0 = r1
            goto L3f
        L23:
            r0 = 13
            if (r8 != r0) goto L3e
            com.sec.internal.ims.core.RegistrationManagerInternal r0 = r6.mRegMan
            com.sec.internal.ims.core.RegisterTask r3 = r6.mTask
            int r3 = r3.getPhoneId()
            boolean r0 = r0.getCsfbSupported(r3)
            if (r0 != 0) goto L3e
            int r0 = r6.mPdnRejectCounter
            int r0 = r0 + r1
            r6.mPdnRejectCounter = r0
            r3 = 2
            if (r0 < r3) goto L3e
            goto L21
        L3e:
            r0 = r2
        L3f:
            if (r0 == 0) goto L76
            int r0 = r6.mPhoneId
            com.sec.internal.ims.core.RegisterTask r3 = r6.mTask
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "notifyImsNotAvailable. reason: "
            r4.append(r5)
            r4.append(r7)
            java.lang.String r7 = "Registration RAT: "
            r4.append(r7)
            r4.append(r8)
            java.lang.String r7 = "PDN Reject counter: "
            r4.append(r7)
            com.sec.internal.ims.core.PdnController r7 = r6.mPdnController
            r4.append(r7)
            java.lang.String r7 = r4.toString()
            java.lang.String r8 = "RegiGvnTmo"
            com.sec.internal.log.IMSLog.i(r8, r0, r3, r7)
            com.sec.internal.ims.core.RegistrationManagerInternal r7 = r6.mRegMan
            com.sec.internal.ims.core.RegisterTask r8 = r6.mTask
            r7.notifyImsNotAvailable(r8, r1)
            r6.mPdnRejectCounter = r2
        L76:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationGovernorTmo.onPdnRequestFailed(com.sec.internal.constants.ims.core.PdnFailReason, int):void");
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd(this.mPhoneId, "onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " unsolicit " + z);
        if (SipErrorBase.EMPTY_PCSCF.equals(sipError)) {
            this.mFailureCounter++;
            handlePcscfError();
            return;
        }
        if (j < 0) {
            j = 0;
        }
        if (SipErrorBase.MISSING_P_ASSOCIATED_URI.equals(sipError)) {
            this.mTask.setKeepPdn(true);
        } else if (SipErrorTmoUs.isCountryBlockingForbidden(sipError) && this.mTask.getRegistrationRat() == 18) {
            this.mRegMan.getEventLog().logAndAdd(this.mPhoneId, this.mTask, "onRegistrationError: Country blocking forbidden.");
            this.mTask.setDeregiReason(53);
            if (j == 0) {
                j = 10000;
            }
        } else {
            this.mFailureCounter++;
            if (!z) {
                this.mCurPcscfIpIdx++;
            }
        }
        if (this.mCurPcscfIpIdx >= this.mNumOfPcscfIp && !this.mRegMan.getCsfbSupported(this.mPhoneId)) {
            this.mAllPcscfFailed = true;
        }
        handleRetryTimer(j);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPublishError(SipError sipError) {
        Log.e(LOG_TAG, "onPublishError: state " + this.mTask.getState() + " error " + sipError);
        if (SipErrorBase.FORBIDDEN.equals(sipError)) {
            this.mTask.setReason("Publish Error. ReRegister..");
            this.mRegMan.sendReRegister(this.mTask);
        }
    }

    protected long getWaitTime(int i) {
        long pow = this.mRegBaseTimeMs * ((long) Math.pow(2.0d, i - 1));
        if (pow < 0) {
            return this.mRegMaxTimeMs;
        }
        return Math.min(this.mRegMaxTimeMs, pow);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onSubscribeError(int i, SipError sipError) {
        boolean z;
        Log.e(LOG_TAG, "onSubscribeError: state " + this.mTask.getState() + ", error " + sipError + ", event " + i);
        if (i == 0) {
            boolean z2 = false;
            if (SipErrorBase.OK.equals(sipError)) {
                this.mSubscribeForbiddenCounter = 0;
                return;
            }
            if (SipErrorBase.FORBIDDEN.equals(sipError) && this.mTask.getRegistrationRat() == 18) {
                int i2 = this.mWFCSubscribeForbiddenCounter + 1;
                this.mWFCSubscribeForbiddenCounter = i2;
                if (i2 > 2) {
                    z = false;
                    z2 = true;
                }
                z = true;
                z2 = true;
            } else if (SipErrorBase.BAD_EXTENSION.equals(sipError) || SipErrorBase.EXTENSION_REQUIRED.equals(sipError) || SipErrorBase.SESSION_INTERVAL_TOO_SMALL.equals(sipError)) {
                this.mFailureCounter++;
                this.mCurPcscfIpIdx++;
                handleRetryTimer(0L);
                z = true;
            } else {
                this.mWFCSubscribeForbiddenCounter = 0;
                this.mSubscribeForbiddenCounter++;
                z = true;
                z2 = true;
            }
            if (z2) {
                startRetryTimer(getWaitTime(this.mSubscribeForbiddenCounter + this.mWFCSubscribeForbiddenCounter));
            }
            this.mTask.setDeregiReason(44);
            this.mRegMan.deregister(this.mTask, true, z, "Subscribe Error. Deregister..");
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onTelephonyCallStatusChanged(int i) {
        if (i == 0 && this.mTask.getProfile().hasEmergencySupport()) {
            this.mTask.setDeregiReason(7);
            this.mRegMan.deregister(this.mTask, true, false, "Call status changed. Deregister..");
        }
    }

    private boolean isDataAllowed() {
        boolean z = Settings.Global.getInt(this.mContext.getContentResolver(), "data_roaming", 0) == 1;
        boolean isNetworkRoaming = this.mTelephonyManager.isNetworkRoaming();
        return (!isNetworkRoaming && NetworkUtil.isMobileDataOn(this.mContext)) || (isNetworkRoaming && z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        if (isImsDisabled()) {
            return new HashSet();
        }
        Set<String> hashSet = new HashSet<>();
        final HashSet hashSet2 = set != null ? new HashSet(set) : new HashSet();
        boolean isImsSwitchEnabled = DmConfigHelper.isImsSwitchEnabled(this.mContext, "volte", this.mPhoneId);
        boolean isImsSwitchEnabled2 = DmConfigHelper.isImsSwitchEnabled(this.mContext, DeviceConfigManager.RCS, this.mPhoneId);
        boolean z = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, this.mPhoneId) == 1;
        boolean isDataAllowed = isDataAllowed();
        boolean isImsSwitchEnabled3 = DmConfigHelper.isImsSwitchEnabled(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mPhoneId);
        IMSLog.i(LOG_TAG, this.mPhoneId, "VOLTE: " + isImsSwitchEnabled + ", RCS: " + isImsSwitchEnabled2 + ", rcs_user_setting: " + z + ", Data allowed: " + isDataAllowed + ", Default MSG app: " + isImsSwitchEnabled3);
        if (RegistrationUtils.supportCsTty(this.mTask) && SlotBasedConfig.getInstance(this.mPhoneId).getTTYMode()) {
            Log.i(LOG_TAG, "CS TTY Enabled");
            this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.CS_TTY.getCode());
            return new HashSet();
        }
        if (i == 13 || i == 20) {
            if (this.mRegMan.getNetworkEvent(this.mPhoneId).voiceOverPs == VoPsIndication.SUPPORTED) {
                if (this.mTask.getProfile().getPdn().equals("internet")) {
                    Log.i(LOG_TAG, "VoPS Supported. Registration over IMS pdn.");
                    return new HashSet();
                }
            } else if (this.mTask.getProfile().getPdn().equals(DeviceConfigManager.IMS)) {
                if (!hasRcsSession()) {
                    Log.i(LOG_TAG, "VoPS NOT Supported. Registration over Internet PDN.");
                    this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.VOPS_OFF.getCode());
                    return new HashSet();
                }
                Log.i(LOG_TAG, "VoPS NOT Supported. But, there are rcs sessions");
            }
        }
        if (isImsSwitchEnabled) {
            hashSet.addAll(servicesByImsSwitch(ImsProfile.getVoLteServiceList()));
            if (!hashSet.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_IMS_SWITCH_OFF.getCode());
            }
        }
        if (!ImsUtil.isDualVideoCallAllowed(this.mPhoneId)) {
            removeService(hashSet2, "mmtel-video", "Non-DDS operator SIM");
        }
        if (!isDataAllowed && i != 18) {
            removeService(hashSet2, "mmtel-video", "MobileData OFF");
        }
        if (this.mConfigModule.isValidAcsVersion(this.mPhoneId) && isImsSwitchEnabled2) {
            hashSet.addAll(servicesByImsSwitch(ImsProfile.getRcsServiceList()));
            Context context = this.mContext;
            int i2 = this.mPhoneId;
            final List<String> rcsEnabledServiceList = RcsConfigurationHelper.getRcsEnabledServiceList(context, i2, ConfigUtil.getRcsProfileWithFeature(context, i2, this.mTask.getProfile()));
            Arrays.stream(ImsProfile.getRcsServiceList()).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorTmo$$ExternalSyntheticLambda2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$filterService$0;
                    lambda$filterService$0 = RegistrationGovernorTmo.lambda$filterService$0(rcsEnabledServiceList, (String) obj);
                    return lambda$filterService$0;
                }
            }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorTmo$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RegistrationGovernorTmo.this.lambda$filterService$1(hashSet2, (String) obj);
                }
            });
            if (ImsUtil.getIR94VideoAuthValue(this.mPhoneId, this.mContext) == 0) {
                removeService(hashSet2, "mmtel-video", "ir94videoauth disabled");
            }
            if (isImsSwitchEnabled3 && SlotBasedConfig.getInstance(this.mPhoneId).isSimMobilityActivated()) {
                for (String str : ImsProfile.getRcsServiceList()) {
                    if (!SipMsg.EVENT_PRESENCE.equals(str)) {
                        removeService(hashSet2, str, "SM SimMobility");
                    }
                }
            }
            if (!isImsSwitchEnabled3 && ImsUtil.isSingleRegiAppConnected(this.mPhoneId)) {
                final List<String> sipDelegateServiceList = SecImsNotifier.getInstance().getSipDelegateServiceList(this.mPhoneId);
                Arrays.stream(ImsProfile.getRcsServiceList()).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationGovernorTmo$$ExternalSyntheticLambda4
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$filterService$2;
                        lambda$filterService$2 = RegistrationGovernorTmo.lambda$filterService$2(sipDelegateServiceList, (String) obj);
                        return lambda$filterService$2;
                    }
                }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorTmo$$ExternalSyntheticLambda5
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RegistrationGovernorTmo.this.lambda$filterService$3(hashSet2, (String) obj);
                    }
                });
            } else {
                boolean usingNonTerrestrialNetwork = this.mPdnController.getNetworkState(this.mPhoneId).getUsingNonTerrestrialNetwork();
                Log.i(LOG_TAG, "IsUsingNonTerrestrialNetwork : " + usingNonTerrestrialNetwork);
                if (!z || !isImsSwitchEnabled3 || usingNonTerrestrialNetwork) {
                    if (this.mTask.isRcsOnly()) {
                        for (String str2 : ImsProfile.getRcsServiceList()) {
                            removeService(hashSet2, str2, "RCS service off");
                        }
                    } else {
                        for (String str3 : ImsProfile.getChatServiceList()) {
                            removeService(hashSet2, str3, "chatservice off");
                        }
                    }
                }
            }
        }
        if (!RcsUtils.DualRcs.isRegAllowed(this.mContext, this.mPhoneId)) {
            for (String str4 : ImsProfile.getRcsServiceList()) {
                removeService(hashSet2, str4, "No DualRcs");
            }
        }
        if (isImsSwitchEnabled && isImsSwitchEnabled2) {
            int composerAuthValue = ImsUtil.getComposerAuthValue(this.mPhoneId, this.mContext);
            int vBCAuthValue = ImsUtil.getVBCAuthValue(this.mPhoneId, this.mContext);
            boolean z2 = ImsConstants.SystemSettings.ENRICHED_CALL_VBC.get(this.mContext, 1) == 1;
            Log.i(LOG_TAG, "composerAuthVal : " + composerAuthValue + "vbcAuthVal : " + vBCAuthValue + "vbcSettings:" + z2);
            boolean z3 = composerAuthValue == 2 || composerAuthValue == 3;
            boolean z4 = vBCAuthValue == 1;
            if (!z3 && (!z4 || !z2)) {
                removeService(hashSet2, "mmtel-call-composer", "MMTEL Composer off from ACS");
            }
        } else {
            hashSet.remove("mmtel-call-composer");
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (simManagerFromSimSlot != null && TextUtils.equals("TMobile_US:Inbound", simManagerFromSimSlot.getSimMnoName())) {
            hashSet = applyInboundRoamingPolicy(hashSet, simManagerFromSimSlot);
        }
        if (!hashSet2.isEmpty()) {
            hashSet2.retainAll(hashSet);
        }
        return hashSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$filterService$0(List list, String str) {
        return !list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filterService$1(Set set, String str) {
        removeService(set, str, "Disable from ACS.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$filterService$2(List list, String str) {
        return !list.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filterService$3(Set set, String str) {
        removeService(set, str, "Disable from singleregi");
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        Log.e(LOG_TAG, "onSipError: service=" + str + " error=" + sipError);
        this.mIsValid = this.mNumOfPcscfIp > 0;
        if ("mmtel".equals(str)) {
            if (SipErrorBase.SIP_TIMEOUT.equals(sipError) || SipErrorBase.PROXY_AUTHENTICATION_REQUIRED.equals(sipError)) {
                this.mTask.setDeregiReason(43);
                this.mRegMan.deregister(this.mTask, true, this.mIsValid, "SIP ERROR[MMTEL] : INVITE_TIMEOUT, Deregister..");
            } else if (SipErrorBase.SIP_INVITE_TIMEOUT.equals(sipError) || TextUtils.equals(sipError.getReason(), "TCP Connection Error")) {
                if (this.mHasVoLteCall) {
                    IMSLog.i(LOG_TAG, this.mTask.getPhoneId(), "onSipError: postpone deregi till call end");
                    this.mHasPendingDeregistration = true;
                } else {
                    removeCurrentPcscfAndInitialRegister(true);
                }
            } else if (SipErrorTmoUs.USER_NOT_REGISTERED_NR_NOWARNING.equals(sipError)) {
                this.mRegMan.updateRegistration(this.mTask, RegistrationConstants.UpdateRegiReason.SIPERROR_FORCED, false);
            }
        } else if (("im".equals(str) || "ft".equals(str)) && SipErrorBase.FORBIDDEN.equals(sipError)) {
            this.mTask.setReason("SIP ERROR[IM] : FORBIDDEN, Reregister..");
            this.mRegMan.sendReRegister(this.mTask);
        }
        return sipError;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onCallStatus(IRegistrationGovernor.CallEvent callEvent, SipError sipError, int i) {
        Log.i(LOG_TAG, "onCallStatus: event=" + callEvent + " error=" + sipError);
        if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_LAST_CALL_END) {
            if (this.mHasPendingDeregistration) {
                removeCurrentPcscfAndInitialRegister(true);
                this.mHasPendingDeregistration = false;
            }
        } else if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_INITIAL_REGI && SipErrorBase.SERVER_TIMEOUT.equals(sipError)) {
            removeCurrentPcscfAndInitialRegister(true);
            return;
        }
        super.onCallStatus(callEvent, sipError, i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected boolean checkCallStatus() {
        if (this.mRegMan.getTelephonyCallStatus(this.mPhoneId) != 0) {
            return this.mTask.getPdnType() == 11 && isSrvccCase();
        }
        return true;
    }

    private boolean checkVowifiSetting(int i) {
        if (i != 18 || this.mWfcStatus != 2) {
            return true;
        }
        Log.i(LOG_TAG, "Rat is IWLAN but WFC switch is OFF.");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF.getCode());
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkRcsEvent(int i) {
        if (!hasRcsSession()) {
            return true;
        }
        NetworkEvent networkEvent = this.mRegMan.getNetworkEvent(this.mPhoneId);
        boolean z = networkEvent != null ? networkEvent.isVopsUpdated : false;
        if ((i != 13 || z) && i != 18) {
            return true;
        }
        Log.i(LOG_TAG, "RCS session is active");
        this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.ONGOING_RCS_SESSION.getCode());
        return false;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        return checkEmergencyStatus() || (checkRegiStatus() && checkCallStatus() && checkVowifiSetting(i) && checkRcsEvent(i));
    }

    boolean hasRcsSession() {
        IImModule imModule = ImsRegistry.getServiceModuleManager().getImModule();
        return imModule != null && imModule.hasEstablishedSession();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isThrottled() {
        return this.mRegiAt > SystemClock.elapsedRealtime() || this.mAllPcscfFailed || (this.mWFCSubscribeForbiddenCounter > 2 && this.mTask.getRegistrationRat() == 18);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void releaseThrottle(int i) {
        if (i == 1) {
            this.mAllPcscfFailed = false;
            this.mFailureCounter = 0;
            this.mRegiAt = 0L;
            stopRetryTimer();
            this.mSubscribeForbiddenCounter = 0;
            return;
        }
        if (i == 2 || i == 3) {
            this.mWFCSubscribeForbiddenCounter = 0;
            return;
        }
        if (i == 6 || i == 9) {
            if (this.mAllPcscfFailed && !this.mRegMan.getCsfbSupported(this.mPhoneId)) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "releaseThrottle: Reset retry on new PLMN of EPS only/5GS");
                resetUpcomingRetry();
            }
        } else if (i != 14) {
            return;
        }
        this.mAllPcscfFailed = false;
    }

    protected void resetUpcomingRetry() {
        Log.i(LOG_TAG, "resetUpcomingRetry: Maintain mRegiAt: " + new Date(this.mRegiAt));
        this.mFailureCounter = 0;
        this.mCurPcscfIpIdx = 0;
        this.mThrottleReason = 0;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onContactActivated() {
        Log.i(LOG_TAG, "ContactActivated. Reset SRMR2 failure counter");
        this.mSubscribeForbiddenCounter = 0;
        this.mWFCSubscribeForbiddenCounter = 0;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getFailureType() {
        return (!this.mAllPcscfFailed || (this.mTask.getRegistrationRat() != 20 && this.mRegMan.getCsfbSupported(this.mTask.getPhoneId()))) ? 16 : 32;
    }

    private void updateEutranValues() {
        if (this.mTask.getProfile().hasService("mmtel")) {
            int voiceTechType = getVoiceTechType();
            Log.i(LOG_TAG, "updateEutranValues : voiceTech : " + voiceTechType);
            ContentValues contentValues = new ContentValues();
            if (voiceTechType == 0) {
                contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 3);
            } else {
                contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 2);
            }
            this.mContext.getContentResolver().update(UriUtil.buildUri(GlobalSettingsConstants.CONTENT_URI.toString(), this.mPhoneId), contentValues, null, null);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean determineDeRegistration(int i, int i2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "isNeedToDeRegistration:");
        if (i == 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isNeedToDeRegistration: no IMS service for network " + i2 + ". Deregister.");
            this.mTask.setReason("no IMS service for network : " + i2);
            this.mTask.setDeregiReason(4);
            RegistrationManagerInternal registrationManagerInternal = this.mRegMan;
            RegisterTask registerTask = this.mTask;
            registrationManagerInternal.tryDeregisterInternal(registerTask, !registerTask.isRcsOnly() && isSrvccCase(), false);
            return true;
        }
        return super.determineDeRegistration(i, i2);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isLocationInfoLoaded(int i) {
        if (i != 18) {
            return true;
        }
        Optional.ofNullable(ImsRegistry.getGeolocationController()).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationGovernorTmo$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationGovernorTmo.this.lambda$isLocationInfoLoaded$4((IGeolocationController) obj);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isLocationInfoLoaded$4(IGeolocationController iGeolocationController) {
        if (iGeolocationController.isCountryCodeLoaded(this.mPhoneId)) {
            return;
        }
        IMSLog.i(LOG_TAG, "isLocationInfoLoaded: No country code. Request to start Geolocation Update.");
        iGeolocationController.startGeolocationUpdate(this.mPhoneId, false);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getDetailedDeRegiReason(int i) {
        if (this.mTask.getDeregiReason() == 53) {
            return 53;
        }
        return super.getDetailedDeRegiReason(i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isDeregisterOnLocationUpdate() {
        boolean z = this.mRegMan.getTelephonyCallStatus(this.mPhoneId) == 0;
        boolean z2 = this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && this.mTask.getRegistrationRat() == 18 && this.mHasPendingDeregistration;
        if (z) {
            this.mHasPendingDeregistration = false;
        }
        return z && z2;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean onUpdateGeolocation(LocationInfo locationInfo) {
        if (TextUtils.isEmpty(this.mLastKnownCountryIso)) {
            this.mLastKnownCountryIso = (String) Optional.ofNullable(ImsRegistry.getGeolocationController()).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationGovernorTmo$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$onUpdateGeolocation$5;
                    lambda$onUpdateGeolocation$5 = RegistrationGovernorTmo.this.lambda$onUpdateGeolocation$5((IGeolocationController) obj);
                    return lambda$onUpdateGeolocation$5;
                }
            }).orElse("");
            IMSLog.i(LOG_TAG, this.mPhoneId, "onUpdateGeolocation: No countryIso. Get from GeolocationController: " + this.mLastKnownCountryIso);
        }
        String str = locationInfo.mCountry;
        IMSLog.i(LOG_TAG, this.mPhoneId, String.format(Locale.US, "onUpdateGeolocation: countryIso [%s] -> [%s]", this.mLastKnownCountryIso, str));
        if (TextUtils.isEmpty(str) || str.equalsIgnoreCase(this.mLastKnownCountryIso)) {
            return false;
        }
        this.mLastKnownCountryIso = str;
        this.mHasPendingDeregistration = true;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$onUpdateGeolocation$5(IGeolocationController iGeolocationController) {
        return iGeolocationController.getLastAccessedNetworkCountryIso(this.mPhoneId);
    }
}
