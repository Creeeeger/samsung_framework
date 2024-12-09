package com.sec.internal.imsphone;

import android.content.ContentValues;
import android.content.Context;
import android.os.Binder;
import android.telephony.ims.RcsClientConfiguration;
import android.telephony.ims.stub.ImsConfigImplBase;
import com.sec.ims.extensions.Extensions;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class ImsConfigImpl extends ImsConfigImplBase {
    private static final String LOG_TAG = ImsConfigImpl.class.getSimpleName();
    private static final String READ_IMS_PERMISSION = "com.sec.imsservice.READ_IMS_PERMISSION";
    private String mClientVendor;
    private String mClientVersion;
    private final Context mContext;
    private final int mPhoneId;
    private String mRcsEnabledByUser;
    private String mRcsProfile;
    private String mRcsVersion;
    private ICapabilityDiscoveryModule mCapabilityDisModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
    private IPresenceModule mPresenceModule = ImsRegistry.getServiceModuleManager().getPresenceModule();

    public static class FeatureValueConstants {
        public static final int ERROR = -1;
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public static class RcsClientConfigurationConstants {
        public static final int CLIENT_VENDOR = 2;
        public static final int CLIENT_VERSION = 3;
        public static final int RCS_ENABLED_BY_USER = 4;
        public static final int RCS_PROFILE = 1;
        public static final int RCS_VERSION = 0;
    }

    public int setConfig(int i, String str) {
        return 0;
    }

    public ImsConfigImpl(int i, Context context) {
        this.mContext = context;
        this.mPhoneId = i;
    }

    public int setConfig(int i, int i2) {
        if (i != 66) {
            return 0;
        }
        ImsRegistry.setRttMode(this.mPhoneId, i2 == 1 ? Extensions.TelecomManager.RTT_MODE : Extensions.TelecomManager.RTT_MODE_OFF);
        return 0;
    }

    public int getConfigInt(int i) {
        int publishTimer;
        int i2 = 0;
        if (this.mContext.checkPermission("com.sec.imsservice.READ_IMS_PERMISSION", -1, Binder.getCallingUid()) != 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "getConfigInt: item: " + i + " there is no read_ims_permission");
            return 0;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (i == 10) {
                i2 = getConfigValue("93");
            } else if (i == 11) {
                i2 = getConfigValue("94");
            } else {
                switch (i) {
                    case 15:
                        IPresenceModule iPresenceModule = this.mPresenceModule;
                        if (iPresenceModule != null) {
                            publishTimer = iPresenceModule.getPublishTimer(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 16:
                        IPresenceModule iPresenceModule2 = this.mPresenceModule;
                        if (iPresenceModule2 != null) {
                            publishTimer = iPresenceModule2.getPublishExpiry(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 17:
                        ICapabilityDiscoveryModule iCapabilityDiscoveryModule = this.mCapabilityDisModule;
                        if (iCapabilityDiscoveryModule != null) {
                            publishTimer = iCapabilityDiscoveryModule.isCapDiscEnabled(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 18:
                        ICapabilityDiscoveryModule iCapabilityDiscoveryModule2 = this.mCapabilityDisModule;
                        if (iCapabilityDiscoveryModule2 != null) {
                            publishTimer = iCapabilityDiscoveryModule2.getCapInfoExpiry(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 19:
                        ICapabilityDiscoveryModule iCapabilityDiscoveryModule3 = this.mCapabilityDisModule;
                        if (iCapabilityDiscoveryModule3 != null) {
                            publishTimer = iCapabilityDiscoveryModule3.getServiceAvailabilityInfoExpiry(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 20:
                        ICapabilityDiscoveryModule iCapabilityDiscoveryModule4 = this.mCapabilityDisModule;
                        if (iCapabilityDiscoveryModule4 != null) {
                            publishTimer = iCapabilityDiscoveryModule4.getCapPollInterval(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 21:
                        IPresenceModule iPresenceModule3 = this.mPresenceModule;
                        if (iPresenceModule3 != null) {
                            publishTimer = iPresenceModule3.getPublishSourceThrottle(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 22:
                        IPresenceModule iPresenceModule4 = this.mPresenceModule;
                        if (iPresenceModule4 != null) {
                            publishTimer = iPresenceModule4.getListSubMaxUri(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 23:
                        IPresenceModule iPresenceModule5 = this.mPresenceModule;
                        if (iPresenceModule5 != null) {
                            publishTimer = iPresenceModule5.getListSubExpiry(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 24:
                        IPresenceModule iPresenceModule6 = this.mPresenceModule;
                        if (iPresenceModule6 != null) {
                            publishTimer = iPresenceModule6.isListSubGzipEnabled(this.mPhoneId);
                            i2 = publishTimer;
                            break;
                        }
                        break;
                    case 25:
                        i2 = getConfigValue("31");
                        break;
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            IMSLog.i(LOG_TAG, this.mPhoneId, "getConfigInt: item: " + i + " value: " + i2);
            return i2;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    private int getConfigValue(String str) {
        ContentValues configValues = ImsRegistry.getConfigValues(new String[]{str}, this.mPhoneId);
        Integer asInteger = configValues != null ? configValues.getAsInteger(str) : null;
        if (asInteger != null) {
            return asInteger.intValue();
        }
        return 0;
    }

    public String getRcsClientConfiguration(int i) {
        String str;
        if (i == 0) {
            str = this.mRcsVersion;
        } else if (i == 1) {
            str = this.mRcsProfile;
        } else if (i == 2) {
            str = this.mClientVendor;
        } else if (i == 3) {
            str = this.mClientVersion;
        } else {
            str = i != 4 ? null : this.mRcsEnabledByUser;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getRcsClientConfiguration: item: " + i + " value: " + str);
        return str;
    }

    public void setRcsClientConfiguration(RcsClientConfiguration rcsClientConfiguration) {
        if (this.mContext.checkPermission("com.sec.imsservice.READ_IMS_PERMISSION", -1, Binder.getCallingUid()) != 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsClientConfiguration: there is no read_ims_permission");
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                this.mRcsVersion = rcsClientConfiguration.getRcsVersion();
                this.mRcsProfile = rcsClientConfiguration.getRcsProfile();
                this.mClientVendor = rcsClientConfiguration.getClientVendor();
                this.mClientVersion = rcsClientConfiguration.getClientVersion();
                this.mRcsEnabledByUser = rcsClientConfiguration.isRcsEnabledByUser() ? "1" : "0";
                IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsClientConfiguration: rcsVersion: " + this.mRcsVersion + " rcsProfile: " + this.mRcsProfile + " clientVendor: " + this.mClientVendor + " clientVersion: " + this.mClientVersion + " rcsEnabledByUser: " + this.mRcsEnabledByUser);
                ImsRegistry.getConfigModule().setRcsClientConfiguration(this.mPhoneId, this.mRcsVersion, this.mRcsProfile, this.mClientVendor, this.mClientVersion, this.mRcsEnabledByUser);
            } catch (NullPointerException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsClientConfiguration: failed: " + e.getMessage());
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void triggerAutoConfiguration() {
        if (this.mContext.checkPermission("com.sec.imsservice.READ_IMS_PERMISSION", -1, Binder.getCallingUid()) != 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "triggerAutoConfiguration: there is no read_ims_permission");
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                ImsRegistry.getConfigModule().triggerAutoConfiguration(this.mPhoneId);
            } catch (NullPointerException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "triggerAutoConfiguration: failed: " + e.getMessage());
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
