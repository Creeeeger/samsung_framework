package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.params.ACSConfig;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IDialogAdapter;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.interfaces.ims.config.ITelephonyAdapter;
import com.sec.internal.interfaces.ims.config.IXmlParserAdapter;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public abstract class WorkflowUpBase extends WorkflowBase {
    protected static final int AUTH_HIDDENTRY_MAX_COUNT = 3;
    protected static final int AUTH_TRY_MAX_COUNT = 1;
    protected static final int INTERNALERR_RETRY_MAX_COUNT = 5;
    protected static final String LOG_TAG = WorkflowUpBase.class.getSimpleName();
    protected String[] mAlternateVersions;
    protected ConnectivityManager mConnectivityManager;
    protected int mNewVersion;
    protected int mOldVersion;

    protected WorkflowBase.Workflow handleResponseForUpOther(WorkflowBase.Workflow workflow, WorkflowBase.Workflow workflow2, WorkflowBase.Workflow workflow3) throws InvalidHeaderException {
        return null;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
    }

    public WorkflowUpBase(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, ITelephonyAdapter iTelephonyAdapter, IStorageAdapter iStorageAdapter, IHttpAdapter iHttpAdapter, IXmlParserAdapter iXmlParserAdapter, IDialogAdapter iDialogAdapter, int i) {
        super(looper, context, iConfigModule, mno, iTelephonyAdapter, iStorageAdapter, iHttpAdapter, iXmlParserAdapter, iDialogAdapter, i);
        this.mConnectivityManager = null;
        this.mOldVersion = 0;
        this.mNewVersion = 0;
        this.mAlternateVersions = ImsRegistry.getStringArray(this.mPhoneId, GlobalSettingsConstants.RCS.ALT_PROVISIONING_VERSION, null);
        this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        int i2 = this.mPhoneId;
        this.mRcsUPProfile = ImsRegistry.getString(i2, GlobalSettingsConstants.RCS.UP_PROFILE, ImsRegistry.getRcsProfileType(i2));
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void startAutoConfig(boolean z) {
        if (this.mIsConfigOngoing) {
            Log.i(LOG_TAG, "startAutoConfig ongoing");
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "startAutoConfig mobile: " + z);
        this.mMobileNetwork = z;
        sendEmptyMessage(1);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void forceAutoConfig(boolean z) {
        if (this.mIsConfigOngoing) {
            Log.i(LOG_TAG, "forceAutoConfig ongoing");
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "forceAutoConfig mobile:" + z);
        this.mMobileNetwork = z;
        sendEmptyMessage(0);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void forceAutoConfigNeedResetConfig(boolean z) {
        if (this.mIsConfigOngoing) {
            Log.i(LOG_TAG, "forceAutoConfigNeedResetConfig ongoing");
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "forceAutoConfigNeedResetConfig mobile:" + z);
        this.mMobileNetwork = z;
        ACSConfig acsConfig = this.mModule.getAcsConfig(this.mPhoneId);
        if (getVersion() == -2 && acsConfig.isTriggeredByNrcr() && this.mMno.isOneOf(Mno.SWISSCOM, Mno.TMOBILE)) {
            setOpMode(WorkflowBase.OpMode.DISABLE, null);
            acsConfig.setAcsVersion(-2);
        } else {
            setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
        }
        sendEmptyMessage(0);
    }

    protected WorkflowBase.Workflow handleResponseForUp(WorkflowBase.Workflow workflow, WorkflowBase.Workflow workflow2, WorkflowBase.Workflow workflow3) throws InvalidHeaderException, UnknownStatusException {
        String str;
        IHttpAdapter.Response httpResponse = this.mSharedInfo.getHttpResponse();
        setLastErrorCode(httpResponse.getStatusCode());
        String str2 = LOG_TAG;
        IMSLog.i(str2, this.mPhoneId, "handleResponseForUp: mLastErrorCode: " + this.mLastErrorCode);
        addEventLog(str2 + "handleResponseForUp: mLastErrorCode: " + this.mLastErrorCode);
        String str3 = null;
        if (this.mAlternateVersions != null) {
            str = (String) Optional.ofNullable(httpResponse.getHeader().get(HttpRequest.HEADER_SUPPORTED_VERSIONS)).map(new Function() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$handleResponseForUp$0;
                    lambda$handleResponseForUp$0 = WorkflowUpBase.lambda$handleResponseForUp$0((List) obj);
                    return lambda$handleResponseForUp$0;
                }
            }).orElse(null);
            if (str != null) {
                setAcsSeverSupportedVersions(str.trim());
            }
        } else {
            str = null;
        }
        if (this.mMno.isOneOf(Mno.TELEFONICA_GERMANY, Mno.TELEFONICA_SPAIN, Mno.TELEFONICA_UK)) {
            return handleResponseForUpOther(workflow, workflow2, workflow3);
        }
        int i = this.mLastErrorCode;
        if (i != 0) {
            if (i == 200) {
                Log.i(str2, "normal case");
            } else if (i == 403) {
                Log.i(str2, "set version to zero");
                setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
            } else if (i == 406) {
                if (this.mAlternateVersions != null) {
                    String string = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_PROVISIONING_VERSION, "2.0");
                    if (str != null) {
                        if (!str.contains(string)) {
                            String[] strArr = this.mAlternateVersions;
                            int length = strArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length) {
                                    break;
                                }
                                String str4 = strArr[i2];
                                if (str.contains(str4)) {
                                    str3 = str4;
                                    break;
                                }
                                i2++;
                            }
                        } else {
                            str3 = string;
                        }
                    }
                }
                if (str3 != null) {
                    this.mRcsProvisioningVersion = str3;
                }
            } else if (i == 500) {
                Log.i(str2, "internal server error");
                int internalErrRetryCount = this.mSharedInfo.getInternalErrRetryCount();
                Log.i(str2, "retryCount: " + internalErrRetryCount);
                if (internalErrRetryCount <= 5) {
                    this.mSharedInfo.setInternalErrRetryCount(internalErrRetryCount + 1);
                    return workflow;
                }
            } else if (i == 503) {
                long j = getretryAfterTime();
                Log.i(str2, "retry after " + j + " sec");
                int i3 = (int) j;
                setValidityTimer(i3);
                setNextAutoconfigTimeAfter(i3);
                if (this.mMno == Mno.SWISSCOM && this.mSharedInfo.getHttpParams().containsKey(ConfigConstants.PNAME.OTP)) {
                    Log.d(str2, "got 503 response for request with OTP, restart autoconf");
                    this.mSharedInfo.setHttpResponse(null);
                    this.mSharedInfo.setHttpClean();
                }
            } else {
                if (i == 511) {
                    Log.i(str2, "The token is no longer valid");
                    setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
                    removeValidToken();
                    return workflow;
                }
                if (i == 800) {
                    Log.i(str2, "SSL handshake is failed");
                } else {
                    throw new UnknownStatusException("unknown http status code");
                }
            }
            return workflow2;
        }
        Log.i(str2, "RCS configuration server is unreachable");
        return workflow3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$handleResponseForUp$0(List list) {
        return (String) list.get(0);
    }

    protected void checkAndUpdateData(Map<String, String> map) {
        String token = getToken();
        String token2 = getToken(map);
        String str = LOG_TAG;
        IMSLog.s(str, "checkAndUpdateData: oldToken: " + token + " newToken: " + token2);
        if (!TextUtils.isEmpty(token2) && !token2.equals(token)) {
            Log.i(str, "checkAndUpdateData: token is changed, update it");
            setToken(token2, DiagnosisConstants.RCSA_TDRE.UPDATE_TOKEN);
        }
        String valueOf = getVersion() > 0 ? String.valueOf(getValidity()) : "";
        String valueOf2 = getVersion(map) > 0 ? String.valueOf(getValidity(map)) : "";
        IMSLog.s(str, "checkAndUpdateData: oldValidity: " + valueOf + " newValidity: " + valueOf2);
        if (TextUtils.isEmpty(valueOf2) || valueOf2.equals(valueOf)) {
            return;
        }
        Log.i(str, "checkAndUpdateData: validity is changed, update it");
        setValidity(Integer.parseInt(valueOf2));
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected void setOpMode(WorkflowBase.OpMode opMode, Map<String, String> map) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "setOpMode: mode: " + opMode.name());
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[opMode.ordinal()]) {
            case 1:
                if (map == null) {
                    setActiveOpModeWithEmptyData();
                    return;
                } else {
                    setActiveOpMode(map);
                    return;
                }
            case 2:
                if (map != null) {
                    int validity = getValidity(map);
                    if (getVersion(map) == 0 && validity > 0) {
                        setVersion(getVersion(map));
                        setValidity(validity);
                        setNextAutoconfigTimeAfter(validity);
                        return;
                    }
                }
                break;
            case 3:
            case 4:
                break;
            case 5:
                setDormantOpMode(opMode);
                return;
            case 6:
            case 7:
            case 8:
            case 9:
                setDisabledStateOpMode(opMode, map);
                return;
            case 10:
                setDisableRcsByUserOpMode();
                return;
            case 11:
                setEnableRcsByUserOpMode();
                return;
            default:
                Log.i(str, "unknown mode");
                return;
        }
        setDisableOpMode(opMode, map);
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowUpBase$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode;

        static {
            int[] iArr = new int[WorkflowBase.OpMode.values().length];
            $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode = iArr;
            try {
                iArr[WorkflowBase.OpMode.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_TEMPORARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_PERMANENTLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DORMANT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_BY_RCS_DISABLED_STATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DORMANT_BY_RCS_DISABLED_STATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_RCS_BY_USER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.ENABLE_RCS_BY_USER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    protected boolean isDataFullUpdateNeeded(Map<String, String> map) {
        return getVersion() < getVersion(map) || (this.mStartForce && !String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(getRcsState()));
    }

    protected void setActiveOpMode(Map<String, String> map) {
        String str = LOG_TAG;
        IMSLog.s(str, "data: " + map);
        if (isDataFullUpdateNeeded(map)) {
            writeDataToStorage(map);
            setVersionBackup(getVersion(map));
            String token = getToken(map);
            if (!TextUtils.isEmpty(token)) {
                String str2 = "IMSI_" + SimManagerFactory.getImsiFromPhoneId(this.mPhoneId);
                Log.i(str, "save valid token");
                ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, ImsSharedPrefHelper.VALID_RCS_CONFIG, str2, token);
            }
        } else {
            Log.i(str, "the same or lower version, remain previous data");
            checkAndUpdateData(map);
        }
        setNextAutoconfigTimeAfter(getValidity());
    }

    protected void setActiveOpModeWithEmptyData() {
        int parsedIntVersionBackup = getParsedIntVersionBackup();
        if (parsedIntVersionBackup >= WorkflowBase.OpMode.ACTIVE.value()) {
            Log.i(LOG_TAG, "retreive backup version of configuration");
            setVersion(parsedIntVersionBackup);
        } else {
            Log.i(LOG_TAG, "data is empty, remain previous data and mode");
        }
    }

    protected void setDisableOpMode(WorkflowBase.OpMode opMode, Map<String, String> map) {
        clearStorage(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
        if (map != null) {
            this.mStorage.writeAll(map);
        }
        setVersion(opMode.value());
        setValidity(opMode.value());
    }

    protected void setDormantOpMode(WorkflowBase.OpMode opMode) {
        int version = getVersion();
        if (version != WorkflowBase.OpMode.DORMANT.value() && getParsedIntVersionBackup() < WorkflowBase.OpMode.ACTIVE.value()) {
            setVersionBackup(version);
        }
        setVersion(opMode.value());
    }

    protected void setDisabledStateOpMode(WorkflowBase.OpMode opMode, Map<String, String> map) {
        if (map != null) {
            this.mStorage.writeAll(map);
        }
        if (getOpMode() == WorkflowBase.OpMode.ACTIVE) {
            setVersionBackup(getVersion());
        }
        if (opMode == WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE) {
            setVersion(WorkflowBase.OpMode.DISABLE_TEMPORARY.value());
        } else if (opMode == WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE) {
            setVersion(WorkflowBase.OpMode.DISABLE_PERMANENTLY.value());
        } else if (opMode == WorkflowBase.OpMode.DISABLE_BY_RCS_DISABLED_STATE) {
            setVersion(WorkflowBase.OpMode.DISABLE.value());
        } else {
            setVersion(WorkflowBase.OpMode.DORMANT.value());
        }
        setRcsState(String.valueOf(WorkflowBase.OpMode.DISABLE_TEMPORARY.value()));
        cancelValidityTimer();
        setNextAutoconfigTime(r2.value());
    }

    protected void setDisableRcsByUserOpMode() {
        if (getOpMode() == WorkflowBase.OpMode.ACTIVE) {
            setVersionBackup(getVersion());
        }
        setRcsState(String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()));
        Log.i(LOG_TAG, "rcsState: " + getRcsState());
        cancelValidityTimer();
        setNextAutoconfigTime((long) WorkflowBase.OpMode.DISABLE_TEMPORARY.value());
    }

    protected void setEnableRcsByUserOpMode() {
        int parsedIntVersionBackup = getParsedIntVersionBackup();
        WorkflowBase.OpMode rcsDisabledState = getRcsDisabledState();
        WorkflowBase.OpMode opMode = getOpMode();
        WorkflowBase.OpMode opMode2 = WorkflowBase.OpMode.ACTIVE;
        if (opMode == opMode2) {
            setRcsState(String.valueOf(getVersion()));
        } else if (parsedIntVersionBackup >= opMode2.value()) {
            setVersion(parsedIntVersionBackup);
            setRcsState(getVersionBackup());
        } else {
            clearStorage(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
            WorkflowBase.OpMode opMode3 = WorkflowBase.OpMode.DISABLE_TEMPORARY;
            setVersion(opMode3.value());
            setRcsState(String.valueOf(opMode3.value()));
        }
        if (ConfigUtil.isRcsChn(SimUtil.getSimMno(this.mPhoneId)) && isValidRcsDisabledState(rcsDisabledState)) {
            setRcsDisabledState(String.valueOf(convertRcsDisabledStateToValue(rcsDisabledState)));
        } else {
            setRcsDisabledState("");
        }
        cancelValidityTimer();
        setNextAutoconfigTime(WorkflowBase.OpMode.DISABLE_TEMPORARY.value());
        this.mModule.getAcsConfig(this.mPhoneId).disableRcsByAcs(false);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void setEnableRcsByMigration() {
        WorkflowBase.OpMode opMode = WorkflowBase.OpMode.DISABLE_TEMPORARY;
        setVersion(opMode.value());
        setRcsState(String.valueOf(opMode.value()));
        setRcsDisabledState("");
        setValidity(opMode.value());
        cancelValidityTimer();
        setNextAutoconfigTime(opMode.value());
    }

    public void changeOpMode(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "changeOpMode: isRcsEnabled: " + z);
        if (z) {
            setOpMode(WorkflowBase.OpMode.ENABLE_RCS_BY_USER, null);
        } else {
            setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
        this.mTelephonyAdapter.registerAutoConfigurationListener(iAutoConfigurationListener);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
        this.mTelephonyAdapter.unregisterAutoConfigurationListener(iAutoConfigurationListener);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void sendVerificationCode(String str) {
        IMSLog.c(LogClass.WFB_OTP_CODE, this.mPhoneId + ",VC:" + IMSLog.numberChecker(str));
        this.mTelephonyAdapter.sendVerificationCode(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void sendMsisdnNumber(String str) {
        this.mTelephonyAdapter.sendMsisdnNumber(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void sendIidToken(String str) {
        this.mTelephonyAdapter.sendIidToken(str);
    }

    protected void registerMobileNetwork(ConnectivityManager connectivityManager, NetworkRequest networkRequest, ConnectivityManager.NetworkCallback networkCallback) {
        try {
            Log.i(LOG_TAG, "register mobile network");
            connectivityManager.registerNetworkCallback(networkRequest, networkCallback);
            connectivityManager.requestNetwork(networkRequest, networkCallback);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    protected void unregisterMobileNetwork(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        try {
            Log.i(LOG_TAG, "unregister mobile network");
            connectivityManager.unregisterNetworkCallback(networkCallback);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    protected boolean checkWifiConnection(final ConnectivityManager connectivityManager) {
        return Optional.ofNullable(connectivityManager.getActiveNetwork()).map(new Function() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NetworkCapabilities networkCapabilities;
                networkCapabilities = connectivityManager.getNetworkCapabilities((Network) obj);
                return networkCapabilities;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkWifiConnection$2;
                lambda$checkWifiConnection$2 = WorkflowUpBase.lambda$checkWifiConnection$2((NetworkCapabilities) obj);
                return lambda$checkWifiConnection$2;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkWifiConnection$3;
                lambda$checkWifiConnection$3 = WorkflowUpBase.lambda$checkWifiConnection$3((NetworkCapabilities) obj);
                return lambda$checkWifiConnection$3;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkWifiConnection$4;
                lambda$checkWifiConnection$4 = WorkflowUpBase.lambda$checkWifiConnection$4((NetworkCapabilities) obj);
                return lambda$checkWifiConnection$4;
            }
        }).isPresent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkWifiConnection$2(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.hasTransport(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkWifiConnection$3(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.hasCapability(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkWifiConnection$4(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.hasCapability(16);
    }

    protected boolean checkMobileConnection(final ConnectivityManager connectivityManager) {
        return Optional.ofNullable(connectivityManager.getActiveNetwork()).map(new Function() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NetworkCapabilities networkCapabilities;
                networkCapabilities = connectivityManager.getNetworkCapabilities((Network) obj);
                return networkCapabilities;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkMobileConnection$6;
                lambda$checkMobileConnection$6 = WorkflowUpBase.lambda$checkMobileConnection$6((NetworkCapabilities) obj);
                return lambda$checkMobileConnection$6;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkMobileConnection$7;
                lambda$checkMobileConnection$7 = WorkflowUpBase.lambda$checkMobileConnection$7((NetworkCapabilities) obj);
                return lambda$checkMobileConnection$7;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowUpBase$$ExternalSyntheticLambda8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkMobileConnection$8;
                lambda$checkMobileConnection$8 = WorkflowUpBase.lambda$checkMobileConnection$8((NetworkCapabilities) obj);
                return lambda$checkMobileConnection$8;
            }
        }).isPresent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkMobileConnection$6(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.hasTransport(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkMobileConnection$7(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.hasCapability(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkMobileConnection$8(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.hasCapability(16);
    }

    protected boolean isMobilePreferred() {
        return !checkWifiConnection(this.mConnectivityManager) && checkMobileConnection(this.mConnectivityManager);
    }

    protected WorkflowBase.OpMode getRcsDisabledState() {
        return getRcsDisabledState(ConfigConstants.CONFIG_TYPE.STORAGE_DATA, ConfigConstants.PATH.RCS_DISABLED_STATE, null);
    }

    protected void setAcsSeverSupportedVersions(String str) {
        this.mStorage.write(ConfigConstants.PATH.SERVER_SUPPORTED_VESIONS, str);
    }

    protected WorkflowBase.OpMode getRcsDisabledState(Map<String, String> map) {
        return getRcsDisabledState(ConfigConstants.CONFIG_TYPE.PARSEDXML_DATA, ConfigConstants.PATH.RCS_DISABLED_STATE, map);
    }

    protected WorkflowBase.OpMode getRcsDisabledState(String str, String str2, Map<String, String> map) {
        String str3;
        WorkflowBase.OpMode opMode = WorkflowBase.OpMode.NONE;
        if (ConfigConstants.CONFIG_TYPE.STORAGE_DATA.equals(str)) {
            str3 = this.mStorage.read(str2);
        } else {
            str3 = (!ConfigConstants.CONFIG_TYPE.PARSEDXML_DATA.equals(str) || map == null) ? "" : map.get(str2);
        }
        if (TextUtils.isEmpty(str3)) {
            Log.i(LOG_TAG, "getRcsDisabledState: empty");
            return opMode;
        }
        WorkflowBase.OpMode convertRcsDisabledStateToOpMode = convertRcsDisabledStateToOpMode(str3);
        Log.i(LOG_TAG, "getRcsDisabledState: mode: " + convertRcsDisabledStateToOpMode.name());
        return convertRcsDisabledStateToOpMode;
    }

    protected WorkflowBase.OpMode convertRcsDisabledStateToOpMode(String str) {
        WorkflowBase.OpMode opMode = WorkflowBase.OpMode.NONE;
        if (String.valueOf(WorkflowBase.OpMode.DISABLE_TEMPORARY.value()).equals(str)) {
            return WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE;
        }
        if (String.valueOf(WorkflowBase.OpMode.DISABLE_PERMANENTLY.value()).equals(str)) {
            return WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE;
        }
        if (String.valueOf(WorkflowBase.OpMode.DISABLE.value()).equals(str)) {
            return WorkflowBase.OpMode.DISABLE_BY_RCS_DISABLED_STATE;
        }
        return String.valueOf(WorkflowBase.OpMode.DORMANT.value()).equals(str) ? WorkflowBase.OpMode.DORMANT_BY_RCS_DISABLED_STATE : opMode;
    }

    protected int convertRcsDisabledStateToValue(WorkflowBase.OpMode opMode) {
        int value = WorkflowBase.OpMode.NONE.value();
        if (opMode == WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE) {
            return WorkflowBase.OpMode.DISABLE_TEMPORARY.value();
        }
        if (opMode == WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE) {
            return WorkflowBase.OpMode.DISABLE_PERMANENTLY.value();
        }
        if (opMode == WorkflowBase.OpMode.DISABLE_BY_RCS_DISABLED_STATE) {
            return WorkflowBase.OpMode.DISABLE.value();
        }
        return opMode == WorkflowBase.OpMode.DORMANT_BY_RCS_DISABLED_STATE ? WorkflowBase.OpMode.DORMANT.value() : value;
    }

    protected void setRcsDisabledState(String str) {
        this.mStorage.write(ConfigConstants.PATH.RCS_DISABLED_STATE, str);
    }

    protected boolean isValidRcsDisabledState(WorkflowBase.OpMode opMode) {
        return opMode == WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE || opMode == WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE || opMode == WorkflowBase.OpMode.DISABLE_BY_RCS_DISABLED_STATE || opMode == WorkflowBase.OpMode.DORMANT_BY_RCS_DISABLED_STATE;
    }

    protected String convertRcsStateWithSpecificParam() {
        return convertRcsStateWithSpecificParam(getRcsState(), getRcsDisabledState());
    }

    protected String convertRcsStateWithSpecificParam(String str, WorkflowBase.OpMode opMode) {
        if (String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(str)) {
            return str;
        }
        if (isValidRcsDisabledState(opMode)) {
            return String.valueOf(convertRcsDisabledStateToValue(opMode));
        }
        int version = getVersion();
        return isActiveVersion(version) ? String.valueOf(version) : String.valueOf(WorkflowBase.OpMode.DISABLE_TEMPORARY.value());
    }

    protected boolean isActiveVersion(int i) {
        return i >= WorkflowBase.OpMode.ACTIVE.value();
    }

    protected String getRcsState() {
        return this.mStorage.read(ConfigConstants.PATH.RCS_STATE);
    }

    protected void setRcsState(String str) {
        this.mStorage.write(ConfigConstants.PATH.RCS_STATE, str);
    }

    protected void executeAutoConfig() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "executeAutoConfig");
        work();
    }

    protected void endAutoConfig(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "endAutoConfig: result: " + z);
        if (this.mOldVersion >= 0 && !isValidRcsDisabledState(getRcsDisabledState())) {
            this.mTelephonyAdapter.notifyAutoConfigurationListener(52, !z ? this.mOldVersion <= 0 : this.mNewVersion <= 0);
        }
        if (this.mSharedInfo.getHttpResponse() != null) {
            setLastErrorCode(this.mSharedInfo.getHttpResponse().getStatusCode());
        }
        setCompleted(true);
        this.mStartForce = false;
        this.mIsConfigOngoing = false;
    }
}
