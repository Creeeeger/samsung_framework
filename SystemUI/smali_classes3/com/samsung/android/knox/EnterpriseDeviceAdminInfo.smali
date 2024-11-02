.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "EnterpriseDeviceAdminInfo"

.field public static final USES_POLICY_KNOX_ADVANCED_APP_MGMT:I = 0x50

.field public static final USES_POLICY_KNOX_ADVANCED_APP_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

.field public static final USES_POLICY_KNOX_ADVANCED_SECURITY:I = 0x51

.field public static final USES_POLICY_KNOX_ADVANCED_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

.field public static final USES_POLICY_KNOX_APP_SEPARATION:I = 0x70

.field public static final USES_POLICY_KNOX_APP_SEPARATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

.field public static final USES_POLICY_KNOX_AUTHENTICATION_MANAGER:I = 0x7b

.field public static final USES_POLICY_KNOX_AUTHENTICATION_MANAGER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUTH_MGMT"

.field public static final USES_POLICY_KNOX_CAPTURE:I = 0x71

.field public static final USES_POLICY_KNOX_CAPTURE_ADVANCED:I = 0x78

.field public static final USES_POLICY_KNOX_CAPTURE_ADVANCED_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

.field public static final USES_POLICY_KNOX_CAPTURE_BASIC:I = 0x77

.field public static final USES_POLICY_KNOX_CAPTURE_BASIC_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

.field public static final USES_POLICY_KNOX_CAPTURE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN"

.field public static final USES_POLICY_KNOX_CCM:I = 0x3d

.field public static final USES_POLICY_KNOX_CCM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field public static final USES_POLICY_KNOX_CERTENROL:I = 0x42

.field public static final USES_POLICY_KNOX_CERTENROL_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

.field public static final USES_POLICY_KNOX_CERT_PROVISIONING:I = 0x4e

.field public static final USES_POLICY_KNOX_CERT_PROVISIONING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

.field public static final USES_POLICY_KNOX_CLIPBOARD:I = 0x4f

.field public static final USES_POLICY_KNOX_CLIPBOARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

.field public static final USES_POLICY_KNOX_CONTAINER_VPN:I = 0x37

.field public static final USES_POLICY_KNOX_CONTAINER_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

.field public static final USES_POLICY_KNOX_CRITICAL_COMMUNICATIONS:I = 0x6c

.field public static final USES_POLICY_KNOX_CRITICAL_COMMUNICATIONS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

.field public static final USES_POLICY_KNOX_CUSTOM_DEX:I = 0x55

.field public static final USES_POLICY_KNOX_CUSTOM_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

.field public static final USES_POLICY_KNOX_CUSTOM_PROKIOSK:I = 0x46

.field public static final USES_POLICY_KNOX_CUSTOM_PROKIOSK_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

.field public static final USES_POLICY_KNOX_CUSTOM_SEALEDMODE:I = 0x41

.field public static final USES_POLICY_KNOX_CUSTOM_SEALEDMODE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

.field public static final USES_POLICY_KNOX_CUSTOM_SETTING:I = 0x3f

.field public static final USES_POLICY_KNOX_CUSTOM_SETTING_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

.field public static final USES_POLICY_KNOX_CUSTOM_SYSTEM:I = 0x40

.field public static final USES_POLICY_KNOX_CUSTOM_SYSTEM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final USES_POLICY_KNOX_DEACTIVATE_LICENSE:I = 0x6f

.field public static final USES_POLICY_KNOX_DEACTIVATE_LICENSE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field public static final USES_POLICY_KNOX_DEVICE_CONFIGURATION:I = 0x6d

.field public static final USES_POLICY_KNOX_DEVICE_CONFIGURATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

.field public static final USES_POLICY_KNOX_DEX:I = 0x54

.field public static final USES_POLICY_KNOX_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEX"

.field public static final USES_POLICY_KNOX_DUAL_DAR:I = 0x57

.field public static final USES_POLICY_KNOX_DUAL_DAR_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

.field public static final USES_POLICY_KNOX_EBILLING_NOMDM:I = 0x53

.field public static final USES_POLICY_KNOX_EBILLING_NOMDM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

.field public static final USES_POLICY_KNOX_ENHANCED_ATTESTATION:I = 0x6b

.field public static final USES_POLICY_KNOX_ENHANCED_ATTESTATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

.field public static final USES_POLICY_KNOX_ENTERPRISE_BILLING:I = 0x44

.field public static final USES_POLICY_KNOX_ENTERPRISE_BILLING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING"

.field public static final USES_POLICY_KNOX_FORESIGHT:I = 0x7a

.field public static final USES_POLICY_KNOX_FORESIGHT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_FORESIGHT"

.field public static final USES_POLICY_KNOX_GENERIC_VPN:I = 0x36

.field public static final USES_POLICY_KNOX_GENERIC_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final USES_POLICY_KNOX_HDM:I = 0x6e

.field public static final USES_POLICY_KNOX_HDM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HDM"

.field public static final USES_POLICY_KNOX_KEYSTORE:I = 0x3e

.field public static final USES_POLICY_KNOX_KEYSTORE_PER_APP:I = 0x4b

.field public static final USES_POLICY_KNOX_KEYSTORE_PER_APP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field public static final USES_POLICY_KNOX_KEYSTORE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field public static final USES_POLICY_KNOX_MPOS:I = 0x79

.field public static final USES_POLICY_KNOX_MPOS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MPOS"

.field public static final USES_POLICY_KNOX_NDA_AI:I = 0x76

.field public static final USES_POLICY_KNOX_NDA_AI_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_AI"

.field public static final USES_POLICY_KNOX_NDA_DATA_ANALYTICS:I = 0x75

.field public static final USES_POLICY_KNOX_NDA_DATA_ANALYTICS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

.field public static final USES_POLICY_KNOX_NDA_DEVICE_SETTINGS:I = 0x74

.field public static final USES_POLICY_KNOX_NDA_DEVICE_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

.field public static final USES_POLICY_KNOX_NDA_PERIPHERAL:I = 0x73

.field public static final USES_POLICY_KNOX_NDA_PERIPHERAL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

.field public static final USES_POLICY_KNOX_NETWORK_FILTER_MGMT:I = 0x7c

.field public static final USES_POLICY_KNOX_NETWORK_FILTER_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_MGMT"

.field public static final USES_POLICY_KNOX_NETWORK_FILTER_SP:I = 0x7d

