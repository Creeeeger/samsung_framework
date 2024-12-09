package com.sec.internal.interfaces.ims.entitlement.config;

/* loaded from: classes.dex */
public interface IMnoNsdsConfigStrategy {
    String getEntitlementServerUrl(String str);

    int getNextOperation(int i, int i2);

    boolean isDeviceProvisioned();

    void scheduleRefreshDeviceConfig(int i);
}
