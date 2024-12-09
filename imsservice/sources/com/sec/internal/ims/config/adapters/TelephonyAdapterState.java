package com.sec.internal.ims.config.adapters;

import com.sec.ims.IAutoConfigurationListener;
import com.sec.internal.interfaces.ims.config.ITelephonyAdapter;

/* loaded from: classes.dex */
public class TelephonyAdapterState implements ITelephonyAdapter {
    protected static String ABSENT_STATE = "AbsentState";
    protected static String IDLE_STATE = "IdleState";
    protected static String READY_STATE = "ReadyState";
    protected static String SMS_DEST_PORT = "37273";
    protected static String SMS_ORIG_PORT = "0";

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void cleanup() {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getAppToken(boolean z) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getDeviceId(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getExistingOtp() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getExistingPortOtp() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getIdentityByPhoneId(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getIidToken() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getImei() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getImsi() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMcc() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMnc() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMsisdn() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMsisdn(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMsisdnNumber() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getNetType() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getOtp() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getPortOtp() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getPrimaryIdentity() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSimCountryCode() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSipUri() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSubscriberId(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public boolean isReady() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void notifyAutoConfigurationListener(int i, boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void onADSChanged() {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void registerUneregisterForOTP(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void sendIidToken(String str) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void sendMsisdnNumber(String str) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void sendVerificationCode(String str) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSmsDestPort() {
        return SMS_DEST_PORT;
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSmsOrigPort() {
        return SMS_ORIG_PORT;
    }
}