.field public static final USES_POLICY_KNOX_NETWORK_FILTER_SP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

.field public static final USES_POLICY_KNOX_NPA:I = 0x52

.field public static final USES_POLICY_KNOX_NPA_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NPA"

.field public static final USES_POLICY_KNOX_RESTRICTION_PERM:I = 0x3c

.field public static final USES_POLICY_KNOX_RESTRICTION_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

.field public static final USES_POLICY_KNOX_SDP:I = 0x47

.field public static final USES_POLICY_KNOX_SDP_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field public static final USES_POLICY_KNOX_SEAMS_PERM:I = 0x3a

.field public static final USES_POLICY_KNOX_SEAMS_PERM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY:I = 0x72

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM:I = 0x3b

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

.field public static final USES_POLICY_KNOX_SECURE_TIMER:I = 0x58

.field public static final USES_POLICY_KNOX_SECURE_TIMER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURE_TIMER"

.field public static final USES_POLICY_KNOX_SIM_RESTRICTION:I = 0x59

.field public static final USES_POLICY_KNOX_SIM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

.field public static final USES_POLICY_KNOX_UCM_MGMT:I = 0x56

.field public static final USES_POLICY_KNOX_UCM_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

.field public static final USES_POLICY_KNOX_UCM_PRIVILEGED:I = 0x4c

.field public static final USES_POLICY_KNOX_UCM_PRIVILEGED_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

.field public static final USES_POLICY_KNOX_UCSM_ESE:I = 0x48

.field public static final USES_POLICY_KNOX_UCSM_ESE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

.field public static final USES_POLICY_KNOX_UCSM_OTHER:I = 0x49

.field public static final USES_POLICY_KNOX_UCSM_OTHER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

.field public static final USES_POLICY_KNOX_UCS_PLUGIN:I = 0x4a

.field public static final USES_POLICY_KNOX_UCS_PLUGIN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

.field public static final USES_POLICY_MDM_APN_SETTINGS:I = 0x22

.field public static final USES_POLICY_MDM_APN_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APN"

.field public static final USES_POLICY_MDM_APPLICATION:I = 0x16

.field public static final USES_POLICY_MDM_APPLICATION_PERMISSION:I = 0x5a

.field public static final USES_POLICY_MDM_APPLICATION_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

.field public static final USES_POLICY_MDM_APPLICATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final USES_POLICY_MDM_AUDIT_LOG_PERMISSION:I = 0x2b

.field public static final USES_POLICY_MDM_AUDIT_LOG_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

.field public static final USES_POLICY_MDM_BLUETOOTH:I = 0x17

.field public static final USES_POLICY_MDM_BLUETOOTH_SECURE_MODE:I = 0x33

.field public static final USES_POLICY_MDM_BLUETOOTH_SECURE_MODE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

.field public static final USES_POLICY_MDM_BLUETOOTH_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

.field public static final USES_POLICY_MDM_BROWSER_PROXY:I = 0x35

.field public static final USES_POLICY_MDM_BROWSER_PROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

.field public static final USES_POLICY_MDM_BROWSER_SETTINGS:I = 0x24

.field public static final USES_POLICY_MDM_BROWSER_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

.field public static final USES_POLICY_MDM_CERTIFICATE_PERMISSION:I = 0x2a

.field public static final USES_POLICY_MDM_CERTIFICATE_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

.field public static final USES_POLICY_MDM_DATE_TIME:I = 0x25

.field public static final USES_POLICY_MDM_DATE_TIME_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DATE_TIME"

.field public static final USES_POLICY_MDM_DEVICE_INVENTORY:I = 0x18

.field public static final USES_POLICY_MDM_DEVICE_INVENTORY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_INVENTORY"

.field public static final USES_POLICY_MDM_DUAL_SIM:I = 0x2f

.field public static final USES_POLICY_MDM_DUAL_SIM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

.field public static final USES_POLICY_MDM_EMAIL_ACCOUNT:I = 0x20

.field public static final USES_POLICY_MDM_EMAIL_ACCOUNT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field public static final USES_POLICY_MDM_ENTERPRISE_CONTAINER:I = 0x30

.field public static final USES_POLICY_MDM_ENTERPRISE_CONTAINER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN:I = 0x27

.field public static final USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

.field public static final USES_POLICY_MDM_EXCHANGE_ACCOUNT:I = 0x19

.field public static final USES_POLICY_MDM_EXCHANGE_ACCOUNT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EXCHANGE"

.field public static final USES_POLICY_MDM_FIREWALL:I = 0x26

.field public static final USES_POLICY_MDM_FIREWALL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_FIREWALL"

.field public static final USES_POLICY_MDM_GEOFENCING:I = 0x2d

.field public static final USES_POLICY_MDM_GEOFENCING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GEOFENCING"

.field public static final USES_POLICY_MDM_GLOBALPROXY:I = 0x4d

.field public static final USES_POLICY_MDM_GLOBALPROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

.field public static final USES_POLICY_MDM_HARDWARE_CONTROL:I = 0x1d

.field public static final USES_POLICY_MDM_HARDWARE_CONTROL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

.field public static final USES_POLICY_MDM_KIOSK_MODE:I = 0x29

.field public static final USES_POLICY_MDM_KIOSK_MODE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

.field public static final USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS:I = 0x38

.field public static final USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field public static final USES_POLICY_MDM_KNOX_MOBILE_THREAT_DEFENSE:I = 0x6a

.field public static final USES_POLICY_MDM_KNOX_MOBILE_THREAT_DEFENSE_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final USES_POLICY_MDM_LDAP_SETTINGS:I = 0x2c

.field public static final USES_POLICY_MDM_LDAP_SETTINGS_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LDAP"

.field public static final USES_POLICY_MDM_LICENSE_LOG:I = 0x31

.field public static final USES_POLICY_MDM_LICENSE_LOG_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

.field public static final USES_POLICY_MDM_LOCATION:I = 0x1f

.field public static final USES_POLICY_MDM_LOCATION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCATION"

.field public static final USES_POLICY_MDM_LOCKSCREEN:I = 0x2e

.field public static final USES_POLICY_MDM_LOCKSCREEN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

.field public static final USES_POLICY_MDM_MULTI_USER_MGMT:I = 0x32

.field public static final USES_POLICY_MDM_MULTI_USER_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

.field public static final USES_POLICY_MDM_PHONE_RESTRICTION:I = 0x23

.field public static final USES_POLICY_MDM_PHONE_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

