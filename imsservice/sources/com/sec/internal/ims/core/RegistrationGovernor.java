package com.sec.internal.ims.core;

import android.net.Uri;
import android.os.Message;
import android.os.SystemClock;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.helper.DelayedMessage;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class RegistrationGovernor implements IRegistrationGovernor {
    protected static final long DEFAULT_RETRY_AFTER_MS = 1000;
    public static final int PREFERED_IMPU_TYPE_ANY_FIRST = 0;
    public static final int PREFERED_IMPU_TYPE_IMSI_BASED = 1;
    public static final int RELEASE_AIRPLANEMODE_ON = 1;
    public static final int RELEASE_ALWAYS = 0;
    public static final int RELEASE_AUTOCONFIG_UPDATED = 7;
    public static final int RELEASE_CMC_UPDATED = 8;
    public static final int RELEASE_DETACH_WITH_REATTACH = 10;
    public static final int RELEASE_EMERGENCY_BLOCKED = 15;
    public static final int RELEASE_LTE_NETWORK_IN_SERVICE = 12;
    public static final int RELEASE_NETWORK_CHANGED = 6;
    public static final int RELEASE_NO_ALTERNATIVE = 14;
    public static final int RELEASE_NR_NETWORK_IN_SERVICE = 13;
    public static final int RELEASE_PDN_DISCONNECTED = 5;
    public static final int RELEASE_PLMN_CHANGED = 9;
    public static final int RELEASE_ROAMING_CHANGED = 11;
    public static final int RELEASE_SIM_REMOVED = 4;
    public static final int RELEASE_WFC_TURNED_OFF = 3;
    public static final int RELEASE_WIFI_TURNED_OFF = 2;
    public static final long RETRY_AFTER_EPDGDEREGI_MS = 1000;
    public static final long RETRY_AFTER_PDNLOST_MS = 3000;
    public static final String RETRY_TO_NEXT_PCSCF = "next_pcscf";
    public static final String RETRY_TO_SAME_PCSCF = "same_pcscf";
    public static final int THROTTLE_AFTER_PDN_DISCONNECTED = 1;
    public static final int THROTTLE_REASON_DEFAULT = 0;
    protected int mPhoneId;
    protected long mRegBaseTimeMs = 30000;
    protected long mRegMaxTimeMs = 1800000;
    protected int mFailureCounter = 0;
    protected boolean mIsReadyToGetReattach = false;
    protected boolean mIsPermanentStopped = false;
    protected boolean mThrottledforImsNotAvailable = false;
    protected boolean mDiscardCurrentNetwork = false;
    protected boolean mIsPermanentPdnFailed = false;
    protected int mCurPcscfIpIdx = 0;
    protected int mNumOfPcscfIp = 0;
    protected int mCurImpu = 0;
    protected boolean mIsValid = false;
    protected boolean mIPsecAllow = true;
    protected boolean mMoveToNextPcscfAfterTimerB = false;
    protected long mRegiAt = 0;
    protected int mThrottleReason = 0;
    protected boolean mHasVoLteCall = false;
    protected boolean mPse911Prohibited = false;
    protected boolean mAnonymousEmergencyRequired = false;
    protected long mPdnFailRetryTime = -1;
    protected boolean mHasPdnFailure = false;
    protected int mSubscribeForbiddenCounter = 0;
    protected int mWFCSubscribeForbiddenCounter = 0;
    protected boolean mNonVoLTESimByPdnFail = false;
    protected int mPdnRejectCounter = 0;
    protected boolean mDelayedDeregisterTimerRunning = false;
    protected boolean mNeedToCheckSrvcc = false;
    protected boolean mHandlePcscfOnAlternativeCall = false;
    protected boolean mUpsmEnabled = false;
    protected int mCallStatus = 0;
    protected boolean mNeedToCheckLocationSetting = true;
    protected List<String> mPcscfIpList = new ArrayList();
    protected Message mRetryTimeout = null;
    protected DelayedMessage mTimEshtablishTimeout = null;
    protected DelayedMessage mTimEshtablishTimeoutRCS = null;
    protected String mTimEshtablishTimeoutReason = null;
    protected PcoType mPcoType = PcoType.PCO_POSTPAY;
    protected String mCountry = null;

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean blockImmediatelyUpdateRegi() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void checkAcsPcscfListChange() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean checkEmergencyInProgress() {
        return false;
    }

    protected boolean checkEpdgEvent(int i) {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void checkProfileUpdateFromDM(boolean z) {
    }

    protected boolean checkRcsEvent(int i) {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void checkUnProcessedVoLTEState() {
    }

    protected boolean checkVolteSetting(int i) {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void clear() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void enableRcsOverIms(ImsProfile imsProfile) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void finishOmadmProvisioningUpdate() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getDetailedDeRegiReason(int i) {
        if (i != 32) {
            return i != 33 ? 42 : 81;
        }
        return 71;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getP2pListSize(int i) {
        return 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void handlePcscfRestoration(List<String> list) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean hasNetworkFailure() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isDelayedDeregisterTimerRunning() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isDeregisterOnLocationUpdate() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isIPSecAllow() {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isMobilePreferredForRcs() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isNeedDelayedDeregister() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isOmadmConfigAvailable() {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToDualRegister(boolean z) {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isThrottledforImsNotAvailable() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean needImsNotAvailable() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean needPendingPdnConnected() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void notifyLocationTimeout() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void notifyReattachToRil() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void notifyVoLteOnOffToRil(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onConfigUpdated() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onContactActivated() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onDeregistrationDone(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onEpdgDisconnected() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onLocalIpChanged() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onLocationCacheExpiry() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onLteDataNetworkModeSettingChanged(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPackageDataCleared(Uri uri) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnConnecting(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPublishError(SipError sipError) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onRegEventContactUriNotification(List<ImsUri> list, int i, String str, String str2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onServiceStateDataChanged(boolean z, boolean z2) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onSrvccComplete() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onSubscribeError(int i, SipError sipError) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onTelephonyCallStatusChanged(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean onUpdateGeolocation(LocationInfo locationInfo) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean onUpdatedPcoInfo(int i, int i2) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onVolteSettingChanged() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onWfcProfileChanged(byte[] bArr) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void registerAllowedNetworkTypesListener() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void requestLocation(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetAllPcscfChecked() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetAllRetryFlow() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetIPSecAllow() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetPcscfPreference() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void retryDNSQuery() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void runDelayedDeregister() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void setNeedDelayedDeregister(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void startOmadmProvisioningUpdate() {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void startTimsTimer(String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void stopTimsTimer(String str) {
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void unRegisterIntentReceiver() {
    }

    public enum PcoType {
        PCO_DEFAULT(-2),
        PCO_AWAITING(-1),
        PCO_POSTPAY(0),
        PCO_RESTRICTED_ACCESS(2),
        PCO_ZERO_BALANCE(3),
        PCO_RATE_THROTTLING(4),
        PCO_SELF_ACTIVATION(5);

        private int mType;

        PcoType(int i) {
            this.mType = i;
        }

        public static PcoType fromType(int i) {
            for (PcoType pcoType : values()) {
                if (pcoType.mType == i) {
                    return pcoType;
                }
            }
            return PCO_DEFAULT;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetPdnFailureInfo() {
        this.mPdnRejectCounter = 0;
        this.mHasPdnFailure = false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean hasPdnFailure() {
        return this.mHasPdnFailure;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isNonVoLteSimByPdnFail() {
        return this.mNonVoLTESimByPdnFail;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void makeThrottle() {
        this.mIsPermanentStopped = true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void throttleforImsNotAvailable() {
        this.mThrottledforImsNotAvailable = true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetPermanentFailure() {
        this.mDiscardCurrentNetwork = false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetPcscfList() {
        this.mIsValid = false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void setPcoType(PcoType pcoType) {
        this.mPcoType = pcoType;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void resetPcoType() {
        this.mPcoType = PcoType.PCO_POSTPAY;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void addDelay(long j) {
        addDelay(j, 0);
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void addDelay(long j, int i) {
        this.mRegiAt = SystemClock.elapsedRealtime() + j;
        this.mThrottleReason = i;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void setRetryTimeOnPdnFail(long j) {
        this.mPdnFailRetryTime = j;
    }

    protected void setCallStatus(int i) {
        this.mCallStatus = i;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isThrottled() {
        return getThrottleState() != IRegistrationGovernor.ThrottleState.IDLE;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public IRegistrationGovernor.ThrottleState getThrottleState() {
        IRegistrationGovernor.ThrottleState throttleState = IRegistrationGovernor.ThrottleState.IDLE;
        if (this.mIsPermanentStopped) {
            return IRegistrationGovernor.ThrottleState.PERMANENTLY_STOPPED;
        }
        return this.mRegiAt > SystemClock.elapsedRealtime() ? IRegistrationGovernor.ThrottleState.TEMPORARY_THROTTLED : throttleState;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean hasValidPcscfIpList() {
        return this.mIsValid;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getNextImpuType() {
        return this.mCurImpu;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getFailureCount() {
        return this.mFailureCounter;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isExistRetryTimer() {
        return this.mRetryTimeout != null;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isPse911Prohibited() {
        return this.mPse911Prohibited;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isAnonymousEmergencyCallRequired() {
        return this.mAnonymousEmergencyRequired;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public PcoType getPcoType() {
        return this.mPcoType;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getWFCSubscribeForbiddenCounter() {
        return this.mWFCSubscribeForbiddenCounter;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public int getPcscfOrdinal() {
        return this.mCurPcscfIpIdx;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public long getRetryTimeOnPdnFail() {
        return this.mPdnFailRetryTime;
    }

    protected int getCallStatus() {
        return this.mCallStatus;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnConnected() {
        if (this.mRegiAt <= SystemClock.elapsedRealtime() || this.mThrottleReason != 1) {
            return;
        }
        this.mRegiAt = 0L;
        this.mThrottleReason = 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public boolean isReadyToGetReattach() {
        return this.mIsReadyToGetReattach;
    }
}
