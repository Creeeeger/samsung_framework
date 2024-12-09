package com.sec.internal.interfaces.ims.core;

import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public interface ICmcAccountManager {
    Bundle getCmcRegiConfigForUserAgent();

    IRegisterTask getCmcRegisterTask(int i);

    String getCurrentLineOwnerDeviceId();

    int getCurrentLineSlotIndex();

    List<String> getRegiEventNotifyHostInfo();

    boolean hasSecondaryDevice();

    boolean isCmcActivated();

    boolean isCmcEnabled();

    boolean isCmcProfileAdded();

    boolean isCmcSupportedOnHotspot();

    boolean isEmergencyCallSupported();

    boolean isEmergencyNumber(String str, int i);

    boolean isHotspotEnabled();

    boolean isPotentialEmergencyNumber(String str, int i);

    boolean isProfileUpdateFailed();

    boolean isSecondaryDevice();

    boolean isSupportDualSimCMC();

    boolean isSupportSameWiFiOnly();

    boolean isWifiOnly();

    void notifyCmcDeviceChanged();

    void onDeregistrationDone(IRegisterTask iRegisterTask);

    void onRegistrationDone(IRegisterTask iRegisterTask);

    void onSimRefresh(int i);

    void setEmergencyNumbers(String str);

    void setRegiEventNotifyHostInfo(List<String> list);

    void startCmcRegistration();

    void startSAService(boolean z);
}