.field public static final USES_POLICY_MDM_RCP_SYNC_MGMT:I = 0x39

.field public static final USES_POLICY_MDM_RCP_SYNC_MGMT_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field public static final USES_POLICY_MDM_REMOTE_CONTROL:I = 0x28

.field public static final USES_POLICY_MDM_REMOTE_CONTROL_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

.field public static final USES_POLICY_MDM_RESTRICTION:I = 0x1e

.field public static final USES_POLICY_MDM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field public static final USES_POLICY_MDM_ROAMING:I = 0x1a

.field public static final USES_POLICY_MDM_ROAMING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ROAMING"

.field public static final USES_POLICY_MDM_SECURITY:I = 0x1c

.field public static final USES_POLICY_MDM_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURITY"

.field public static final USES_POLICY_MDM_SMARTCARD:I = 0x5b

.field public static final USES_POLICY_MDM_SMARTCARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SMARTCARD"

.field public static final USES_POLICY_MDM_SSO:I = 0x43

.field public static final USES_POLICY_MDM_SSO_TAG:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

.field public static final USES_POLICY_MDM_VPN:I = 0x21

.field public static final USES_POLICY_MDM_VPN_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN"

.field public static final USES_POLICY_MDM_WIFI:I = 0x1b

.field public static final USES_POLICY_MDM_WIFI_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_WIFI"

.field public static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final timaversion:Z


# instance fields
.field public mAuthorized:Z

.field public mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field public mIsPseudoAdmin:Z

.field public mLicenseExpiryTime:J

.field public final mReceiver:Landroid/content/pm/ResolveInfo;

.field public mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUsesPolicies:Ljava/util/BitSet;

