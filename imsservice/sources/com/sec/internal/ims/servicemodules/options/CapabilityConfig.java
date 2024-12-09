package com.sec.internal.ims.servicemodules.options;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public class CapabilityConfig {
    private static final String LOG_TAG = "CapabilityConfig";
    private boolean isVzwCapabilitypolicy;
    private Set<Pattern> mAllowedPrefixes;
    private int mCapCacheExpiry;
    private boolean mCapDiscCommonStack;
    private int mCapInfoExpiry;
    private Context mContext;
    private boolean mDefaultDisableInitialScan;
    private int mDefaultDisc;
    private boolean mDisableInitialScan;
    private boolean mForceDisableInitialScan;
    protected boolean mIsAvailable;
    protected boolean mIsLocalConfigUsed;
    private boolean mIsPollingPeriodUpdated;
    private boolean mIsRcsUpProfile;
    protected boolean mLastSeenActive;
    private Mno mMno;
    private int mMsgcapvalidity;
    private int mNonRCScapInfoExpiry;
    private int mPhoneId;
    private int mPollListSubExpiry;
    private int mPollingPeriod;
    private int mPollingRate;
    private long mPollingRatePeriod;
    private String mRcsProfile;
    private int mServiceAvailabilityInfoExpiry;
    protected int mServiceType;

    public static class Builder {
        int capInfoExpiry = 0;
        int capCacheExpiry = 0;
        int pollingPeriod = 120;
        int pollingRate = 10;
        long pollingRatePeriod = 10;
        int defaultDisc = 0;
        boolean isAvailable = false;
        boolean isLastseenAvailable = false;
    }

    public CapabilityConfig(Context context, int i) {
        this.mPhoneId = 0;
        this.mServiceType = 0;
        this.mPollingRate = 10;
        this.mPollingRatePeriod = 10L;
        this.mPollingPeriod = 0;
        this.mPollListSubExpiry = 3;
        this.mCapInfoExpiry = 60;
        this.mNonRCScapInfoExpiry = 60;
        this.mCapCacheExpiry = 7776000;
        this.mServiceAvailabilityInfoExpiry = 60;
        this.mMsgcapvalidity = 30;
        this.mDefaultDisc = 0;
        this.mCapDiscCommonStack = false;
        this.mIsLocalConfigUsed = false;
        this.mIsPollingPeriodUpdated = false;
        this.mIsAvailable = false;
        this.mDisableInitialScan = false;
        this.mDefaultDisableInitialScan = false;
        this.mForceDisableInitialScan = false;
        this.mLastSeenActive = false;
        this.mIsRcsUpProfile = false;
        this.isVzwCapabilitypolicy = false;
        this.mRcsProfile = "";
        this.mMno = Mno.DEFAULT;
        this.mAllowedPrefixes = ConcurrentHashMap.newKeySet();
        this.mContext = context;
        this.mPhoneId = i;
    }

    public void load() {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "load: registrationManager is null");
            return;
        }
        this.mServiceType = 0;
        ImsProfile imsProfile = registrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.RCS);
        if (imsProfile != null) {
            if (imsProfile.hasService(SipMsg.EVENT_PRESENCE)) {
                this.mServiceType = 2;
            } else if (imsProfile.hasService("options")) {
                this.mServiceType = 1;
            }
        }
        if (this.mServiceType == 0) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "load: mServiceType is zero");
            return;
        }
        RcsConfigurationHelper.ConfigData configData = RcsConfigurationHelper.getConfigData(this.mContext, "root/*", this.mPhoneId);
        if (configData == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "load: configData is not found");
            return;
        }
        String rcsProfileWithFeature = ConfigUtil.getRcsProfileWithFeature(this.mContext, this.mPhoneId, imsProfile);
        this.mRcsProfile = rcsProfileWithFeature;
        this.mIsRcsUpProfile = ImsProfile.isRcsUpProfile(rcsProfileWithFeature);
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(this.mPhoneId);
        this.mIsLocalConfigUsed = rcsStrategy != null && rcsStrategy.isLocalConfigUsed();
        this.mMno = SimUtil.getSimMno(this.mPhoneId);
        int intValue = configData.readInt("version", 0).intValue();
        this.mDefaultDisc = configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_DEFAULT_DISC, 0).intValue();
        notifyDefaultDiscChange();
        this.mIsAvailable = intValue > 0 && (this.mDefaultDisc != 2 || this.mIsRcsUpProfile);
        Boolean bool = Boolean.FALSE;
        this.mCapDiscCommonStack = configData.readBool(ConfigConstants.ConfigTable.CAPDISCOVERY_CAP_DISC_COMMON_STACK, bool).booleanValue();
        boolean z = ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_DEFAULT_DISABLE_INITIAL_SCAN, false);
        this.mDefaultDisableInitialScan = z;
        this.mDisableInitialScan = configData.readBool(ConfigConstants.ConfigTable.CAPDISCOVERY_DISABLE_INITIAL_SCAN, Boolean.valueOf(z)).booleanValue();
        boolean z2 = ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_FORCE_DISABLE_INITIAL_SCAN, false);
        this.mForceDisableInitialScan = z2;
        if (!z2) {
            z2 = this.mDisableInitialScan;
        }
        this.mDisableInitialScan = z2;
        this.mPollingRate = configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_RATE, 10).intValue();
        this.mPollingRatePeriod = configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_RATE_PERIOD, 10).intValue();
        StringBuilder sb = new StringBuilder();
        if (this.mPollingRate == 0 && this.mPollingRatePeriod == 0) {
            this.mPollingRate = 10;
            this.mPollingRatePeriod = 3L;
            sb.append("load: change mPollingRate to ");
            sb.append(this.mPollingRate);
            sb.append(" and change mPollingRatePeriod to ");
            sb.append(this.mPollingRatePeriod);
        }
        boolean z3 = this.mMno == Mno.VZW && !ConfigUtil.isJibeAs(this.mPhoneId);
        this.isVzwCapabilitypolicy = z3;
        int i = !z3 ? 0 : 625000;
        updatePollingPeriod(i, imsProfile.getCapPollInterval(), configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_PERIOD, Integer.valueOf(i)).intValue());
        int i2 = !this.mIsRcsUpProfile ? 60 : McsConstants.ServerConfig.DEFAULT_CMS_TTL_VALUE;
        if (this.isVzwCapabilitypolicy && !this.mIsLocalConfigUsed) {
            i2 = 604800;
        }
        updateCapInfoExpiry(i2, imsProfile.getAvailCacheExpiry(), configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_CAPINFO_EXPIRY, Integer.valueOf(i2)).intValue());
        this.mNonRCScapInfoExpiry = configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_NON_RCS_CAPINFO_EXPIRY, Integer.valueOf(this.mCapInfoExpiry)).intValue();
        updateCapDiscoveryAllowedPrefixes(configData.readListString(ConfigConstants.ConfigTable.CAPDISCOVERY_ALLOWED_PREFIXES));
        int intValue2 = configData.readInt(ConfigConstants.ConfigTable.CLIENTCONTROL_SERVICE_AVAILABILITY_INFO_EXPIRY, 60).intValue();
        this.mServiceAvailabilityInfoExpiry = intValue2;
        if (!this.mIsRcsUpProfile || (this.isVzwCapabilitypolicy && this.mIsLocalConfigUsed)) {
            this.mMsgcapvalidity = configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_MSGCAPVALIDITY, 30).intValue();
        } else {
            this.mMsgcapvalidity = configData.readInt(ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_MSGCAPVALIDITY, Integer.valueOf(intValue2)).intValue();
        }
        this.mLastSeenActive = configData.readBool(ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_LASTSEENACTIVE, bool).booleanValue();
        this.mPollListSubExpiry = DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_POLL_LIST_SUB_EXP, Integer.valueOf(this.isVzwCapabilitypolicy ? 30 : 0), this.mPhoneId).intValue();
        if (rcsStrategy != null) {
            this.mCapCacheExpiry = !this.isVzwCapabilitypolicy ? this.mCapInfoExpiry : 7776000;
            if (rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.USE_CAPCACHE_EXPIRY)) {
                this.mCapCacheExpiry += DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_CAP_CACHE_EXP, 0, this.mPhoneId).intValue();
            } else {
                this.mCapCacheExpiry = DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_CAP_CACHE_EXP, 0, this.mPhoneId).intValue();
            }
            rcsStrategy.updateCapDiscoveryOption();
        }
        sb.append(" load: mServiceType: ");
        sb.append(this.mServiceType);
        sb.append(" mRcsProfile: ");
        sb.append(this.mRcsProfile);
        sb.append(" mIsRcsUpProfile: ");
        sb.append(this.mIsRcsUpProfile);
        sb.append(" mIsLocalConfigUsed: ");
        sb.append(this.mIsLocalConfigUsed);
        sb.append(" rcsVersion: ");
        sb.append(intValue);
        sb.append(" mDefaultDisc: ");
        sb.append(this.mDefaultDisc);
        sb.append(" mIsAvailable: ");
        sb.append(this.mIsAvailable);
        sb.append(" mCapDiscCommonStack: ");
        sb.append(this.mCapDiscCommonStack);
        sb.append(" mDisableInitialScan: ");
        sb.append(this.mDisableInitialScan);
        sb.append(" mDefaultDisableInitialScan: ");
        sb.append(this.mDefaultDisableInitialScan);
        sb.append(" mForceDisableInitialScan: ");
        sb.append(this.mForceDisableInitialScan);
        sb.append(" mPollingRate: ");
        sb.append(this.mPollingRate);
        sb.append(" mPollingRatePeriod: ");
        sb.append(this.mPollingRatePeriod);
        sb.append(" mNonRCScapInfoExpiry: ");
        sb.append(this.mNonRCScapInfoExpiry);
        sb.append(" mMsgcapvalidity: ");
        sb.append(this.mMsgcapvalidity);
        sb.append(" mServiceAvailabilityInfoExpiry: ");
        sb.append(this.mServiceAvailabilityInfoExpiry);
        sb.append(" mLastSeenActive: ");
        sb.append(this.mLastSeenActive);
        sb.append(" mPollListSubExpiry: ");
        sb.append(this.mPollListSubExpiry);
        sb.append(" mCapCacheExpiry: ");
        sb.append(this.mCapCacheExpiry);
        IMSLog.i(LOG_TAG, this.mPhoneId, sb.toString());
    }

    public int getCapInfoExpiry() {
        return this.mCapInfoExpiry;
    }

    public int getNonRCScapInfoExpiry() {
        return this.mNonRCScapInfoExpiry;
    }

    public long getCapCacheExpiry() {
        return this.mCapCacheExpiry;
    }

    public boolean isDisableInitialScan() {
        return this.mDisableInitialScan;
    }

    public int getPollingPeriod() {
        return this.mPollingPeriod;
    }

    public int getPollListSubExpiry() {
        return this.mPollListSubExpiry;
    }

    public int getPollingRate() {
        return this.mPollingRate;
    }

    public long getPollingRatePeriod() {
        return this.mPollingRatePeriod;
    }

    public long getMsgcapvalidity() {
        return this.mMsgcapvalidity;
    }

    public boolean isPollingPeriodUpdated() {
        return this.mIsPollingPeriodUpdated;
    }

    public void resetPollingPeriodUpdated() {
        this.mIsPollingPeriodUpdated = false;
    }

    public boolean isLastSeenActive() {
        return this.mLastSeenActive;
    }

    public boolean usePresence() {
        return this.mDefaultDisc == 1;
    }

    public void setUsePresence(boolean z) {
        this.mDefaultDisc = z ? 1 : 0;
    }

    public boolean isAvailable() {
        return this.mIsAvailable;
    }

    public Set<Pattern> getCapAllowedPrefixes() {
        return this.mAllowedPrefixes;
    }

    public String getRcsProfile() {
        return this.mRcsProfile;
    }

    public int getServiceAvailabilityInfoExpiry() {
        return this.mServiceAvailabilityInfoExpiry;
    }

    public int getDefaultDisc() {
        return this.mDefaultDisc;
    }

    int getDefaultDisc(int i) {
        return RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.CAPDISCOVERY_DEFAULT_DISC, i), 2).intValue();
    }

    private void notifyDefaultDiscChange() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        StringBuilder sb = new StringBuilder();
        Uri uri = ConfigConstants.CONTENT_URI;
        sb.append(uri);
        sb.append("root/application/1/capdiscovery/defaultdisc");
        contentResolver.notifyChange(Uri.parse(sb.toString()), null);
        contentResolver.notifyChange(Uri.parse(uri + "parameter/defaultdisc"), null);
    }

    void updatePollingPeriod(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder("updatePollingPeriod() ");
        if (this.mIsLocalConfigUsed) {
            int intValue = DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_CAP_POLL_INTERVAL, Integer.valueOf(i), this.mPhoneId).intValue();
            sb.append(", capPollIntervalFromDM: ");
            sb.append(intValue);
            if (intValue > 0) {
                this.mIsPollingPeriodUpdated = this.mPollingPeriod != intValue;
                this.mPollingPeriod = intValue;
            } else {
                this.mIsPollingPeriodUpdated = this.mPollingPeriod != i;
                this.mPollingPeriod = i;
            }
        } else if (this.mServiceType == 2 && i2 > 0 && !this.isVzwCapabilitypolicy) {
            sb.append(", capPollIntervalFromProfile: ");
            sb.append(i2);
            this.mIsPollingPeriodUpdated = this.mPollingPeriod != i2;
            this.mPollingPeriod = i2;
        } else {
            sb.append(", pollingPeriodFromConfigDB: ");
            sb.append(i3);
            if (i3 >= 0) {
                this.mIsPollingPeriodUpdated = this.mPollingPeriod != i3;
                this.mPollingPeriod = i3;
            } else {
                this.mIsPollingPeriodUpdated = this.mPollingPeriod != i;
                this.mPollingPeriod = i;
            }
        }
        sb.append(", mPollingPeriod: ");
        sb.append(this.mPollingPeriod);
        sb.append(", mIsPollingPeriodUpdated: ");
        sb.append(this.mIsPollingPeriodUpdated);
        IMSLog.i(LOG_TAG, this.mPhoneId, sb.toString());
    }

    void updateCapInfoExpiry(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder("updateCapInfoExpiry() ");
        if (this.mIsLocalConfigUsed) {
            int intValue = DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_AVAIL_CACHE_EXP, 60, this.mPhoneId).intValue();
            sb.append(", availCacheExpFromDM: ");
            sb.append(intValue);
            if (intValue > 0) {
                this.mCapInfoExpiry = intValue;
            } else {
                this.mCapInfoExpiry = 60;
            }
        } else if (this.mServiceType == 2 && i2 > 0 && !this.isVzwCapabilitypolicy) {
            sb.append(", profileCapInfoExpiry: ");
            sb.append(i2);
            this.mCapInfoExpiry = i2;
        } else {
            sb.append(", capInfoExpiryFromConfigDB: ");
            sb.append(i3);
            if (i3 > 0) {
                sb.append(", use capInfoExpiryFromConfigDB: ");
                this.mCapInfoExpiry = i3;
            } else if (i3 == 0 && ConfigUtil.isRcsEur(this.mPhoneId)) {
                sb.append(", change capInfoExpiryFromConfigDB to ");
                sb.append(i);
                sb.append(" for eur");
                this.mCapInfoExpiry = i;
            } else if (i3 == 0 && this.mIsRcsUpProfile && !this.isVzwCapabilitypolicy) {
                this.mCapInfoExpiry = i3;
            } else {
                sb.append(", use defaultCapInfoExpiry");
                this.mCapInfoExpiry = i;
            }
        }
        sb.append(", mCapInfoExpiry: ");
        sb.append(this.mCapInfoExpiry);
        IMSLog.i(LOG_TAG, this.mPhoneId, sb.toString());
    }

    private void updateCapDiscoveryAllowedPrefixes(List<String> list) {
        Pattern compile;
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateCapDiscoveryAllowedPrefixes: allowedPrefixes = " + list);
        for (String str : list) {
            if (str.startsWith("!")) {
                try {
                    compile = Pattern.compile(str.substring(1));
                } catch (PatternSyntaxException unused) {
                    IMSLog.e(LOG_TAG, this.mPhoneId, "updateCapDiscoveryAllowedPrefixes: patternSyntaxException on prefix: " + str.substring(1));
                    compile = null;
                }
            } else {
                compile = Pattern.compile("^(" + str.replaceAll("\\+", "\\\\+") + ")");
            }
            if (compile != null) {
                this.mAllowedPrefixes.add(compile);
            }
        }
    }

    public CapabilityConfig(Builder builder) {
        this.mPhoneId = 0;
        this.mServiceType = 0;
        this.mPollingRate = 10;
        this.mPollingRatePeriod = 10L;
        this.mPollingPeriod = 0;
        this.mPollListSubExpiry = 3;
        this.mCapInfoExpiry = 60;
        this.mNonRCScapInfoExpiry = 60;
        this.mCapCacheExpiry = 7776000;
        this.mServiceAvailabilityInfoExpiry = 60;
        this.mMsgcapvalidity = 30;
        this.mDefaultDisc = 0;
        this.mCapDiscCommonStack = false;
        this.mIsLocalConfigUsed = false;
        this.mIsPollingPeriodUpdated = false;
        this.mIsAvailable = false;
        this.mDisableInitialScan = false;
        this.mDefaultDisableInitialScan = false;
        this.mForceDisableInitialScan = false;
        this.mLastSeenActive = false;
        this.mIsRcsUpProfile = false;
        this.isVzwCapabilitypolicy = false;
        this.mRcsProfile = "";
        this.mMno = Mno.DEFAULT;
        this.mAllowedPrefixes = ConcurrentHashMap.newKeySet();
        this.mCapInfoExpiry = builder.capInfoExpiry;
        this.mCapCacheExpiry = builder.capCacheExpiry;
        this.mPollingPeriod = builder.pollingPeriod;
        this.mPollingRate = builder.pollingRate;
        this.mPollingRatePeriod = builder.pollingRatePeriod;
        this.mDefaultDisc = builder.defaultDisc;
        this.mIsAvailable = builder.isAvailable;
        this.mLastSeenActive = builder.isLastseenAvailable;
    }

    public String toString() {
        return "CapabilityConfig [mContext=" + this.mContext + ", mPhoneId=" + this.mPhoneId + ", mCapInfoExpiry=" + this.mCapInfoExpiry + ", mNonRCScapInfoExpiry=" + this.mNonRCScapInfoExpiry + ", mPollingPeriod=" + this.mPollingPeriod + ", mCapCacheExpiry=" + this.mCapCacheExpiry + ", mPollingRate=" + this.mPollingRate + ", mPollListSubExpiry=" + this.mPollListSubExpiry + ", mPollingRatePeriod=" + this.mPollingRatePeriod + ", mServiceAvailabilityInfoExpiry=" + this.mServiceAvailabilityInfoExpiry + ", mDefaultDisc=" + this.mDefaultDisc + ", mIsLocalConfigUsed=" + this.mIsLocalConfigUsed + ", mIsPollingPeriodUpdated=" + this.mIsPollingPeriodUpdated + ", mDisableInitialScan=" + this.mDisableInitialScan + ", mDefaultDisableInitialScan=" + this.mDefaultDisableInitialScan + ", mForceDisableInitialScan=" + this.mForceDisableInitialScan + ", mAllowedPrefixes=" + this.mAllowedPrefixes + ", mCapDiscCommonStack=" + this.mCapDiscCommonStack + "]";
    }
}
