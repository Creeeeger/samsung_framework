package com.android.server.devicepolicy;

import android.app.admin.DeviceAdminInfo;
import android.app.admin.FactoryResetProtectionPolicy;
import android.app.admin.ManagedSubscriptionsPolicy;
import android.app.admin.PackagePolicy;
import android.app.admin.PasswordPolicy;
import android.app.admin.PreferentialNetworkServiceConfig;
import android.app.admin.WifiSsidPolicy;
import android.graphics.Color;
import android.net.wifi.WifiSsid;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.jobs.XmlUtils;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.pm.UserRestrictionsUtils;
import com.android.server.utils.Slogf;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class ActiveAdmin {
    public static final int DEF_ORGANIZATION_COLOR = Color.parseColor("#00796B");
    public final Set accountTypesWithManagementDisabled;
    public int allowBluetoothMode;
    public boolean allowBrowser;
    public boolean allowDesktopSync;
    public boolean allowInternetSharing;
    public boolean allowIrDA;
    public boolean allowPOPIMAPEmail;
    public boolean allowStorageCard;
    public boolean allowTextMessaging;
    public boolean allowWifi;
    public List crossProfileWidgetProviders;
    public final Set defaultEnabledRestrictionsAlreadySet;
    public boolean disableBluetoothContactSharing;
    public boolean disableCallerId;
    public boolean disableCamera;
    public boolean disableContactsSearch;
    public boolean disableScreenCapture;
    public int disabledKeyguardFeatures;
    public boolean encryptionRequested;
    public String endUserSessionMessage;
    public boolean forceEphemeralUsers;
    public String globalProxyExclusionList;
    public String globalProxySpec;
    public DeviceAdminInfo info;
    public boolean isLogoutEnabled;
    public boolean isNetworkLoggingEnabled;
    public final boolean isParent;
    public final boolean isPermissionBased;
    public List keepUninstalledPackages;
    public long lastNetworkLoggingNotificationTimeMs;
    public CharSequence longSupportMessage;
    public boolean mAdminCanGrantSensorsPermissions;
    public boolean mAlwaysOnVpnLockdown;
    public String mAlwaysOnVpnPackage;
    public boolean mCommonCriteriaMode;
    public PackagePolicy mCredentialManagerPolicy;
    public List mCrossProfileCalendarPackages;
    public List mCrossProfilePackages;
    public String mDialerPackage;
    public String mEnrollmentSpecificId;
    public FactoryResetProtectionPolicy mFactoryResetProtectionPolicy;
    public PackagePolicy mManagedProfileCallerIdAccess;
    public PackagePolicy mManagedProfileContactsAccess;
    public ManagedSubscriptionsPolicy mManagedSubscriptionsPolicy;
    public int mNearbyAppStreamingPolicy;
    public int mNearbyNotificationStreamingPolicy;
    public String mOrganizationId;
    public int mPasswordComplexity;
    public PasswordPolicy mPasswordPolicy;
    public List mPreferentialNetworkServiceConfigs;
    public long mProfileMaximumTimeOffMillis;
    public long mProfileOffDeadline;
    public String mSmsPackage;
    public boolean mSuspendPersonalApps;
    public boolean mUsbDataSignalingEnabled;
    public int mWifiMinimumSecurityLevel;
    public WifiSsidPolicy mWifiSsidPolicy;
    public int maximumFailedPasswordsForWipe;
    public long maximumTimeToUnlock;
    public List meteredDisabledPackages;
    public int mtePolicy;
    public int numNetworkLoggingNotifications;
    public int organizationColor;
    public String organizationName;
    public ActiveAdmin parentAdmin;
    public long passwordExpirationDate;
    public long passwordExpirationTimeout;
    public int passwordHistoryLength;
    public boolean passwordRecoverable;
    public List permittedAccessiblityServices;
    public List permittedInputMethods;
    public List permittedNotificationListeners;
    public List protectedPackages;
    public boolean requireAutoTime;
    public boolean requireStorageCardEncryption;
    public CharSequence shortSupportMessage;
    public boolean simplePasswordEnabled;
    public boolean specifiesGlobalProxy;
    public String startUserSessionMessage;
    public long strongAuthUnlockTimeout;
    public List suspendedPackages;
    public boolean testOnlyAdmin;
    public ArrayMap trustAgentInfos;
    public final int userId;
    public Bundle userRestrictions;

    /* loaded from: classes2.dex */
    public class TrustAgentInfo {
        public PersistableBundle options;

        public TrustAgentInfo(PersistableBundle persistableBundle) {
            this.options = persistableBundle;
        }
    }

    public ActiveAdmin(DeviceAdminInfo deviceAdminInfo, boolean z) {
        this.passwordHistoryLength = 0;
        this.mPasswordPolicy = new PasswordPolicy();
        this.mPasswordComplexity = 0;
        this.mNearbyNotificationStreamingPolicy = 3;
        this.mNearbyAppStreamingPolicy = 3;
        this.mFactoryResetProtectionPolicy = null;
        this.maximumTimeToUnlock = 0L;
        this.strongAuthUnlockTimeout = 0L;
        this.maximumFailedPasswordsForWipe = 0;
        this.passwordExpirationTimeout = 0L;
        this.passwordExpirationDate = 0L;
        this.disabledKeyguardFeatures = 0;
        this.encryptionRequested = false;
        this.testOnlyAdmin = false;
        this.disableCamera = false;
        this.disableCallerId = false;
        this.disableContactsSearch = false;
        this.disableBluetoothContactSharing = true;
        this.disableScreenCapture = false;
        this.requireAutoTime = false;
        this.forceEphemeralUsers = false;
        this.isNetworkLoggingEnabled = false;
        this.isLogoutEnabled = false;
        this.passwordRecoverable = false;
        this.simplePasswordEnabled = true;
        this.allowStorageCard = true;
        this.allowWifi = true;
        this.allowTextMessaging = true;
        this.allowPOPIMAPEmail = true;
        this.allowBrowser = true;
        this.allowInternetSharing = true;
        this.allowBluetoothMode = 2;
        this.allowDesktopSync = true;
        this.allowIrDA = true;
        this.requireStorageCardEncryption = false;
        this.numNetworkLoggingNotifications = 0;
        this.lastNetworkLoggingNotificationTimeMs = 0L;
        this.mtePolicy = 0;
        this.accountTypesWithManagementDisabled = new ArraySet();
        this.specifiesGlobalProxy = false;
        this.globalProxySpec = null;
        this.globalProxyExclusionList = null;
        this.trustAgentInfos = new ArrayMap();
        this.defaultEnabledRestrictionsAlreadySet = new ArraySet();
        this.shortSupportMessage = null;
        this.longSupportMessage = null;
        this.organizationColor = DEF_ORGANIZATION_COLOR;
        this.organizationName = null;
        this.startUserSessionMessage = null;
        this.endUserSessionMessage = null;
        this.mCrossProfileCalendarPackages = Collections.emptyList();
        this.mCrossProfilePackages = Collections.emptyList();
        this.mSuspendPersonalApps = false;
        this.mProfileMaximumTimeOffMillis = 0L;
        this.mProfileOffDeadline = 0L;
        this.mManagedProfileCallerIdAccess = null;
        this.mManagedProfileContactsAccess = null;
        this.mCredentialManagerPolicy = null;
        this.mPreferentialNetworkServiceConfigs = List.of(PreferentialNetworkServiceConfig.DEFAULT);
        this.mUsbDataSignalingEnabled = true;
        this.mWifiMinimumSecurityLevel = 0;
        this.userId = -1;
        this.info = deviceAdminInfo;
        this.isParent = z;
        this.isPermissionBased = false;
    }

    public ActiveAdmin(int i, boolean z) {
        this.passwordHistoryLength = 0;
        this.mPasswordPolicy = new PasswordPolicy();
        this.mPasswordComplexity = 0;
        this.mNearbyNotificationStreamingPolicy = 3;
        this.mNearbyAppStreamingPolicy = 3;
        this.mFactoryResetProtectionPolicy = null;
        this.maximumTimeToUnlock = 0L;
        this.strongAuthUnlockTimeout = 0L;
        this.maximumFailedPasswordsForWipe = 0;
        this.passwordExpirationTimeout = 0L;
        this.passwordExpirationDate = 0L;
        this.disabledKeyguardFeatures = 0;
        this.encryptionRequested = false;
        this.testOnlyAdmin = false;
        this.disableCamera = false;
        this.disableCallerId = false;
        this.disableContactsSearch = false;
        this.disableBluetoothContactSharing = true;
        this.disableScreenCapture = false;
        this.requireAutoTime = false;
        this.forceEphemeralUsers = false;
        this.isNetworkLoggingEnabled = false;
        this.isLogoutEnabled = false;
        this.passwordRecoverable = false;
        this.simplePasswordEnabled = true;
        this.allowStorageCard = true;
        this.allowWifi = true;
        this.allowTextMessaging = true;
        this.allowPOPIMAPEmail = true;
        this.allowBrowser = true;
        this.allowInternetSharing = true;
        this.allowBluetoothMode = 2;
        this.allowDesktopSync = true;
        this.allowIrDA = true;
        this.requireStorageCardEncryption = false;
        this.numNetworkLoggingNotifications = 0;
        this.lastNetworkLoggingNotificationTimeMs = 0L;
        this.mtePolicy = 0;
        this.accountTypesWithManagementDisabled = new ArraySet();
        this.specifiesGlobalProxy = false;
        this.globalProxySpec = null;
        this.globalProxyExclusionList = null;
        this.trustAgentInfos = new ArrayMap();
        this.defaultEnabledRestrictionsAlreadySet = new ArraySet();
        this.shortSupportMessage = null;
        this.longSupportMessage = null;
        this.organizationColor = DEF_ORGANIZATION_COLOR;
        this.organizationName = null;
        this.startUserSessionMessage = null;
        this.endUserSessionMessage = null;
        this.mCrossProfileCalendarPackages = Collections.emptyList();
        this.mCrossProfilePackages = Collections.emptyList();
        this.mSuspendPersonalApps = false;
        this.mProfileMaximumTimeOffMillis = 0L;
        this.mProfileOffDeadline = 0L;
        this.mManagedProfileCallerIdAccess = null;
        this.mManagedProfileContactsAccess = null;
        this.mCredentialManagerPolicy = null;
        this.mPreferentialNetworkServiceConfigs = List.of(PreferentialNetworkServiceConfig.DEFAULT);
        this.mUsbDataSignalingEnabled = true;
        this.mWifiMinimumSecurityLevel = 0;
        if (!z) {
            throw new IllegalArgumentException("Can only pass true for permissionBased admin");
        }
        this.userId = i;
        this.isPermissionBased = z;
        this.isParent = false;
        this.info = null;
    }

    public ActiveAdmin getParentActiveAdmin() {
        Preconditions.checkState(!this.isParent);
        if (this.parentAdmin == null) {
            this.parentAdmin = new ActiveAdmin(this.info, true);
        }
        return this.parentAdmin;
    }

    public boolean hasParentActiveAdmin() {
        return this.parentAdmin != null;
    }

    public int getUid() {
        if (this.isPermissionBased) {
            return -1;
        }
        return this.info.getActivityInfo().applicationInfo.uid;
    }

    public UserHandle getUserHandle() {
        if (this.isPermissionBased) {
            return UserHandle.of(this.userId);
        }
        return UserHandle.of(UserHandle.getUserId(this.info.getActivityInfo().applicationInfo.uid));
    }

    public void writeToXml(TypedXmlSerializer typedXmlSerializer) {
        if (this.info != null) {
            typedXmlSerializer.startTag((String) null, "policies");
            this.info.writePoliciesToXml(typedXmlSerializer);
            typedXmlSerializer.endTag((String) null, "policies");
        }
        int i = this.mPasswordPolicy.quality;
        if (i != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "password-quality", i);
            int i2 = this.mPasswordPolicy.length;
            if (i2 != 0) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-length", i2);
            }
            int i3 = this.mPasswordPolicy.upperCase;
            if (i3 != 0) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-uppercase", i3);
            }
            int i4 = this.mPasswordPolicy.lowerCase;
            if (i4 != 0) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-lowercase", i4);
            }
            int i5 = this.mPasswordPolicy.letters;
            if (i5 != 1) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-letters", i5);
            }
            int i6 = this.mPasswordPolicy.numeric;
            if (i6 != 1) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-numeric", i6);
            }
            int i7 = this.mPasswordPolicy.symbols;
            if (i7 != 1) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-symbols", i7);
            }
            int i8 = this.mPasswordPolicy.nonLetter;
            if (i8 > 0) {
                writeAttributeValueToXml(typedXmlSerializer, "min-password-nonletter", i8);
            }
        }
        int i9 = this.passwordHistoryLength;
        if (i9 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "password-history-length", i9);
        }
        long j = this.maximumTimeToUnlock;
        if (j != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "max-time-to-unlock", j);
        }
        long j2 = this.strongAuthUnlockTimeout;
        if (j2 != 259200000) {
            writeAttributeValueToXml(typedXmlSerializer, "strong-auth-unlock-timeout", j2);
        }
        int i10 = this.maximumFailedPasswordsForWipe;
        if (i10 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "max-failed-password-wipe", i10);
        }
        boolean z = this.specifiesGlobalProxy;
        if (z) {
            writeAttributeValueToXml(typedXmlSerializer, "specifies-global-proxy", z);
            String str = this.globalProxySpec;
            if (str != null) {
                writeAttributeValueToXml(typedXmlSerializer, "global-proxy-spec", str);
            }
            String str2 = this.globalProxyExclusionList;
            if (str2 != null) {
                writeAttributeValueToXml(typedXmlSerializer, "global-proxy-exclusion-list", str2);
            }
        }
        long j3 = this.passwordExpirationTimeout;
        if (j3 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "password-expiration-timeout", j3);
        }
        long j4 = this.passwordExpirationDate;
        if (j4 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "password-expiration-date", j4);
        }
        boolean z2 = this.encryptionRequested;
        if (z2) {
            writeAttributeValueToXml(typedXmlSerializer, "encryption-requested", z2);
        }
        boolean z3 = this.testOnlyAdmin;
        if (z3) {
            writeAttributeValueToXml(typedXmlSerializer, "test-only-admin", z3);
        }
        boolean z4 = this.disableCamera;
        if (z4) {
            writeAttributeValueToXml(typedXmlSerializer, "disable-camera", z4);
        }
        boolean z5 = this.disableCallerId;
        if (z5) {
            writeAttributeValueToXml(typedXmlSerializer, "disable-caller-id", z5);
        }
        boolean z6 = this.disableContactsSearch;
        if (z6) {
            writeAttributeValueToXml(typedXmlSerializer, "disable-contacts-search", z6);
        }
        boolean z7 = this.disableBluetoothContactSharing;
        if (!z7) {
            writeAttributeValueToXml(typedXmlSerializer, "disable-bt-contacts-sharing", z7);
        }
        boolean z8 = this.disableScreenCapture;
        if (z8) {
            writeAttributeValueToXml(typedXmlSerializer, "disable-screen-capture", z8);
        }
        boolean z9 = this.requireAutoTime;
        if (z9) {
            writeAttributeValueToXml(typedXmlSerializer, "require_auto_time", z9);
        }
        boolean z10 = this.forceEphemeralUsers;
        if (z10) {
            writeAttributeValueToXml(typedXmlSerializer, "force_ephemeral_users", z10);
        }
        if (this.isNetworkLoggingEnabled) {
            typedXmlSerializer.startTag((String) null, "is_network_logging_enabled");
            typedXmlSerializer.attributeBoolean((String) null, "value", this.isNetworkLoggingEnabled);
            typedXmlSerializer.attributeInt((String) null, "num-notifications", this.numNetworkLoggingNotifications);
            typedXmlSerializer.attributeLong((String) null, "last-notification", this.lastNetworkLoggingNotificationTimeMs);
            typedXmlSerializer.endTag((String) null, "is_network_logging_enabled");
        }
        int i11 = this.disabledKeyguardFeatures;
        if (i11 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "disable-keyguard-features", i11);
        }
        if (!this.accountTypesWithManagementDisabled.isEmpty()) {
            writeAttributeValuesToXml(typedXmlSerializer, "disable-account-management", "account-type", this.accountTypesWithManagementDisabled);
        }
        if (!this.trustAgentInfos.isEmpty()) {
            Set<Map.Entry> entrySet = this.trustAgentInfos.entrySet();
            typedXmlSerializer.startTag((String) null, "manage-trust-agent-features");
            for (Map.Entry entry : entrySet) {
                TrustAgentInfo trustAgentInfo = (TrustAgentInfo) entry.getValue();
                typedXmlSerializer.startTag((String) null, "component");
                typedXmlSerializer.attribute((String) null, "value", (String) entry.getKey());
                if (trustAgentInfo.options != null) {
                    typedXmlSerializer.startTag((String) null, "trust-agent-component-options");
                    try {
                        trustAgentInfo.options.saveToXml(typedXmlSerializer);
                    } catch (XmlPullParserException e) {
                        Slogf.e("DevicePolicyManager", e, "Failed to save TrustAgent options", new Object[0]);
                    }
                    typedXmlSerializer.endTag((String) null, "trust-agent-component-options");
                }
                typedXmlSerializer.endTag((String) null, "component");
            }
            typedXmlSerializer.endTag((String) null, "manage-trust-agent-features");
        }
        List list = this.crossProfileWidgetProviders;
        if (list != null && !list.isEmpty()) {
            writeAttributeValuesToXml(typedXmlSerializer, "cross-profile-widget-providers", "provider", this.crossProfileWidgetProviders);
        }
        writePackageListToXml(typedXmlSerializer, "permitted-accessiblity-services", this.permittedAccessiblityServices);
        writePackageListToXml(typedXmlSerializer, "permitted-imes", this.permittedInputMethods);
        writePackageListToXml(typedXmlSerializer, "permitted-notification-listeners", this.permittedNotificationListeners);
        writePackageListToXml(typedXmlSerializer, "keep-uninstalled-packages", this.keepUninstalledPackages);
        writePackageListToXml(typedXmlSerializer, "metered_data_disabled_packages", this.meteredDisabledPackages);
        writePackageListToXml(typedXmlSerializer, "protected_packages", this.protectedPackages);
        writePackageListToXml(typedXmlSerializer, "suspended-packages", this.suspendedPackages);
        if (hasUserRestrictions()) {
            UserRestrictionsUtils.writeRestrictions(typedXmlSerializer, this.userRestrictions, "user-restrictions");
        }
        if (!this.defaultEnabledRestrictionsAlreadySet.isEmpty()) {
            writeAttributeValuesToXml(typedXmlSerializer, "default-enabled-user-restrictions", "restriction", this.defaultEnabledRestrictionsAlreadySet);
        }
        if (!TextUtils.isEmpty(this.shortSupportMessage)) {
            writeTextToXml(typedXmlSerializer, "short-support-message", this.shortSupportMessage.toString());
        }
        if (!TextUtils.isEmpty(this.longSupportMessage)) {
            writeTextToXml(typedXmlSerializer, "long-support-message", this.longSupportMessage.toString());
        }
        if (this.parentAdmin != null) {
            typedXmlSerializer.startTag((String) null, "parent-admin");
            this.parentAdmin.writeToXml(typedXmlSerializer);
            typedXmlSerializer.endTag((String) null, "parent-admin");
        }
        int i12 = this.organizationColor;
        if (i12 != DEF_ORGANIZATION_COLOR) {
            writeAttributeValueToXml(typedXmlSerializer, "organization-color", i12);
        }
        String str3 = this.organizationName;
        if (str3 != null) {
            writeTextToXml(typedXmlSerializer, "organization-name", str3);
        }
        boolean z11 = this.isLogoutEnabled;
        if (z11) {
            writeAttributeValueToXml(typedXmlSerializer, "is_logout_enabled", z11);
        }
        String str4 = this.startUserSessionMessage;
        if (str4 != null) {
            writeTextToXml(typedXmlSerializer, "start_user_session_message", str4);
        }
        String str5 = this.endUserSessionMessage;
        if (str5 != null) {
            writeTextToXml(typedXmlSerializer, "end_user_session_message", str5);
        }
        List list2 = this.mCrossProfileCalendarPackages;
        if (list2 == null) {
            typedXmlSerializer.startTag((String) null, "cross-profile-calendar-packages-null");
            typedXmlSerializer.endTag((String) null, "cross-profile-calendar-packages-null");
        } else {
            writePackageListToXml(typedXmlSerializer, "cross-profile-calendar-packages", list2);
        }
        writePackageListToXml(typedXmlSerializer, "cross-profile-packages", this.mCrossProfilePackages);
        if (this.mFactoryResetProtectionPolicy != null) {
            typedXmlSerializer.startTag((String) null, "factory_reset_protection_policy");
            this.mFactoryResetProtectionPolicy.writeToXml(typedXmlSerializer);
            typedXmlSerializer.endTag((String) null, "factory_reset_protection_policy");
        }
        boolean z12 = this.mSuspendPersonalApps;
        if (z12) {
            writeAttributeValueToXml(typedXmlSerializer, "suspend-personal-apps", z12);
        }
        long j5 = this.mProfileMaximumTimeOffMillis;
        if (j5 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "profile-max-time-off", j5);
        }
        if (this.mProfileMaximumTimeOffMillis != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "profile-off-deadline", this.mProfileOffDeadline);
        }
        if (!TextUtils.isEmpty(this.mAlwaysOnVpnPackage)) {
            writeAttributeValueToXml(typedXmlSerializer, "vpn-package", this.mAlwaysOnVpnPackage);
        }
        boolean z13 = this.mAlwaysOnVpnLockdown;
        if (z13) {
            writeAttributeValueToXml(typedXmlSerializer, "vpn-lockdown", z13);
        }
        boolean z14 = this.mCommonCriteriaMode;
        if (z14) {
            writeAttributeValueToXml(typedXmlSerializer, "common-criteria-mode", z14);
        }
        int i13 = this.mPasswordComplexity;
        if (i13 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "password-complexity", i13);
        }
        int i14 = this.mNearbyNotificationStreamingPolicy;
        if (i14 != 3) {
            writeAttributeValueToXml(typedXmlSerializer, "nearby-notification-streaming-policy", i14);
        }
        int i15 = this.mNearbyAppStreamingPolicy;
        if (i15 != 3) {
            writeAttributeValueToXml(typedXmlSerializer, "nearby-app-streaming-policy", i15);
        }
        if (!TextUtils.isEmpty(this.mOrganizationId)) {
            writeTextToXml(typedXmlSerializer, "organization-id", this.mOrganizationId);
        }
        if (!TextUtils.isEmpty(this.mEnrollmentSpecificId)) {
            writeTextToXml(typedXmlSerializer, "enrollment-specific-id", this.mEnrollmentSpecificId);
        }
        writeAttributeValueToXml(typedXmlSerializer, "admin-can-grant-sensors-permissions", this.mAdminCanGrantSensorsPermissions);
        boolean z15 = this.mUsbDataSignalingEnabled;
        if (!z15) {
            writeAttributeValueToXml(typedXmlSerializer, "usb-data-signaling", z15);
        }
        int i16 = this.mWifiMinimumSecurityLevel;
        if (i16 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "wifi-min-security", i16);
        }
        WifiSsidPolicy wifiSsidPolicy = this.mWifiSsidPolicy;
        if (wifiSsidPolicy != null) {
            List ssidsToStrings = ssidsToStrings(wifiSsidPolicy.getSsids());
            if (this.mWifiSsidPolicy.getPolicyType() == 0) {
                writeAttributeValuesToXml(typedXmlSerializer, "ssid-allowlist", "ssid", ssidsToStrings);
            } else if (this.mWifiSsidPolicy.getPolicyType() == 1) {
                writeAttributeValuesToXml(typedXmlSerializer, "ssid-denylist", "ssid", ssidsToStrings);
            }
        }
        if (!this.mPreferentialNetworkServiceConfigs.isEmpty()) {
            typedXmlSerializer.startTag((String) null, "preferential_network_service_configs");
            Iterator it = this.mPreferentialNetworkServiceConfigs.iterator();
            while (it.hasNext()) {
                ((PreferentialNetworkServiceConfig) it.next()).writeToXml(typedXmlSerializer);
            }
            typedXmlSerializer.endTag((String) null, "preferential_network_service_configs");
        }
        int i17 = this.mtePolicy;
        if (i17 != 0) {
            writeAttributeValueToXml(typedXmlSerializer, "mte-policy", i17);
        }
        writePackagePolicy(typedXmlSerializer, "caller-id-policy", this.mManagedProfileCallerIdAccess);
        writePackagePolicy(typedXmlSerializer, "contacts-policy", this.mManagedProfileContactsAccess);
        writePackagePolicy(typedXmlSerializer, "credential-manager-policy", this.mCredentialManagerPolicy);
        if (this.mManagedSubscriptionsPolicy != null) {
            typedXmlSerializer.startTag((String) null, "managed_subscriptions_policy");
            this.mManagedSubscriptionsPolicy.saveToXml(typedXmlSerializer);
            typedXmlSerializer.endTag((String) null, "managed_subscriptions_policy");
        }
        if (!TextUtils.isEmpty(this.mDialerPackage)) {
            writeAttributeValueToXml(typedXmlSerializer, "dialer_package", this.mDialerPackage);
        }
        if (!TextUtils.isEmpty(this.mSmsPackage)) {
            writeAttributeValueToXml(typedXmlSerializer, "sms_package", this.mSmsPackage);
        }
        writeAttributeValueToXml(typedXmlSerializer, "password-recoverable", this.passwordRecoverable);
        writeAttributeValueToXml(typedXmlSerializer, "simplepassword-enabled", this.simplePasswordEnabled);
        writeAttributeValueToXml(typedXmlSerializer, "allow-storage-card", this.allowStorageCard);
        writeAttributeValueToXml(typedXmlSerializer, "allow-wifi", this.allowWifi);
        writeAttributeValueToXml(typedXmlSerializer, "allow-text-messaging", this.allowTextMessaging);
        writeAttributeValueToXml(typedXmlSerializer, "allow-popimap-email", this.allowPOPIMAPEmail);
        writeAttributeValueToXml(typedXmlSerializer, "allow-browser", this.allowBrowser);
        writeAttributeValueToXml(typedXmlSerializer, "allow-internet-sharing", this.allowInternetSharing);
        writeAttributeValueToXml(typedXmlSerializer, "allow-bluetooth-mode", this.allowBluetoothMode);
        writeAttributeValueToXml(typedXmlSerializer, "allow-Desktop-Sync", this.allowDesktopSync);
        writeAttributeValueToXml(typedXmlSerializer, "allow-IrDA", this.allowIrDA);
        writeAttributeValueToXml(typedXmlSerializer, "require-StorageCard-Encryption", this.requireStorageCardEncryption);
    }

    public final void writePackagePolicy(TypedXmlSerializer typedXmlSerializer, String str, PackagePolicy packagePolicy) {
        if (packagePolicy == null) {
            return;
        }
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attributeInt((String) null, "package-policy-type", packagePolicy.getPolicyType());
        writePackageListToXml(typedXmlSerializer, "package-policy-packages", new ArrayList(packagePolicy.getPackageNames()));
        typedXmlSerializer.endTag((String) null, str);
    }

    public final List ssidsToStrings(Set set) {
        return (List) set.stream().map(new Function() { // from class: com.android.server.devicepolicy.ActiveAdmin$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$ssidsToStrings$0;
                lambda$ssidsToStrings$0 = ActiveAdmin.lambda$ssidsToStrings$0((WifiSsid) obj);
                return lambda$ssidsToStrings$0;
            }
        }).collect(Collectors.toList());
    }

    public static /* synthetic */ String lambda$ssidsToStrings$0(WifiSsid wifiSsid) {
        return new String(wifiSsid.getBytes(), StandardCharsets.UTF_8);
    }

    public void writeTextToXml(TypedXmlSerializer typedXmlSerializer, String str, String str2) {
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.text(str2);
        typedXmlSerializer.endTag((String) null, str);
    }

    public void writePackageListToXml(TypedXmlSerializer typedXmlSerializer, String str, List list) {
        if (list == null) {
            return;
        }
        writeAttributeValuesToXml(typedXmlSerializer, str, "item", list);
    }

    public void writeAttributeValueToXml(TypedXmlSerializer typedXmlSerializer, String str, String str2) {
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attribute((String) null, "value", str2);
        typedXmlSerializer.endTag((String) null, str);
    }

    public void writeAttributeValueToXml(TypedXmlSerializer typedXmlSerializer, String str, int i) {
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attributeInt((String) null, "value", i);
        typedXmlSerializer.endTag((String) null, str);
    }

    public void writeAttributeValueToXml(TypedXmlSerializer typedXmlSerializer, String str, long j) {
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attributeLong((String) null, "value", j);
        typedXmlSerializer.endTag((String) null, str);
    }

    public void writeAttributeValueToXml(TypedXmlSerializer typedXmlSerializer, String str, boolean z) {
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attributeBoolean((String) null, "value", z);
        typedXmlSerializer.endTag((String) null, str);
    }

    public void writeAttributeValuesToXml(TypedXmlSerializer typedXmlSerializer, String str, String str2, Collection collection) {
        typedXmlSerializer.startTag((String) null, str);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            typedXmlSerializer.startTag((String) null, str2);
            typedXmlSerializer.attribute((String) null, "value", str3);
            typedXmlSerializer.endTag((String) null, str2);
        }
        typedXmlSerializer.endTag((String) null, str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 615
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:64)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public void readFromXml(com.android.modules.utils.TypedXmlPullParser r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 1741
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.ActiveAdmin.readFromXml(com.android.modules.utils.TypedXmlPullParser, boolean):void");
    }

    public final PackagePolicy readPackagePolicy(TypedXmlPullParser typedXmlPullParser) {
        return new PackagePolicy(typedXmlPullParser.getAttributeInt((String) null, "package-policy-type"), new ArraySet(readPackageList(typedXmlPullParser, "package-policy-packages")));
    }

    public final List readWifiSsids(TypedXmlPullParser typedXmlPullParser, String str) {
        ArrayList arrayList = new ArrayList();
        readAttributeValues(typedXmlPullParser, str, arrayList);
        return (List) arrayList.stream().map(new Function() { // from class: com.android.server.devicepolicy.ActiveAdmin$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                WifiSsid lambda$readWifiSsids$1;
                lambda$readWifiSsids$1 = ActiveAdmin.lambda$readWifiSsids$1((String) obj);
                return lambda$readWifiSsids$1;
            }
        }).collect(Collectors.toList());
    }

    public static /* synthetic */ WifiSsid lambda$readWifiSsids$1(String str) {
        return WifiSsid.fromBytes(str.getBytes(StandardCharsets.UTF_8));
    }

    public final List readPackageList(TypedXmlPullParser typedXmlPullParser, String str) {
        ArrayList arrayList = new ArrayList();
        int depth = typedXmlPullParser.getDepth();
        while (true) {
            int next = typedXmlPullParser.next();
            if (next == 1 || (next == 3 && typedXmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = typedXmlPullParser.getName();
                if ("item".equals(name)) {
                    String attributeValue = typedXmlPullParser.getAttributeValue((String) null, "value");
                    if (attributeValue != null) {
                        arrayList.add(attributeValue);
                    } else {
                        Slogf.w("DevicePolicyManager", "Package name missing under %s", name);
                    }
                } else {
                    Slogf.w("DevicePolicyManager", "Unknown tag under %s: ", str, name);
                }
            }
        }
        return arrayList;
    }

    public final void readAttributeValues(TypedXmlPullParser typedXmlPullParser, String str, Collection collection) {
        collection.clear();
        int depth = typedXmlPullParser.getDepth();
        while (true) {
            int next = typedXmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && typedXmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next != 3 && next != 4) {
                String name = typedXmlPullParser.getName();
                if (str.equals(name)) {
                    collection.add(typedXmlPullParser.getAttributeValue((String) null, "value"));
                } else {
                    Slogf.e("DevicePolicyManager", "Expected tag %s but found %s", str, name);
                }
            }
        }
    }

    public final ArrayMap getAllTrustAgentInfos(TypedXmlPullParser typedXmlPullParser, String str) {
        int depth = typedXmlPullParser.getDepth();
        ArrayMap arrayMap = new ArrayMap();
        while (true) {
            int next = typedXmlPullParser.next();
            if (next == 1 || (next == 3 && typedXmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = typedXmlPullParser.getName();
                if ("component".equals(name)) {
                    arrayMap.put(typedXmlPullParser.getAttributeValue((String) null, "value"), getTrustAgentInfo(typedXmlPullParser, str));
                } else {
                    Slogf.w("DevicePolicyManager", "Unknown tag under %s: %s", str, name);
                }
            }
        }
        return arrayMap;
    }

    public final TrustAgentInfo getTrustAgentInfo(TypedXmlPullParser typedXmlPullParser, String str) {
        int depth = typedXmlPullParser.getDepth();
        TrustAgentInfo trustAgentInfo = new TrustAgentInfo(null);
        while (true) {
            int next = typedXmlPullParser.next();
            if (next == 1 || (next == 3 && typedXmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = typedXmlPullParser.getName();
                if ("trust-agent-component-options".equals(name)) {
                    trustAgentInfo.options = PersistableBundle.restoreFromXml(typedXmlPullParser);
                } else {
                    Slogf.w("DevicePolicyManager", "Unknown tag under %s: %s", str, name);
                }
            }
        }
        return trustAgentInfo;
    }

    public final List getPreferentialNetworkServiceConfigs(TypedXmlPullParser typedXmlPullParser, String str) {
        int depth = typedXmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (true) {
            int next = typedXmlPullParser.next();
            if (next == 1 || (next == 3 && typedXmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = typedXmlPullParser.getName();
                if ("preferential_network_service_config".equals(name)) {
                    arrayList.add(PreferentialNetworkServiceConfig.getPreferentialNetworkServiceConfig(typedXmlPullParser, str));
                } else {
                    Slogf.w("DevicePolicyManager", "Unknown tag under %s: %s", str, name);
                }
            }
        }
        return arrayList;
    }

    public boolean hasUserRestrictions() {
        Bundle bundle = this.userRestrictions;
        return bundle != null && bundle.size() > 0;
    }

    public Bundle ensureUserRestrictions() {
        if (this.userRestrictions == null) {
            this.userRestrictions = new Bundle();
        }
        return this.userRestrictions;
    }

    public void transfer(DeviceAdminInfo deviceAdminInfo) {
        if (hasParentActiveAdmin()) {
            this.parentAdmin.info = deviceAdminInfo;
        }
        this.info = deviceAdminInfo;
    }

    public Bundle addSyntheticRestrictions(Bundle bundle) {
        if (this.disableCamera) {
            bundle.putBoolean("no_camera", true);
        }
        if (this.requireAutoTime) {
            bundle.putBoolean("no_config_date_time", true);
        }
        return bundle;
    }

    public static Bundle removeDeprecatedRestrictions(Bundle bundle) {
        Iterator it = UserRestrictionsUtils.DEPRECATED_USER_RESTRICTIONS.iterator();
        while (it.hasNext()) {
            bundle.remove((String) it.next());
        }
        return bundle;
    }

    public static Bundle filterRestrictions(Bundle bundle, Predicate predicate) {
        Bundle bundle2 = new Bundle();
        for (String str : bundle.keySet()) {
            if (bundle.getBoolean(str) && predicate.test(str)) {
                bundle2.putBoolean(str, true);
            }
        }
        return bundle2;
    }

    public Bundle getEffectiveRestrictions() {
        return addSyntheticRestrictions(removeDeprecatedRestrictions(new Bundle(ensureUserRestrictions())));
    }

    public Bundle getLocalUserRestrictions(final int i) {
        return filterRestrictions(getEffectiveRestrictions(), new Predicate() { // from class: com.android.server.devicepolicy.ActiveAdmin$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isLocal;
                isLocal = UserRestrictionsUtils.isLocal(i, (String) obj);
                return isLocal;
            }
        });
    }

    public Bundle getGlobalUserRestrictions(final int i) {
        return filterRestrictions(getEffectiveRestrictions(), new Predicate() { // from class: com.android.server.devicepolicy.ActiveAdmin$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isGlobal;
                isGlobal = UserRestrictionsUtils.isGlobal(i, (String) obj);
                return isGlobal;
            }
        });
    }

    public void dumpPackagePolicy(final IndentingPrintWriter indentingPrintWriter, String str, PackagePolicy packagePolicy) {
        indentingPrintWriter.print(str);
        indentingPrintWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
        if (packagePolicy != null) {
            indentingPrintWriter.increaseIndent();
            indentingPrintWriter.print("policyType=");
            indentingPrintWriter.println(packagePolicy.getPolicyType());
            indentingPrintWriter.println("packageNames:");
            indentingPrintWriter.increaseIndent();
            packagePolicy.getPackageNames().forEach(new Consumer() { // from class: com.android.server.devicepolicy.ActiveAdmin$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    indentingPrintWriter.println((String) obj);
                }
            });
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.decreaseIndent();
        }
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.print("uid=");
        indentingPrintWriter.println(getUid());
        indentingPrintWriter.print("testOnlyAdmin=");
        indentingPrintWriter.println(this.testOnlyAdmin);
        if (this.info != null) {
            indentingPrintWriter.println("policies:");
            ArrayList usedPolicies = this.info.getUsedPolicies();
            if (usedPolicies != null) {
                indentingPrintWriter.increaseIndent();
                for (int i = 0; i < usedPolicies.size(); i++) {
                    indentingPrintWriter.println(((DeviceAdminInfo.PolicyInfo) usedPolicies.get(i)).tag);
                }
                indentingPrintWriter.decreaseIndent();
            }
        }
        indentingPrintWriter.print("passwordQuality=0x");
        indentingPrintWriter.println(Integer.toHexString(this.mPasswordPolicy.quality));
        indentingPrintWriter.print("minimumPasswordLength=");
        indentingPrintWriter.println(this.mPasswordPolicy.length);
        indentingPrintWriter.print("passwordHistoryLength=");
        indentingPrintWriter.println(this.passwordHistoryLength);
        indentingPrintWriter.print("minimumPasswordUpperCase=");
        indentingPrintWriter.println(this.mPasswordPolicy.upperCase);
        indentingPrintWriter.print("minimumPasswordLowerCase=");
        indentingPrintWriter.println(this.mPasswordPolicy.lowerCase);
        indentingPrintWriter.print("minimumPasswordLetters=");
        indentingPrintWriter.println(this.mPasswordPolicy.letters);
        indentingPrintWriter.print("minimumPasswordNumeric=");
        indentingPrintWriter.println(this.mPasswordPolicy.numeric);
        indentingPrintWriter.print("minimumPasswordSymbols=");
        indentingPrintWriter.println(this.mPasswordPolicy.symbols);
        indentingPrintWriter.print("minimumPasswordNonLetter=");
        indentingPrintWriter.println(this.mPasswordPolicy.nonLetter);
        indentingPrintWriter.print("maximumTimeToUnlock=");
        indentingPrintWriter.println(this.maximumTimeToUnlock);
        indentingPrintWriter.print("strongAuthUnlockTimeout=");
        indentingPrintWriter.println(this.strongAuthUnlockTimeout);
        indentingPrintWriter.print("maximumFailedPasswordsForWipe=");
        indentingPrintWriter.println(this.maximumFailedPasswordsForWipe);
        indentingPrintWriter.print("specifiesGlobalProxy=");
        indentingPrintWriter.println(this.specifiesGlobalProxy);
        indentingPrintWriter.print("passwordExpirationTimeout=");
        indentingPrintWriter.println(this.passwordExpirationTimeout);
        indentingPrintWriter.print("passwordExpirationDate=");
        indentingPrintWriter.println(this.passwordExpirationDate);
        if (this.globalProxySpec != null) {
            indentingPrintWriter.print("globalProxySpec=");
            indentingPrintWriter.println(this.globalProxySpec);
        }
        if (this.globalProxyExclusionList != null) {
            indentingPrintWriter.print("globalProxyEclusionList=");
            indentingPrintWriter.println(this.globalProxyExclusionList);
        }
        indentingPrintWriter.print("encryptionRequested=");
        indentingPrintWriter.println(this.encryptionRequested);
        indentingPrintWriter.print("disableCamera=");
        indentingPrintWriter.println(this.disableCamera);
        indentingPrintWriter.print("disableCallerId=");
        indentingPrintWriter.println(this.disableCallerId);
        indentingPrintWriter.print("disableContactsSearch=");
        indentingPrintWriter.println(this.disableContactsSearch);
        indentingPrintWriter.print("disableBluetoothContactSharing=");
        indentingPrintWriter.println(this.disableBluetoothContactSharing);
        indentingPrintWriter.print("disableScreenCapture=");
        indentingPrintWriter.println(this.disableScreenCapture);
        indentingPrintWriter.print("requireAutoTime=");
        indentingPrintWriter.println(this.requireAutoTime);
        indentingPrintWriter.print("forceEphemeralUsers=");
        indentingPrintWriter.println(this.forceEphemeralUsers);
        indentingPrintWriter.print("isNetworkLoggingEnabled=");
        indentingPrintWriter.println(this.isNetworkLoggingEnabled);
        indentingPrintWriter.print("disabledKeyguardFeatures=");
        indentingPrintWriter.println(this.disabledKeyguardFeatures);
        indentingPrintWriter.print("crossProfileWidgetProviders=");
        indentingPrintWriter.println(this.crossProfileWidgetProviders);
        if (this.permittedAccessiblityServices != null) {
            indentingPrintWriter.print("permittedAccessibilityServices=");
            indentingPrintWriter.println(this.permittedAccessiblityServices);
        }
        if (this.permittedInputMethods != null) {
            indentingPrintWriter.print("permittedInputMethods=");
            indentingPrintWriter.println(this.permittedInputMethods);
        }
        if (this.permittedNotificationListeners != null) {
            indentingPrintWriter.print("permittedNotificationListeners=");
            indentingPrintWriter.println(this.permittedNotificationListeners);
        }
        if (this.keepUninstalledPackages != null) {
            indentingPrintWriter.print("keepUninstalledPackages=");
            indentingPrintWriter.println(this.keepUninstalledPackages);
        }
        if (this.meteredDisabledPackages != null) {
            indentingPrintWriter.print("meteredDisabledPackages=");
            indentingPrintWriter.println(this.meteredDisabledPackages);
        }
        if (this.protectedPackages != null) {
            indentingPrintWriter.print("protectedPackages=");
            indentingPrintWriter.println(this.protectedPackages);
        }
        if (this.suspendedPackages != null) {
            indentingPrintWriter.print("suspendedPackages=");
            indentingPrintWriter.println(this.suspendedPackages);
        }
        indentingPrintWriter.print("organizationColor=");
        indentingPrintWriter.println(this.organizationColor);
        if (this.organizationName != null) {
            indentingPrintWriter.print("organizationName=");
            indentingPrintWriter.println(this.organizationName);
        }
        indentingPrintWriter.println("userRestrictions:");
        UserRestrictionsUtils.dumpRestrictions(indentingPrintWriter, "  ", this.userRestrictions);
        indentingPrintWriter.print("defaultEnabledRestrictionsAlreadySet=");
        indentingPrintWriter.println(this.defaultEnabledRestrictionsAlreadySet);
        dumpPackagePolicy(indentingPrintWriter, "managedProfileCallerIdPolicy", this.mManagedProfileCallerIdAccess);
        dumpPackagePolicy(indentingPrintWriter, "managedProfileContactsPolicy", this.mManagedProfileContactsAccess);
        dumpPackagePolicy(indentingPrintWriter, "credentialManagerPolicy", this.mCredentialManagerPolicy);
        indentingPrintWriter.print("isParent=");
        indentingPrintWriter.println(this.isParent);
        if (this.parentAdmin != null) {
            indentingPrintWriter.println("parentAdmin:");
            indentingPrintWriter.increaseIndent();
            this.parentAdmin.dump(indentingPrintWriter);
            indentingPrintWriter.decreaseIndent();
        }
        if (this.mCrossProfileCalendarPackages != null) {
            indentingPrintWriter.print("mCrossProfileCalendarPackages=");
            indentingPrintWriter.println(this.mCrossProfileCalendarPackages);
        }
        indentingPrintWriter.print("mCrossProfilePackages=");
        indentingPrintWriter.println(this.mCrossProfilePackages);
        indentingPrintWriter.print("mSuspendPersonalApps=");
        indentingPrintWriter.println(this.mSuspendPersonalApps);
        indentingPrintWriter.print("mProfileMaximumTimeOffMillis=");
        indentingPrintWriter.println(this.mProfileMaximumTimeOffMillis);
        indentingPrintWriter.print("mProfileOffDeadline=");
        indentingPrintWriter.println(this.mProfileOffDeadline);
        indentingPrintWriter.print("mAlwaysOnVpnPackage=");
        indentingPrintWriter.println(this.mAlwaysOnVpnPackage);
        indentingPrintWriter.print("mAlwaysOnVpnLockdown=");
        indentingPrintWriter.println(this.mAlwaysOnVpnLockdown);
        indentingPrintWriter.print("mCommonCriteriaMode=");
        indentingPrintWriter.println(this.mCommonCriteriaMode);
        indentingPrintWriter.print("mPasswordComplexity=");
        indentingPrintWriter.println(this.mPasswordComplexity);
        indentingPrintWriter.print("mNearbyNotificationStreamingPolicy=");
        indentingPrintWriter.println(this.mNearbyNotificationStreamingPolicy);
        indentingPrintWriter.print("mNearbyAppStreamingPolicy=");
        indentingPrintWriter.println(this.mNearbyAppStreamingPolicy);
        if (!TextUtils.isEmpty(this.mOrganizationId)) {
            indentingPrintWriter.print("mOrganizationId=");
            indentingPrintWriter.println(this.mOrganizationId);
        }
        if (!TextUtils.isEmpty(this.mEnrollmentSpecificId)) {
            indentingPrintWriter.print("mEnrollmentSpecificId=");
            indentingPrintWriter.println(this.mEnrollmentSpecificId);
        }
        indentingPrintWriter.print("mAdminCanGrantSensorsPermissions=");
        indentingPrintWriter.println(this.mAdminCanGrantSensorsPermissions);
        indentingPrintWriter.print("mUsbDataSignaling=");
        indentingPrintWriter.println(this.mUsbDataSignalingEnabled);
        indentingPrintWriter.print("mWifiMinimumSecurityLevel=");
        indentingPrintWriter.println(this.mWifiMinimumSecurityLevel);
        WifiSsidPolicy wifiSsidPolicy = this.mWifiSsidPolicy;
        if (wifiSsidPolicy != null) {
            if (wifiSsidPolicy.getPolicyType() == 0) {
                indentingPrintWriter.print("mSsidAllowlist=");
            } else {
                indentingPrintWriter.print("mSsidDenylist=");
            }
            indentingPrintWriter.println(ssidsToStrings(this.mWifiSsidPolicy.getSsids()));
        }
        if (this.mFactoryResetProtectionPolicy != null) {
            indentingPrintWriter.println("mFactoryResetProtectionPolicy:");
            indentingPrintWriter.increaseIndent();
            this.mFactoryResetProtectionPolicy.dump(indentingPrintWriter);
            indentingPrintWriter.decreaseIndent();
        }
        if (this.mPreferentialNetworkServiceConfigs != null) {
            indentingPrintWriter.println("mPreferentialNetworkServiceConfigs:");
            indentingPrintWriter.increaseIndent();
            Iterator it = this.mPreferentialNetworkServiceConfigs.iterator();
            while (it.hasNext()) {
                ((PreferentialNetworkServiceConfig) it.next()).dump(indentingPrintWriter);
            }
            indentingPrintWriter.decreaseIndent();
        }
        indentingPrintWriter.print("mtePolicy=");
        indentingPrintWriter.println(this.mtePolicy);
        indentingPrintWriter.print("accountTypesWithManagementDisabled=");
        indentingPrintWriter.println(this.accountTypesWithManagementDisabled);
        if (this.mManagedSubscriptionsPolicy != null) {
            indentingPrintWriter.println("mManagedSubscriptionsPolicy:");
            indentingPrintWriter.increaseIndent();
            indentingPrintWriter.println(this.mManagedSubscriptionsPolicy);
            indentingPrintWriter.decreaseIndent();
        }
        indentingPrintWriter.print("mDialerPackage=");
        indentingPrintWriter.println(this.mDialerPackage);
        indentingPrintWriter.print("mSmsPackage=");
        indentingPrintWriter.println(this.mSmsPackage);
        indentingPrintWriter.println("eas it policies:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.print("simplePasswordEnabled=");
        indentingPrintWriter.println(this.simplePasswordEnabled);
        indentingPrintWriter.print("allowStorageCard=");
        indentingPrintWriter.println(this.allowStorageCard);
        indentingPrintWriter.print("allowWifi=");
        indentingPrintWriter.println(this.allowWifi);
        indentingPrintWriter.print("allowTextMessaging=");
        indentingPrintWriter.println(this.allowTextMessaging);
        indentingPrintWriter.print("allowPOPIMAPEmail=");
        indentingPrintWriter.println(this.allowPOPIMAPEmail);
        indentingPrintWriter.print("allowBrowser=");
        indentingPrintWriter.println(this.allowBrowser);
        indentingPrintWriter.print("allowInternetSharing=");
        indentingPrintWriter.println(this.allowInternetSharing);
        indentingPrintWriter.print("allowBluetoothMode=");
        indentingPrintWriter.println(this.allowBluetoothMode);
        indentingPrintWriter.print("allowDesktopSync=");
        indentingPrintWriter.println(this.allowDesktopSync);
        indentingPrintWriter.print("allowIrDA=");
        indentingPrintWriter.println(this.allowIrDA);
        indentingPrintWriter.print("requireStorageCardEncryption=");
        indentingPrintWriter.println(this.requireStorageCardEncryption);
        indentingPrintWriter.decreaseIndent();
    }
}