.field public mVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "ro.config.timaversion"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "3.0"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance v0, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 51
    .line 52
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 53
    .line 54
    const v1, 0x1040a98

    .line 55
    .line 56
    .line 57
    const v2, 0x1040959

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x16

    .line 61
    .line 62
    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 63
    .line 64
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 68
    .line 69
    const v1, 0x1040a9b

    .line 70
    .line 71
    .line 72
    const v2, 0x104095c

    .line 73
    .line 74
    .line 75
    const/16 v3, 0x17

    .line 76
    .line 77
    const-string v4, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    .line 78
    .line 79
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 83
    .line 84
    const v1, 0x1040aa7

    .line 85
    .line 86
    .line 87
    const v2, 0x1040968

    .line 88
    .line 89
    .line 90
    const/16 v3, 0x18

    .line 91
    .line 92
    const-string v4, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    .line 93
    .line 94
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 98
    .line 99
    const v1, 0x1040ab2

    .line 100
    .line 101
    .line 102
    const v2, 0x1040973

    .line 103
    .line 104
    .line 105
    const/16 v3, 0x19

    .line 106
    .line 107
    const-string v4, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 108
    .line 109
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 113
    .line 114
    const v1, 0x1040ac7

    .line 115
    .line 116
    .line 117
    const v2, 0x104098c

    .line 118
    .line 119
    .line 120
    const/16 v3, 0x1a

    .line 121
    .line 122
    const-string v4, "com.samsung.android.knox.permission.KNOX_ROAMING"

    .line 123
    .line 124
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 128
    .line 129
    const v1, 0x1040ad9

    .line 130
    .line 131
    .line 132
    const v2, 0x104099e

    .line 133
    .line 134
    .line 135
    const/16 v3, 0x1b

    .line 136
    .line 137
    const-string v4, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 138
    .line 139
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 143
    .line 144
    const v1, 0x1040ace

    .line 145
    .line 146
    .line 147
    const v2, 0x1040993

    .line 148
    .line 149
    .line 150
    const/16 v3, 0x1c

    .line 151
    .line 152
    const-string v4, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 153
    .line 154
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 158
    .line 159
    const v1, 0x1040ab6

    .line 160
    .line 161
    .line 162
    const v2, 0x1040977

    .line 163
    .line 164
    .line 165
    const/16 v3, 0x1d

    .line 166
    .line 167
    const-string v4, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 168
    .line 169
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 173
    .line 174
    const v1, 0x1040ac6

    .line 175
    .line 176
    .line 177
    const v2, 0x104098b

    .line 178
    .line 179
    .line 180
    const/16 v3, 0x1e

    .line 181
    .line 182
    const-string v4, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 183
    .line 184
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 188
    .line 189
    const v1, 0x1040ac0

    .line 190
    .line 191
    .line 192
    const v2, 0x1040985

    .line 193
    .line 194
    .line 195
    const/16 v3, 0x1f

    .line 196
    .line 197
    const-string v4, "com.samsung.android.knox.permission.KNOX_LOCATION"

    .line 198
    .line 199
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 203
    .line 204
    const v1, 0x1040aab

    .line 205
    .line 206
    .line 207
    const v2, 0x104096c

    .line 208
    .line 209
    .line 210
    const/16 v3, 0x20

    .line 211
    .line 212
    const-string v4, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 213
    .line 214
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 215
    .line 216
    .line 217
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 218
    .line 219
    const v1, 0x1040ad8

    .line 220
    .line 221
    .line 222
    const v2, 0x104099d

    .line 223
    .line 224
    .line 225
    const/16 v3, 0x21

    .line 226
    .line 227
    const-string v4, "com.samsung.android.knox.permission.KNOX_VPN"

    .line 228
    .line 229
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 230
    .line 231
    .line 232
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 233
    .line 234
    const v1, 0x1040a96

    .line 235
    .line 236
    .line 237
    const v2, 0x1040957

    .line 238
    .line 239
    .line 240
    const/16 v3, 0x22

    .line 241
    .line 242
    const-string v4, "com.samsung.android.knox.permission.KNOX_APN"

    .line 243
    .line 244
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 248
    .line 249
    const/16 v1, 0x23

    .line 250
    .line 251
    const-string v2, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    .line 252
    .line 253
    const v3, 0x1040ac2

    .line 254
    .line 255
    .line 256
    const v4, 0x1040987

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 260
    .line 261
    .line 262
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 263
    .line 264
    const v1, 0x1040a9e

    .line 265
    .line 266
    .line 267
    const v2, 0x104095f

    .line 268
    .line 269
    .line 270
    const/16 v5, 0x24

    .line 271
    .line 272
    const-string v6, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    .line 273
    .line 274
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 278
    .line 279
    const v1, 0x1040a9d

    .line 280
    .line 281
    .line 282
    const v2, 0x104095e

    .line 283
    .line 284
    .line 285
    const/16 v5, 0x35

    .line 286
    .line 287
    const-string v6, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    .line 288
    .line 289
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 290
    .line 291
    .line 292
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 293
    .line 294
    const v1, 0x1040aa5

    .line 295
    .line 296
    .line 297
    const v2, 0x1040966

    .line 298
    .line 299
    .line 300
    const/16 v5, 0x25

    .line 301
    .line 302
    const-string v6, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    .line 303
    .line 304
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 305
    .line 306
    .line 307
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 308
    .line 309
    const v1, 0x1040a88

    .line 310
    .line 311
    .line 312
    const v2, 0x1040948

    .line 313
    .line 314
    .line 315
    const/16 v5, 0x36

    .line 316
    .line 317
    const-string v6, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    .line 318
    .line 319
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 320
    .line 321
    .line 322
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 323
    .line 324
    const v1, 0x1040a80

    .line 325
    .line 326
    .line 327
    const v2, 0x1040940

    .line 328
    .line 329
    .line 330
    const/16 v5, 0x37

    .line 331
    .line 332
    const-string v6, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    .line 333
    .line 334
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 338
    .line 339
    const v1, 0x1040ab3

    .line 340
    .line 341
    .line 342
    const v2, 0x1040974

    .line 343
    .line 344
    .line 345
    const/16 v5, 0x26

    .line 346
    .line 347
    const-string v6, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 348
    .line 349
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 353
    .line 354
    const v1, 0x1040aac

    .line 355
    .line 356
    .line 357
    const v2, 0x104096d

    .line 358
    .line 359
    .line 360
    const/16 v5, 0x27

    .line 361
    .line 362
    const-string v6, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    .line 363
    .line 364
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 365
    .line 366
    .line 367
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 368
    .line 369
    const v1, 0x1040ac5

    .line 370
    .line 371
    .line 372
    const v2, 0x104098a

    .line 373
    .line 374
    .line 375
    const/16 v5, 0x28

    .line 376
    .line 377
    const-string v6, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    .line 378
    .line 379
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 380
    .line 381
    .line 382
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 383
    .line 384
    const v1, 0x1040ab9

    .line 385
    .line 386
    .line 387
    const v2, 0x104097a

    .line 388
    .line 389
    .line 390
    const/16 v5, 0x29

    .line 391
    .line 392
    const-string v6, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    .line 393
    .line 394
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 395
    .line 396
    .line 397
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 398
    .line 399
    const v1, 0x1040aa2

    .line 400
    .line 401
    .line 402
    const v2, 0x1040963

    .line 403
    .line 404
    .line 405
    const/16 v5, 0x2a

    .line 406
    .line 407
    const-string v6, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 408
    .line 409
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 410
    .line 411
    .line 412
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 413
    .line 414
    const v1, 0x1040a9a

    .line 415
    .line 416
    .line 417
    const v2, 0x104095b

    .line 418
    .line 419
    .line 420
    const/16 v5, 0x2b

    .line 421
    .line 422
    const-string v6, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    .line 423
    .line 424
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 425
    .line 426
    .line 427
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 428
    .line 429
    const v1, 0x1040aad

    .line 430
    .line 431
    .line 432
    const v2, 0x104096e

    .line 433
    .line 434
    .line 435
    const/16 v5, 0x30

    .line 436
    .line 437
    const-string v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 438
    .line 439
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 440
    .line 441
    .line 442
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 443
    .line 444
    const v1, 0x1040abe

    .line 445
    .line 446
    .line 447
    const v2, 0x104097f

    .line 448
    .line 449
    .line 450
    const/16 v5, 0x2c

    .line 451
    .line 452
    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    .line 453
    .line 454
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 455
    .line 456
    .line 457
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 458
    .line 459
    const v1, 0x1040abf

    .line 460
    .line 461
    .line 462
    const v2, 0x1040980

    .line 463
    .line 464
    .line 465
    const/16 v5, 0x2e

    .line 466
    .line 467
    const-string v6, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    .line 468
    .line 469
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 470
    .line 471
    .line 472
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 473
    .line 474
    const v1, 0x1040aa9

    .line 475
    .line 476
    .line 477
    const v2, 0x104096a

    .line 478
    .line 479
    .line 480
    const/16 v5, 0x2f

    .line 481
    .line 482
    const-string v6, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    .line 483
    .line 484
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 485
    .line 486
    .line 487
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 488
    .line 489
    const v1, 0x1040aca

    .line 490
    .line 491
    .line 492
    const v2, 0x104098f

    .line 493
    .line 494
    .line 495
    const/16 v5, 0x43

    .line 496
    .line 497
    const-string v6, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    .line 498
    .line 499
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 500
    .line 501
    .line 502
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 503
    .line 504
    const v1, 0x1040ab4

    .line 505
    .line 506
    .line 507
    const v2, 0x1040975

    .line 508
    .line 509
    .line 510
    const/16 v5, 0x2d

    .line 511
    .line 512
    const-string v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 513
    .line 514
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 515
    .line 516
    .line 517
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 518
    .line 519
    const v1, 0x1040aaa

    .line 520
    .line 521
    .line 522
    const v2, 0x104096b

    .line 523
    .line 524
    .line 525
    const/16 v5, 0x31

    .line 526
    .line 527
    const-string v6, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    .line 528
    .line 529
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 530
    .line 531
    .line 532
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 533
    .line 534
    const v1, 0x1040ac1

    .line 535
    .line 536
    .line 537
    const v2, 0x1040986

    .line 538
    .line 539
    .line 540
    const/16 v5, 0x32

    .line 541
    .line 542
    const-string v6, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    .line 543
    .line 544
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 545
    .line 546
    .line 547
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 548
    .line 549
    const v1, 0x1040a9c

    .line 550
    .line 551
    .line 552
    const v2, 0x104095d

    .line 553
    .line 554
    .line 555
    const/16 v5, 0x33

    .line 556
    .line 557
    const-string v6, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    .line 558
    .line 559
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 560
    .line 561
    .line 562
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 563
    .line 564
    const v1, 0x1040a5c

    .line 565
    .line 566
    .line 567
    const v2, 0x104091c

    .line 568
    .line 569
    .line 570
    const/16 v5, 0x6b

    .line 571
    .line 572
    const-string v6, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    .line 573
    .line 574
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 575
    .line 576
    .line 577
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 578
    .line 579
    const v1, 0x1040ad2

    .line 580
    .line 581
    .line 582
    const v2, 0x1040997

    .line 583
    .line 584
    .line 585
    const/16 v5, 0x6a

    .line 586
    .line 587
    const-string v6, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    .line 588
    .line 589
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 590
    .line 591
    .line 592
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 593
    .line 594
    const v1, 0x1040a54

    .line 595
    .line 596
    .line 597
    const v2, 0x1040914

    .line 598
    .line 599
    .line 600
    const/16 v5, 0x6c

    .line 601
    .line 602
    const-string v6, "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

    .line 603
    .line 604
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 605
    .line 606
    .line 607
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 608
    .line 609
    const v1, 0x1040abc

    .line 610
    .line 611
    .line 612
    const v2, 0x104097d

    .line 613
    .line 614
    .line 615
    const/16 v5, 0x39

    .line 616
    .line 617
    const-string v6, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    .line 618
    .line 619
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 620
    .line 621
    .line 622
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 623
    .line 624
    const v1, 0x1040aba

    .line 625
    .line 626
    .line 627
    const v2, 0x104097b

    .line 628
    .line 629
    .line 630
    const/16 v5, 0x38

    .line 631
    .line 632
    const-string v6, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    .line 633
    .line 634
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 635
    .line 636
    .line 637
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 638
    .line 639
    const v1, 0x1040aa6

    .line 640
    .line 641
    .line 642
    const v2, 0x1040967

    .line 643
    .line 644
    .line 645
    const/16 v5, 0x6f

    .line 646
    .line 647
    const-string v6, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    .line 648
    .line 649
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 650
    .line 651
    .line 652
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 653
    .line 654
    const v1, 0x1040acc

    .line 655
    .line 656
    .line 657
    const v2, 0x1040991

    .line 658
    .line 659
    .line 660
    const/16 v5, 0x3a

    .line 661
    .line 662
    const-string v6, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    .line 663
    .line 664
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 665
    .line 666
    .line 667
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 668
    .line 669
    const/16 v1, 0x3b

    .line 670
    .line 671
    const-string v2, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    .line 672
    .line 673
    const v5, 0x1040acd

    .line 674
    .line 675
    .line 676
    const v6, 0x1040992

    .line 677
    .line 678
    .line 679
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 680
    .line 681
    .line 682
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 683
    .line 684
    const v1, 0x1040abd

    .line 685
    .line 686
    .line 687
    const v2, 0x104097e

    .line 688
    .line 689
    .line 690
    const/16 v7, 0x3c

    .line 691
    .line 692
    const-string v8, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 693
    .line 694
    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 695
    .line 696
    .line 697
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 698
    .line 699
    const v1, 0x1040a83

    .line 700
    .line 701
    .line 702
    const v2, 0x1040943

    .line 703
    .line 704
    .line 705
    const/16 v7, 0x3f

    .line 706
    .line 707
    const-string v8, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    .line 708
    .line 709
    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 710
    .line 711
    .line 712
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 713
    .line 714
    const/16 v1, 0x40

    .line 715
    .line 716
    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    .line 717
    .line 718
    const v7, 0x1040a84

    .line 719
    .line 720
    .line 721
    const v8, 0x1040944

    .line 722
    .line 723
    .line 724
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 725
    .line 726
    .line 727
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 728
    .line 729
    const/16 v1, 0x41

    .line 730
    .line 731
    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    .line 732
    .line 733
    const v9, 0x1040a81

    .line 734
    .line 735
    .line 736
    const v10, 0x1040941

    .line 737
    .line 738
    .line 739
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 740
    .line 741
    .line 742
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 743
    .line 744
    const/16 v1, 0x46

    .line 745
    .line 746
    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    .line 747
    .line 748
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 749
    .line 750
    .line 751
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 752
    .line 753
    const/16 v1, 0x44

    .line 754
    .line 755
    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING"

    .line 756
    .line 757
    const v9, 0x1040a5d

    .line 758
    .line 759
    .line 760
    const v10, 0x104091d

    .line 761
    .line 762
    .line 763
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 764
    .line 765
    .line 766
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 767
    .line 768
    const v1, 0x1040aa0

    .line 769
    .line 770
    .line 771
    const v2, 0x1040961

    .line 772
    .line 773
    .line 774
    const/16 v11, 0x3d

    .line 775
    .line 776
    const-string v12, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    .line 777
    .line 778
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 779
    .line 780
    .line 781
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 782
    .line 783
    const v1, 0x1040ad6

    .line 784
    .line 785
    .line 786
    const v2, 0x104099b

    .line 787
    .line 788
    .line 789
    const/16 v11, 0x48

    .line 790
    .line 791
    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    .line 792
    .line 793
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 794
    .line 795
    .line 796
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 797
    .line 798
    const v1, 0x1040ad7

    .line 799
    .line 800
    .line 801
    const v2, 0x104099c

    .line 802
    .line 803
    .line 804
    const/16 v11, 0x49

    .line 805
    .line 806
    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    .line 807
    .line 808
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 809
    .line 810
    .line 811
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 812
    .line 813
    const v1, 0x1040b28

    .line 814
    .line 815
    .line 816
    const v2, 0x10409ec

    .line 817
    .line 818
    .line 819
    const/16 v11, 0x4a

    .line 820
    .line 821
    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    .line 822
    .line 823
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 824
    .line 825
    .line 826
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 827
    .line 828
    const v1, 0x1040ad5

    .line 829
    .line 830
    .line 831
    const v2, 0x104099a

    .line 832
    .line 833
    .line 834
    const/16 v11, 0x4c

    .line 835
    .line 836
    const-string v12, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    .line 837
    .line 838
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 839
    .line 840
    .line 841
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 842
    .line 843
    const v1, 0x1040ab7

    .line 844
    .line 845
    .line 846
    const v2, 0x1040978

    .line 847
    .line 848
    .line 849
    const/16 v11, 0x3e

    .line 850
    .line 851
    const-string v12, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    .line 852
    .line 853
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 854
    .line 855
    .line 856
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 857
    .line 858
    const v1, 0x1040ab8

    .line 859
    .line 860
    .line 861
    const v2, 0x1040979

    .line 862
    .line 863
    .line 864
    const/16 v11, 0x4b

    .line 865
    .line 866
    const-string v12, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    .line 867
    .line 868
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 869
    .line 870
    .line 871
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 872
    .line 873
    const v1, 0x1040acb

    .line 874
    .line 875
    .line 876
    const v2, 0x1040990

    .line 877
    .line 878
    .line 879
    const/16 v11, 0x42

    .line 880
    .line 881
    const-string v12, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    .line 882
    .line 883
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 884
    .line 885
    .line 886
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 887
    .line 888
    const v1, 0x1040ac8

    .line 889
    .line 890
    .line 891
    const v2, 0x104098d

    .line 892
    .line 893
    .line 894
    const/16 v11, 0x47

    .line 895
    .line 896
    const-string v12, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    .line 897
    .line 898
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 899
    .line 900
    .line 901
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 902
    .line 903
    const v1, 0x1040ab5

    .line 904
    .line 905
    .line 906
    const v2, 0x1040976

    .line 907
    .line 908
    .line 909
    const/16 v11, 0x4d

    .line 910
    .line 911
    const-string v12, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    .line 912
    .line 913
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 914
    .line 915
    .line 916
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 917
    .line 918
    const v1, 0x1040aa1

    .line 919
    .line 920
    .line 921
    const v2, 0x1040962

    .line 922
    .line 923
    .line 924
    const/16 v11, 0x4e

    .line 925
    .line 926
    const-string v12, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 927
    .line 928
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 929
    .line 930
    .line 931
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 932
    .line 933
    const v1, 0x1040aa3

    .line 934
    .line 935
    .line 936
    const v2, 0x1040964

    .line 937
    .line 938
    .line 939
    const/16 v11, 0x4f

    .line 940
    .line 941
    const-string v12, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    .line 942
    .line 943
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 944
    .line 945
    .line 946
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 947
    .line 948
    const v1, 0x1040a7c

    .line 949
    .line 950
    .line 951
    const v2, 0x104093c

    .line 952
    .line 953
    .line 954
    const/16 v11, 0x50

    .line 955
    .line 956
    const-string v12, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    .line 957
    .line 958
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 959
    .line 960
    .line 961
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 962
    .line 963
    const v1, 0x1040a7d

    .line 964
    .line 965
    .line 966
    const v2, 0x104093d

    .line 967
    .line 968
    .line 969
    const/16 v11, 0x51

    .line 970
    .line 971
    const-string v12, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    .line 972
    .line 973
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 974
    .line 975
    .line 976
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 977
    .line 978
    const v1, 0x1040a8b

    .line 979
    .line 980
    .line 981
    const v2, 0x104094b

    .line 982
    .line 983
    .line 984
    const/16 v11, 0x52

    .line 985
    .line 986
    const-string v12, "com.samsung.android.knox.permission.KNOX_NPA"

    .line 987
    .line 988
    invoke-static {v11, v12, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 989
    .line 990
    .line 991
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 992
    .line 993
    const/16 v1, 0x53

    .line 994
    .line 995
    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    .line 996
    .line 997
    invoke-static {v1, v2, v9, v10, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 998
    .line 999
    .line 1000
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1001
    .line 1002
    const v1, 0x1040aa8

    .line 1003
    .line 1004
    .line 1005
    const v2, 0x1040969

    .line 1006
    .line 1007
    .line 1008
    const/16 v9, 0x54

    .line 1009
    .line 1010
    const-string v10, "com.samsung.android.knox.permission.KNOX_DEX"

    .line 1011
    .line 1012
    invoke-static {v9, v10, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1013
    .line 1014
    .line 1015
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1016
    .line 1017
    const/16 v1, 0x55

    .line 1018
    .line 1019
    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    .line 1020
    .line 1021
    invoke-static {v1, v2, v7, v8, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1025
    .line 1026
    const v1, 0x1040b27

    .line 1027
    .line 1028
    .line 1029
    const v2, 0x10409eb

    .line 1030
    .line 1031
    .line 1032
    const/16 v7, 0x56

    .line 1033
    .line 1034
    const-string v8, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    .line 1035
    .line 1036
    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1037
    .line 1038
    .line 1039
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1040
    .line 1041
    const v1, 0x1040a86

    .line 1042
    .line 1043
    .line 1044
    const v2, 0x1040946

    .line 1045
    .line 1046
    .line 1047
    const/16 v7, 0x57

    .line 1048
    .line 1049
    const-string v8, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    .line 1050
    .line 1051
    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1052
    .line 1053
    .line 1054
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1055
    .line 1056
    const/16 v1, 0x59

    .line 1057
    .line 1058
    const-string v2, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    .line 1059
    .line 1060
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1061
    .line 1062
    .line 1063
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1064
    .line 1065
    const v1, 0x1040a99

    .line 1066
    .line 1067
    .line 1068
    const v2, 0x104095a

    .line 1069
    .line 1070
    .line 1071
    const/16 v3, 0x5a

    .line 1072
    .line 1073
    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

    .line 1074
    .line 1075
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1076
    .line 1077
    .line 1078
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1079
    .line 1080
    const v1, 0x1040ad1

    .line 1081
    .line 1082
    .line 1083
    const v2, 0x1040996

    .line 1084
    .line 1085
    .line 1086
    const/16 v3, 0x5b

    .line 1087
    .line 1088
    const-string v4, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    .line 1089
    .line 1090
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1091
    .line 1092
    .line 1093
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1094
    .line 1095
    const v1, 0x1040a89

    .line 1096
    .line 1097
    .line 1098
    const v2, 0x1040949

    .line 1099
    .line 1100
    .line 1101
    const/16 v3, 0x6e

    .line 1102
    .line 1103
    const-string v4, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 1104
    .line 1105
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1106
    .line 1107
    .line 1108
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1109
    .line 1110
    const v1, 0x1040a7b

    .line 1111
    .line 1112
    .line 1113
    const v2, 0x104093b

    .line 1114
    .line 1115
    .line 1116
    const/16 v3, 0x70

    .line 1117
    .line 1118
    const-string v4, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    .line 1119
    .line 1120
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1121
    .line 1122
    .line 1123
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1124
    .line 1125
    const/16 v1, 0x71

    .line 1126
    .line 1127
    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN"

    .line 1128
    .line 1129
    const v3, 0x1040a7f

    .line 1130
    .line 1131
    .line 1132
    const v4, 0x104093f

    .line 1133
    .line 1134
    .line 1135
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1136
    .line 1137
    .line 1138
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1139
    .line 1140
    const v1, 0x1040a87

    .line 1141
    .line 1142
    .line 1143
    const v2, 0x1040947

    .line 1144
    .line 1145
    .line 1146
    const/16 v7, 0x7a

    .line 1147
    .line 1148
    const-string v8, "com.samsung.android.knox.permission.KNOX_FORESIGHT"

    .line 1149
    .line 1150
    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1151
    .line 1152
    .line 1153
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1154
    .line 1155
    const v1, 0x1040a7e

    .line 1156
    .line 1157
    .line 1158
    const v2, 0x104093e

    .line 1159
    .line 1160
    .line 1161
    const/16 v7, 0x7b

    .line 1162
    .line 1163
    const-string v8, "com.samsung.android.knox.permission.KNOX_AUTH_MGMT"

    .line 1164
    .line 1165
    invoke-static {v7, v8, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1166
    .line 1167
    .line 1168
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1169
    .line 1170
    const/16 v1, 0x72

    .line 1171
    .line 1172
    const-string v2, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    .line 1173
    .line 1174
    invoke-static {v1, v2, v5, v6, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1175
    .line 1176
    .line 1177
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1178
    .line 1179
    const v1, 0x1040a85

    .line 1180
    .line 1181
    .line 1182
    const v2, 0x1040945

    .line 1183
    .line 1184
    .line 1185
    const/16 v5, 0x6d

    .line 1186
    .line 1187
    const-string v6, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    .line 1188
    .line 1189
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1190
    .line 1191
    .line 1192
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1193
    .line 1194
    const v1, 0x1040ae7

    .line 1195
    .line 1196
    .line 1197
    const v2, 0x10409ac

    .line 1198
    .line 1199
    .line 1200
    const/16 v5, 0x73

    .line 1201
    .line 1202
    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

    .line 1203
    .line 1204
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1205
    .line 1206
    .line 1207
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1208
    .line 1209
    const v1, 0x1040a59

    .line 1210
    .line 1211
    .line 1212
    const v2, 0x1040919

    .line 1213
    .line 1214
    .line 1215
    const/16 v5, 0x74

    .line 1216
    .line 1217
    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

    .line 1218
    .line 1219
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1220
    .line 1221
    .line 1222
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1223
    .line 1224
    const v1, 0x1040a58

    .line 1225
    .line 1226
    .line 1227
    const v2, 0x1040918

    .line 1228
    .line 1229
    .line 1230
    const/16 v5, 0x75

    .line 1231
    .line 1232
    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

    .line 1233
    .line 1234
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1235
    .line 1236
    .line 1237
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1238
    .line 1239
    const v1, 0x1040a8f

    .line 1240
    .line 1241
    .line 1242
    const v2, 0x1040950

    .line 1243
    .line 1244
    .line 1245
    const/16 v5, 0x76

    .line 1246
    .line 1247
    const-string v6, "com.samsung.android.knox.permission.KNOX_NDA_AI"

    .line 1248
    .line 1249
    invoke-static {v5, v6, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1250
    .line 1251
    .line 1252
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1253
    .line 1254
    const/16 v1, 0x77

    .line 1255
    .line 1256
    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

    .line 1257
    .line 1258
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1259
    .line 1260
    .line 1261
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1262
    .line 1263
    const/16 v1, 0x78

    .line 1264
    .line 1265
    const-string v2, "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

    .line 1266
    .line 1267
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1268
    .line 1269
    .line 1270
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1271
    .line 1272
    const v1, 0x1040a8a

    .line 1273
    .line 1274
    .line 1275
    const v2, 0x104094a

    .line 1276
    .line 1277
    .line 1278
    const/16 v3, 0x79

    .line 1279
    .line 1280
    const-string v4, "com.samsung.android.knox.permission.KNOX_MPOS"

    .line 1281
    .line 1282
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1283
    .line 1284
    .line 1285
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1286
    .line 1287
    const v1, 0x104094c

    .line 1288
    .line 1289
    .line 1290
    const/16 v2, 0x7c

    .line 1291
    .line 1292
    const-string v3, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_MGMT"

    .line 1293
    .line 1294
    const v4, 0x1040a8c

    .line 1295
    .line 1296
    .line 1297
    invoke-static {v2, v3, v4, v1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1298
    .line 1299
    .line 1300
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    const-string v1, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    .line 1303
    .line 1304
    const v2, 0x104094d

    .line 1305
    .line 1306
    .line 1307
    const/16 v3, 0x7d

    .line 1308
    .line 1309
    invoke-static {v3, v1, v4, v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;->m(ILjava/lang/String;IILjava/util/ArrayList;)V

    .line 1310
    .line 1311
    .line 1312
    const/4 v0, 0x0

    .line 1313
    move v1, v0

    .line 1314
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1315
    .line 1316
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    if-ge v1, v2, :cond_1

    .line 1321
    .line 1322
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 1323
    .line 1324
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 1329
    .line 1330
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 1331
    .line 1332
    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    .line 1333
    .line 1334
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1335
    .line 1336
    .line 1337
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 1338
    .line 1339
    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 1340
    .line 1341
    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    .line 1342
    .line 1343
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v5

    .line 1347
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    iget-object v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 1351
    .line 1352
    const-string v3, ","

    .line 1353
    .line 1354
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    if-eqz v2, :cond_0

    .line 1359
    .line 1360
    array-length v3, v2

    .line 1361
    const/4 v4, 0x2

    .line 1362
    if-ne v3, v4, :cond_0

    .line 1363
    .line 1364
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 1365
    .line 1366
    aget-object v4, v2, v0

    .line 1367
    .line 1368
    const/4 v5, 0x1

    .line 1369
    aget-object v6, v2, v5

    .line 1370
    .line 1371
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 1375
    .line 1376
    aget-object v4, v2, v5

    .line 1377
    .line 1378
    aget-object v2, v2, v0

    .line 1379
    .line 1380
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1384
    .line 1385
    goto :goto_0

    .line 1386
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    .line 1387
    .line 1388
    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    .line 1389
    .line 1390
    .line 1391
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1392
    .line 1393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 6
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 10
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "Receiver:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "  "

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getLicenseExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "NonExist"

    .line 11
    .line 12
    :goto_0
    return-object p0
.end method

.method public final getReceiver()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReceiverName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getRequestedPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTagForPolicy(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    const/16 v1, 0x16

    .line 8
    .line 9
    if-ge p1, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    return-object v0
.end method

.method public final getUsedPolicies()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 27
    .line 28
    iget v5, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 35
    .line 36
    iget-object v6, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 43
    .line 44
    iget v7, v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 51
    .line 52
    iget v8, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    .line 53
    .line 54
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    :goto_1
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ge v2, v1, :cond_2

    .line 70
    .line 71
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 78
    .line 79
    iget v3, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    return-object v0
.end method

.method public final isAuthorized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isProxy()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isPseudo()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "EnterpriseDeviceAdminInfo"

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    const-string v2, "Failed adding asset path:"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 8
    .line 9
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    new-instance v5, Landroid/content/res/AssetManager;

    .line 17
    .line 18
    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    const-string v2, "AndroidManifest.xml"

    .line 28
    .line 29
    invoke-virtual {v5, v6, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v2

    .line 53
    move-object v5, v4

    .line 54
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v7, "Unable to read AndroidManifest.xml of "

    .line 57
    .line 58
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    move-object v2, v4

    .line 72
    :goto_2
    if-nez v2, :cond_2

    .line 73
    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-object v4

    .line 80
    :cond_2
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 81
    .line 82
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 86
    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x1

    .line 90
    :try_start_2
    new-instance v8, Landroid/content/res/Resources;

    .line 91
    .line 92
    invoke-direct {v8, v5, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 93
    .line 94
    .line 95
    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v9, 0x2

    .line 100
    if-eq v3, v9, :cond_3

    .line 101
    .line 102
    if-eq v3, v7, :cond_3

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 106
    .line 107
    .line 108
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    move-object v9, v4

    .line 110
    :cond_4
    :goto_4
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eq v10, v7, :cond_a

    .line 115
    .line 116
    const/4 v11, 0x3

    .line 117
    if-ne v10, v11, :cond_5

    .line 118
    .line 119
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-le v12, v3, :cond_a

    .line 124
    .line 125
    :cond_5
    if-eq v10, v11, :cond_4

    .line 126
    .line 127
    const/4 v11, 0x4

    .line 128
    if-ne v10, v11, :cond_6

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    if-eqz v10, :cond_4

    .line 136
    .line 137
    const-string v11, "uses-permission"

    .line 138
    .line 139
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-eqz v10, :cond_4

    .line 144
    .line 145
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    .line 146
    .line 147
    invoke-virtual {v8, v2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-eqz v11, :cond_7

    .line 162
    .line 163
    new-instance v11, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    check-cast v12, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    goto :goto_5

    .line 190
    :cond_7
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 191
    .line 192
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-eqz v11, :cond_8

    .line 197
    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    check-cast v12, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    goto :goto_5

    .line 225
    :cond_8
    move-object v11, v10

    .line 226
    :goto_5
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    check-cast v11, Ljava/lang/Integer;

    .line 233
    .line 234
    if-eqz v11, :cond_9

    .line 235
    .line 236
    iget-object v12, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 237
    .line 238
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    invoke-virtual {v12, v11}, Ljava/util/BitSet;->set(I)V

    .line 243
    .line 244
    .line 245
    if-eqz v10, :cond_9

    .line 246
    .line 247
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    if-nez v11, :cond_9

    .line 254
    .line 255
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 256
    .line 257
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    :cond_9
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    .line 266
    .line 267
    goto/16 :goto_4

    .line 268
    .line 269
    :cond_a
    if-eqz v9, :cond_b

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :catch_2
    move-exception v3

    .line 273
    goto :goto_6

    .line 274
    :catchall_0
    move-exception p0

    .line 275
    goto/16 :goto_c

    .line 276
    .line 277
    :catch_3
    move-exception v3

    .line 278
    move-object v9, v4

    .line 279
    :goto_6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    .line 281
    .line 282
    if-eqz v9, :cond_b

    .line 283
    .line 284
    :goto_7
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    .line 286
    .line 287
    :cond_b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 288
    .line 289
    .line 290
    if-eqz v5, :cond_c

    .line 291
    .line 292
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 293
    .line 294
    .line 295
    :cond_c
    invoke-static {v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 304
    .line 305
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    if-eqz v2, :cond_12

    .line 314
    .line 315
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_12

    .line 324
    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Ljava/lang/String;

    .line 330
    .line 331
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_e

    .line 338
    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 351
    .line 352
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    check-cast v5, Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    goto :goto_9

    .line 366
    :cond_e
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_f

    .line 373
    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 380
    .line 381
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    check-cast v5, Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    goto :goto_9

    .line 401
    :cond_f
    move-object v4, v3

    .line 402
    :goto_9
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 403
    .line 404
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    check-cast v5, Ljava/lang/Integer;

    .line 409
    .line 410
    if-eqz v5, :cond_d

    .line 411
    .line 412
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    move v9, v6

    .line 417
    :goto_a
    array-length v10, v8

    .line 418
    if-ge v9, v10, :cond_11

    .line 419
    .line 420
    aget-object v10, v8, v9

    .line 421
    .line 422
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 423
    .line 424
    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    invoke-virtual {p1, v10, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    move-result v10

    .line 432
    if-nez v10, :cond_10

    .line 433
    .line 434
    move v8, v7

    .line 435
    goto :goto_b

    .line 436
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 437
    .line 438
    goto :goto_a

    .line 439
    :cond_11
    move v8, v6

    .line 440
    :goto_b
    if-eqz v8, :cond_d

    .line 441
    .line 442
    new-instance v8, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v9, "Add Granted permission : "

    .line 448
    .line 449
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 463
    .line 464
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 469
    .line 470
    .line 471
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 472
    .line 473
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    if-nez v4, :cond_d

    .line 478
    .line 479
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 480
    .line 481
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 486
    .line 487
    .line 488
    goto/16 :goto_8

    .line 489
    .line 490
    :catch_4
    const-string p1, "Failed to get ELM permissions"

    .line 491
    .line 492
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 496
    .line 497
    return-object p0

    .line 498
    :catchall_1
    move-exception p0

    .line 499
    move-object v4, v9

    .line 500
    :goto_c
    if-eqz v4, :cond_13

    .line 501
    .line 502
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    .line 504
    .line 505
    :cond_13
    throw p0
.end method

.method public final readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    new-instance v0, Ljava/util/BitSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method public final readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAuthorized(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLicenseExpiry(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "DeviceAdminInfo{"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "}"

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, ""

    .line 26
    .line 27
    :goto_0
    return-object p0
.end method

.method public final usesMDMPolicy()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/BitSet;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final usesPolicy(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    const/4 p0, -0x1

    .line 9
    move v0, p0

    .line 10
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v0, p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
