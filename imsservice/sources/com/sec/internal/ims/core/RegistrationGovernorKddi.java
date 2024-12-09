package com.sec.internal.ims.core;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.util.SemTelephonyAdapter;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class RegistrationGovernorKddi extends RegistrationGovernorBase {
    private static final long CP_T3402_EVENT_TIMER_MS = 720000;
    private static final Long DEFAULT_RETRY_AFTER_BUFFER_MS = 500L;
    private static final long DEFAULT_RETRY_AFTER_MS = 10000;
    private static final int KDDI_REG_FAIL_RETRY = 5;
    private static final String LOG_TAG = "RegiGvnKddi";
    private final Map<Integer, Boolean> mActiveNetworkMap;
    private final Set<String> mAnonymousEmergencyNetworkOperators;
    private final ScheduledExecutorService mScheduledExecutorForT3402Release;
    private ScheduledFuture<?> mScheduledFutureForT3402Release;
    protected int mSubscribeFailureCounter;

    public RegistrationGovernorKddi(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        this.mSubscribeFailureCounter = 0;
        this.mAnonymousEmergencyNetworkOperators = new HashSet(Set.of("44091", "44092", "44093", "44094"));
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.mActiveNetworkMap = concurrentHashMap;
        this.mScheduledExecutorForT3402Release = Executors.newSingleThreadScheduledExecutor();
        Boolean bool = Boolean.FALSE;
        concurrentHashMap.put(20, bool);
        concurrentHashMap.put(13, bool);
    }

    private void handleAllPcscfConsumed(SipError sipError) {
        this.mCurPcscfIpIdx = 0;
        this.mFailureCounter = 0;
        RegisterTask registerTask = this.mTask;
        registerTask.mKeepPdn = true;
        if (registerTask.getProfile().hasEmergencySupport()) {
            this.mRegiAt = 0L;
            Log.i(LOG_TAG, "onRegistrationError: Emergency Registration failed by " + sipError + ", tried on all PCSCF so trying again on First PCSCF");
            this.mRegHandler.sendTryRegister(this.mPhoneId);
            return;
        }
        triggerT3402Timer();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected void startRetryTimer(long j) {
        Long l = DEFAULT_RETRY_AFTER_BUFFER_MS;
        if (j > l.longValue()) {
            j -= l.longValue();
        }
        this.mRegiAt = SystemClock.elapsedRealtime() + j;
        stopRetryTimer();
        Log.i(LOG_TAG, "startRetryTimer: millis " + j);
        this.mRetryTimeout = this.mRegHandler.startRegistrationTimer(this.mTask, j);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationTerminated(SipError sipError, long j, boolean z) {
        this.mRegMan.getEventLog().logAndAdd("onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j);
        if (SipErrorBase.OK.equals(sipError)) {
            this.mFailureCounter = 0;
            this.mSubscribeFailureCounter = 0;
            this.mCurPcscfIpIdx = 0;
            startRetryTimer(10000L);
            return;
        }
        if (SipErrorBase.NOTIFY_TERMINATED_REJECTED.equals(sipError)) {
            Log.e(LOG_TAG, "onRegistrationError: Silently Purge the IMS Registration and dont send REGISTER");
            this.mFailureCounter = 0;
            this.mIsPermanentStopped = true;
        } else {
            if (j == 0 && !SipErrorBase.NOTIFY_TERMINATED_DEACTIVATED.equals(sipError)) {
                j = 10000;
            }
            this.mTask.mKeepPdn = true;
            startRetryTimer(j);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationError(SipError sipError, long j, boolean z) {
        Log.i(LOG_TAG, "onRegistrationError: state " + this.mTask.getState() + " error " + sipError + " retryAfterMs " + j + " mCurPcscfIpIdx " + this.mCurPcscfIpIdx + " mNumOfPcscfIp " + this.mNumOfPcscfIp + " mFailureCounter " + this.mFailureCounter + " mIsPermanentStopped " + this.mIsPermanentStopped);
        SimpleEventLog eventLog = this.mRegMan.getEventLog();
        StringBuilder sb = new StringBuilder();
        sb.append("onRegistrationError : ");
        sb.append(sipError);
        sb.append(", fail count : ");
        sb.append(this.mFailureCounter);
        eventLog.logAndAdd(sb.toString());
        if (j < 0) {
            j = 0;
        }
        this.mFailureCounter++;
        this.mCurPcscfIpIdx++;
        if (SipErrorBase.NOTIFY_TERMINATED_UNREGISTERED.equals(sipError)) {
            RegisterTask registerTask = this.mTask;
            registerTask.mKeepPdn = true;
            if (this.mPdnController.isConnected(registerTask.getPdnType(), this.mTask)) {
                this.mTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
            } else {
                this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            this.mRegMan.deregister(this.mTask, true, true, "Notify terminated unregistered");
            return;
        }
        if (isAnonymousEmergencyCallRequiredNetwork() && this.mTask.getProfile().hasEmergencySupport() && SipErrorBase.FORBIDDEN.equals(sipError)) {
            this.mAnonymousEmergencyRequired = true;
        }
        if (this.mTask.isRefreshReg()) {
            onRefreshRegError(sipError, j);
            return;
        }
        if (!SipErrorBase.USE_PROXY.equals(sipError) && this.mFailureCounter < 5) {
            Log.i(LOG_TAG, "onRegistrationError: Registration failed error " + sipError + " Incremented mFailureCounter " + this.mFailureCounter);
            this.mCurPcscfIpIdx = this.mCurPcscfIpIdx - 1;
            if (j == 0) {
                j = 10000;
            }
            this.mTask.mKeepPdn = true;
            startRetryTimer(j);
            return;
        }
        if (this.mCurPcscfIpIdx < this.mNumOfPcscfIp) {
            this.mFailureCounter = 0;
            this.mRegiAt = 0L;
            RegisterTask registerTask2 = this.mTask;
            registerTask2.mKeepPdn = true;
            if (this.mPdnController.isConnected(registerTask2.getPdnType(), this.mTask)) {
                this.mTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
            } else {
                this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            Log.i(LOG_TAG, "onRegistrationError: Registration failed error " + sipError + " mFailureCounter " + this.mFailureCounter + " Incremented mCurPcscfIpIdx " + this.mCurPcscfIpIdx + "mTask.getState()" + this.mTask.getState());
            this.mRegMan.deregister(this.mTask, true, true, sipError.getReason());
            return;
        }
        handleAllPcscfConsumed(sipError);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegistrationDone() {
        super.onRegistrationDone();
        resetActiveNetworkMap();
    }

    private void onRefreshRegError(SipError sipError, long j) {
        boolean z = SipErrorBase.SIP_TIMEOUT.equals(sipError) || SipErrorBase.REQUEST_TIMEOUT.equals(sipError) || SipErrorBase.SERVER_INTERNAL_ERROR.equals(sipError) || SipErrorBase.SERVER_TIMEOUT.equals(sipError) || SipErrorBase.SERVICE_UNAVAILABLE.equals(sipError) || SipErrorBase.FORBIDDEN.equals(sipError) || SipErrorBase.NOT_FOUND.equals(sipError) || SipErrorBase.USE_PROXY.equals(sipError);
        if (z) {
            this.mFailureCounter--;
        }
        if (z || this.mFailureCounter >= 5) {
            if (this.mCurPcscfIpIdx < this.mNumOfPcscfIp) {
                this.mFailureCounter = 0;
                this.mRegiAt = 0L;
                RegisterTask registerTask = this.mTask;
                registerTask.mKeepPdn = true;
                registerTask.setDeregiReason(41);
                if (this.mPdnController.isConnected(this.mTask.getPdnType(), this.mTask)) {
                    this.mTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
                } else {
                    this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
                }
                Log.i(LOG_TAG, "onRegistrationError: Send Initial REGISTER on NextPCSCF for error of Refresh REG");
                this.mRegMan.deregister(this.mTask, true, true, sipError.getReason());
                return;
            }
            handleAllPcscfConsumed(sipError);
            return;
        }
        this.mCurPcscfIpIdx--;
        if (j == 0 && !SipErrorBase.NOTIFY_TERMINATED_DEACTIVATED.equals(sipError)) {
            j = 10000;
        }
        this.mTask.mKeepPdn = true;
        Log.i(LOG_TAG, "onRegistrationError: Refresh Reg Retry same Refresh ");
        this.mRegHandler.sendUpdateRegistration(this.mTask.getProfile(), this.mPhoneId, j - DEFAULT_RETRY_AFTER_BUFFER_MS.longValue());
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onSubscribeError(int i, SipError sipError) {
        Log.i(LOG_TAG, "onSubscribeError: state " + this.mTask.getState() + " error " + sipError + "mSubscribeFailureCounter=" + this.mSubscribeFailureCounter + ", event " + i);
        if (i == 0) {
            int i2 = this.mSubscribeFailureCounter + 1;
            this.mSubscribeFailureCounter = i2;
            if (i2 < 5) {
                if (sipError.getCode() == 403 || sipError.getCode() == 404 || sipError.getCode() == 408 || sipError.getCode() == 500 || sipError.getCode() == 503 || sipError.getCode() == 504 || sipError.getCode() == 708) {
                    this.mTask.setDeregiReason(44);
                    this.mRegMan.deregister(this.mTask, true, true, "Subscribe Error. Initial Register.");
                    return;
                }
                return;
            }
            Log.i(LOG_TAG, "onSubscribeError: Complain to Governor");
            this.mFailureCounter = this.mSubscribeFailureCounter;
            this.mSubscribeFailureCounter = 0;
            this.mTask.getGovernor().onRegistrationError(sipError, 0L, false);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onCallStatus(IRegistrationGovernor.CallEvent callEvent, SipError sipError, int i) {
        Log.i(LOG_TAG, "onCallStatus: event=" + callEvent + " error=" + sipError);
        if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ESTABLISHED) {
            this.mHasVoLteCall = true;
        } else if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_LAST_CALL_END) {
            this.mHasVoLteCall = false;
        } else if (callEvent == IRegistrationGovernor.CallEvent.EVENT_CALL_ALT_SERVICE_INITIAL_REGI) {
            removeCurrentPcscfAndInitialRegister(true);
        }
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public SipError onSipError(String str, SipError sipError) {
        IVolteServiceModule iVolteServiceModule;
        Log.i(LOG_TAG, "onSipError: service=" + str + " error=" + sipError);
        if ("mmtel".equals(str)) {
            if ((SipErrorBase.SIP_INVITE_TIMEOUT.equals(sipError) && (iVolteServiceModule = this.mVsm) != null && iVolteServiceModule.getSessionCount(this.mPhoneId) < 2) || SipErrorBase.SIP_TIMEOUT.equals(sipError)) {
                removeCurrentPcscfAndInitialRegister(true);
            }
        } else if ("smsip".equals(str)) {
            if (sipError.getCode() == 403 || sipError.getCode() == 404 || sipError.getCode() == 423 || sipError.getCode() == 408 || sipError.getCode() == 500 || sipError.getCode() == 503 || sipError.getCode() == 504 || sipError.getCode() == 708) {
                this.mFailureCounter++;
                this.mTask.setDeregiReason(43);
                this.mRegMan.deregister(this.mTask, true, true, "SMS Error. Inital Register.");
            } else {
                return super.onSipError(str, sipError);
            }
        }
        return sipError;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetRetry() {
        Log.i(LOG_TAG, "resetRetry()");
        this.mFailureCounter = 0;
        this.mSubscribeFailureCounter = 0;
        this.mCurPcscfIpIdx = 0;
        this.mCurImpu = 0;
        this.mRegiAt = 0L;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected int getVoiceTechType() {
        forceTurnOnVoLte();
        return super.getVoiceTechType();
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public Set<String> filterService(Set<String> set, int i) {
        if (isImsDisabled()) {
            return new HashSet();
        }
        if (getVoiceTechType() != 0) {
            Log.i(LOG_TAG, "filterService: volte disabled");
            this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF.getCode());
            return new HashSet();
        }
        Set<String> hashSet = new HashSet<>();
        Set<String> hashSet2 = new HashSet<>(set);
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "volte", this.mPhoneId) == 1) {
            hashSet.addAll(servicesByImsSwitch(ImsProfile.getVoLteServiceList()));
            if (!hashSet.contains("mmtel")) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NO_MMTEL_IMS_SWITCH_OFF.getCode());
            }
        }
        if (i == 13 && this.mTask.getProfile().getPdnType() == 11) {
            hashSet = applyVoPsPolicy(hashSet);
            if (hashSet.isEmpty()) {
                this.mTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.VOPS_OFF.getCode());
                return hashSet;
            }
        }
        if (!isVideoCallEnabled()) {
            removeService(hashSet2, "mmtel-video", "VideoCall disable");
        }
        if (!hashSet2.isEmpty()) {
            hashSet2.retainAll(hashSet);
        }
        return hashSet2;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase
    protected Set<String> applyVoPsPolicy(Set<String> set) {
        boolean isNetworkRoaming = this.mTelephonyManager.isNetworkRoaming();
        if (set == null) {
            return new HashSet();
        }
        if (this.mRegMan.getNetworkEvent(this.mPhoneId).voiceOverPs == VoPsIndication.NOT_SUPPORTED) {
            if (isNetworkRoaming) {
                removeService(set, "mmtel-video", "VoPS Off");
                removeService(set, "mmtel", "VoPS Off");
            } else {
                return new HashSet();
            }
        }
        return set;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.ims.core.RegistrationGovernor
    protected boolean checkVolteSetting(int i) {
        if (i == 18 || getVoiceTechType() == 0) {
            return true;
        }
        Log.i(LOG_TAG, "isReadyToRegister: volte disabled");
        this.mRegMan.resetNotifiedImsNotAvailable(this.mPhoneId);
        return true;
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToRegister(int i) {
        return !this.mAnonymousEmergencyRequired && (checkEmergencyStatus() || (checkRegiStatus() && checkCallStatus() && checkRoamingStatus(i) && checkVolteSetting(i)));
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public RegisterTask onManualDeregister(boolean z) {
        if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED) && this.mTask.getProfile().hasEmergencySupport()) {
            if (this.mTelephonyManager.isNetworkRoaming()) {
                Log.i(LOG_TAG, "isRoaming=" + this.mTelephonyManager.isNetworkRoaming());
                this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "onManualDeregister: for Emergency DeRegistration");
            this.mRegMan.tryDeregisterInternal(this.mTask, true, false);
            return null;
        }
        if (this.mTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.EMERGENCY) || (this.mTask.getState() == RegistrationConstants.RegisterTaskState.DEREGISTERING && this.mTask.getUserAgent() == null)) {
            this.mRegMan.tryDeregisterInternal(this.mTask, true, true);
            return null;
        }
        return super.onManualDeregister(z);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void releaseThrottle(int i) {
        if (i == 1) {
            this.mIsPermanentStopped = false;
        } else if (i == 4) {
            this.mIsPermanentStopped = false;
            this.mCurImpu = 0;
        } else if (i == 15) {
            this.mAnonymousEmergencyRequired = false;
        }
        updateLteNrNetworkMap(i);
        if (this.mIsPermanentStopped) {
            return;
        }
        Log.i(LOG_TAG, "releaseThrottle: case by " + i);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernor, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void handlePcscfRestoration(List<String> list) {
        Log.i(LOG_TAG, "handlePcscfRestoration: pcscfIpList=" + list);
        updatePcscfIpList(list, true);
    }

    private void updateLteNrNetworkMap(int i) {
        Log.i(LOG_TAG, "updateLteNrNetworkMap: case by " + i);
        if (this.mRegiAt <= SystemClock.elapsedRealtime()) {
            resetActiveNetworkMap();
            return;
        }
        if (i == 1) {
            abortT3402Timer();
        } else if (i == 12) {
            releaseNetworkForLteIfRequired();
        } else if (i == 13) {
            releaseNetworkForNrIfRequired();
        }
    }

    private void releaseNetworkForNrIfRequired() {
        Log.i(LOG_TAG, "releaseNetworkForNrIfRequired: mActiveNetworkMap=" + this.mActiveNetworkMap);
        if (isT3402TimerTriggeredOnlyOnLte()) {
            this.mRegiAt = 0L;
            stopRetryTimer();
        }
    }

    private void releaseNetworkForLteIfRequired() {
        Log.i(LOG_TAG, "releaseNetworkForNrIfRequired: mActiveNetworkMap=" + this.mActiveNetworkMap);
        if (isT3402TimerTriggeredOnlyOnNR()) {
            this.mRegiAt = 0L;
            stopRetryTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetActiveNetworkMap() {
        Log.i(LOG_TAG, "resetActiveNetworkMap: mActiveNetworkMap=" + this.mActiveNetworkMap);
        if (this.mActiveNetworkMap.get(13).booleanValue()) {
            this.mActiveNetworkMap.put(13, Boolean.FALSE);
        }
        if (this.mActiveNetworkMap.get(20).booleanValue()) {
            this.mActiveNetworkMap.put(20, Boolean.FALSE);
        }
    }

    private boolean isT3402TimerTriggeredOnlyOnNR() {
        return !this.mActiveNetworkMap.get(13).booleanValue() && this.mActiveNetworkMap.get(20).booleanValue();
    }

    private boolean isT3402TimerTriggeredOnlyOnLte() {
        return this.mActiveNetworkMap.get(13).booleanValue() && !this.mActiveNetworkMap.get(20).booleanValue();
    }

    private void triggerT3402Timer() {
        Log.i(LOG_TAG, "onRegistrationError: Registration Retries failed so start the T3402 Timer, current Rat=" + this.mTask.getRegistrationRat());
        this.mActiveNetworkMap.put(Integer.valueOf(this.mTask.getRegistrationRat()), Boolean.TRUE);
        startRetryTimer(CP_T3402_EVENT_TIMER_MS);
        this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
        resetPcscfList();
        boolean isSupportLteCapaOptionC = SemTelephonyAdapter.isSupportLteCapaOptionC(this.mPhoneId);
        Log.i(LOG_TAG, "isSupportLteCapaOptionC=" + isSupportLteCapaOptionC + ", isRoaming=" + this.mTelephonyManager.isNetworkRoaming());
        if (isSupportLteCapaOptionC || this.mTelephonyManager.isNetworkRoaming()) {
            Log.i(LOG_TAG, "registration tried on all network, schedule T3402 release timer");
            this.mScheduledFutureForT3402Release = this.mScheduledExecutorForT3402Release.schedule(new Runnable() { // from class: com.sec.internal.ims.core.RegistrationGovernorKddi$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationGovernorKddi.this.resetActiveNetworkMap();
                }
            }, 715000L, TimeUnit.MILLISECONDS);
            this.mRegMan.notifyImsNotAvailable(this.mTask, true);
        }
    }

    private void abortT3402Timer() {
        Log.i(LOG_TAG, "abortT3402Timer:");
        resetActiveNetworkMap();
        releaseScheduledFutureForT3402Release();
        this.mRegiAt = 0L;
        stopRetryTimer();
    }

    private void releaseScheduledFutureForT3402Release() {
        ScheduledFuture<?> scheduledFuture = this.mScheduledFutureForT3402Release;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            return;
        }
        Log.i(LOG_TAG, "releaseScheduledFutureForT3402Release:");
        this.mScheduledFutureForT3402Release.cancel(false);
    }

    private boolean isAnonymousEmergencyCallRequiredNetwork() {
        return this.mTelephonyManager.isNetworkRoaming() || this.mAnonymousEmergencyNetworkOperators.contains(RegistrationUtils.getNetworkEvent(this.mPhoneId).operatorNumeric);
    }
}
