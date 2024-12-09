package com.sec.internal.interfaces.ims.config;

import com.sec.ims.IAutoConfigurationListener;
import com.sec.internal.constants.ims.DiagnosisConstants;
import java.util.Map;

/* loaded from: classes.dex */
public interface IWorkflow {
    public static final int ACTIVE_AUTOCONFIG_VERSION = 1;
    public static final int DEFAULT_ERROR_CODE = 987;
    public static final int DISABLE_AUTOCONFIG_VERSION = -2;
    public static final int DISABLE_PERMANENTLY_AUTOCONFIG_VERSION = -1;
    public static final int DISABLE_TEMPORARY_AUTOCONFIG_VERSION = 0;
    public static final int DORMANT_AUTOCONFIG_VERSION = -3;

    default void changeOpMode(boolean z) {
    }

    default boolean checkNetworkConnectivity() {
        return false;
    }

    void cleanup();

    default void clearAutoConfigStorage(DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
    }

    default void clearToken(DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
    }

    void closeStorage();

    default void dump() {
    }

    void forceAutoConfig(boolean z);

    void forceAutoConfigNeedResetConfig(boolean z);

    default int getLastErrorCode() {
        return DEFAULT_ERROR_CODE;
    }

    IStorageAdapter getStorage();

    void handleMSISDNDialog();

    void init();

    default boolean isConfigOngoing() {
        return false;
    }

    default void onADSChanged() {
    }

    default void onBootCompleted() {
    }

    void onDefaultSmsPackageChanged();

    default void reInitIfNeeded() {
    }

    Map<String, String> read(String str);

    default void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
    }

    default void removeValidToken() {
    }

    default void sendIidToken(String str) {
    }

    default void sendMsisdnNumber(String str) {
    }

    default void sendVerificationCode(String str) {
    }

    default void setEnableRcsByMigration() {
    }

    default void setRcsClientConfiguration(String str, String str2, String str3, String str4, String str5) {
    }

    void startAutoConfig(boolean z);

    void startAutoConfigDualsim(boolean z);

    default void startCurConfig() {
    }

    default void stopWorkFlow() {
    }

    default void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
    }
}
