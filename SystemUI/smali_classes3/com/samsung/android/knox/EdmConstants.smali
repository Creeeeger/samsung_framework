.class public final Lcom/samsung/android/knox/EdmConstants;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;,
        Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    }
.end annotation


# static fields
.field public static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CALL_STATE_CHANGED"

.field public static final ACTION_CHECK_REENROLLMENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

.field public static final ACTION_DO_KEYGUARD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

.field public static final ACTION_EDM_BOOT_COMPLETED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

.field public static final ACTION_HARD_KEY_PRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

.field public static final ACTION_KEYGUARD_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KEYGUARD_REFRESH_INTERNAL"

.field public static final ACTION_MTP_BLOCKED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTP_BLOCKED_INTERNAL"

.field public static final ACTION_NOTIFY_STORAGE_CARD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_STORAGE_CARD_INTERNAL"

.field public static final ACTION_NO_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

.field public static final ACTION_OPERATOR_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.OPERATOR_NAME_INTERNAL"

.field public static final ACTION_QUICKSETTING_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.QUICKSETTING_REFRESH_INTERNAL"

.field public static final ACTION_SEND_DTMF_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_DTMF_INTERNAL"

.field public static final ACTION_SET_KEYBOARD_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_KEYBOARD_MODE_INTERNAL"

.field public static final ACTION_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.USER_ACTIVITY"

.field public static final APN_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "apn_settings_policy"

.field public static final APPLICATION_POLICY_SERVICE:Ljava/lang/String; = "application_policy"

.field public static final APP_MANAGEMENT_SERVICE_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUDIT_LOG:Ljava/lang/String; = "auditlog"

.field public static final BLUETOOTH_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_policy"

.field public static final BROWSER_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "browser_policy"

.field public static final BT_SECURE_MODE_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_secure_mode_policy"

.field public static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "certificate_policy"

.field public static final DATE_TIME_POLICY_SERVICE:Ljava/lang/String; = "date_time_policy"

.field public static final DEFAULT_USER_ACTIVITY_TIMEOUT:I = 0x0

.field public static final DEVICE_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "device_account_policy"

.field public static final DEVICE_CONTAINER_ID:I = 0x0

.field public static final DEVICE_INVENTORY_SERVICE:Ljava/lang/String; = "device_info"

.field public static final DEX_POLICY_SERVICE:Ljava/lang/String; = "dex_policy"

.field public static final EAS_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "eas_account_policy"

.field public static final EMAIL_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "email_account_policy"

.field public static final EMAIL_POLICY_SERVICE:Ljava/lang/String; = "email_policy"

.field public static final ENTERPRISE_BILLING_POLICY_SERVICE:Ljava/lang/String; = "enterprise_billing_policy"

.field public static final ENTERPRISE_LICENSE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_license_policy"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ERROR_CRYPTO_CHECK_FAILURE:I = -0x5

.field public static final ERROR_INVALID_FILE:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ACTIVE_ADMIN:I = -0x2

.field public static final ERROR_PACKAGE_NAME_MISMATCH:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final EXTRA_ADMIN_UID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ADMIN_UID"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CALL_STATE"

.field public static final EXTRA_CURRENT_VERSION:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CURRENT_VERSION"

.field public static final EXTRA_DTMF_DURATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DTMF_DURATION_INTERNAL"

.field public static final EXTRA_DTMF_TONE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DTMF_TONE_INTERNAL"

.field public static final EXTRA_KEYBOARD_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEYBOARD_MODE_INTERNAL"

.field public static final EXTRA_KEY_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_CODE"

.field public static final EXTRA_MIGRATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.MIGRATION_RESULT"

.field public static final EXTRA_PHONE_STATE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PHONE_STATE"

.field public static final FIREWALL_SERVICE:Ljava/lang/String; = "firewall"

.field public static final GEOFENCING:Ljava/lang/String; = "geofencing"

.field public static final HDM_SERVICE:Ljava/lang/String; = "hdm_service"

.field public static final INVALID_CONTAINER_ID:I = -0x1

.field public static final KIOSKMODE:Ljava/lang/String; = "kioskmode"

.field public static final KLMS_PKG_NAME:Ljava/lang/String; = "com.samsung.klmsagent"

.field public static final KNOX_2_7_1:I = 0x15

.field public static final KNOX_2_8:I = 0x16

.field public static final KNOX_CCM_POLICY_SERVICE:Ljava/lang/String; = "knox_ccm_policy"

.field public static final KNOX_CUSTOM_MANAGER_SERVICE:Ljava/lang/String; = "knoxcustom"

.field public static final KNOX_KPCC_MANAGER_SERVICE:Ljava/lang/String; = "kpcc"

.field public static final KNOX_NETWORK_ANALYTICS_SERVICE:Ljava/lang/String; = "knoxnap"

.field public static final KNOX_NETWORK_FILTER_SERVICE:Ljava/lang/String; = "knox_nwFilterMgr_policy"

.field public static final KNOX_SCEP_POLICY_SERVICE:Ljava/lang/String; = "knox_scep_policy"

.field public static final KNOX_TIMAKEYSTORE_POLICY_SERVICE:Ljava/lang/String; = "knox_timakeystore_policy"

.field public static final KNOX_TRUSTED_PINPAD_POLICY_SERVICE:Ljava/lang/String; = "knox_pinpad_service"

.field public static final KNOX_UCSM_POLICY_SERVICE:Ljava/lang/String; = "knox_ucsm_policy"

.field public static final KPE_CORE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpecore"

.field public static final KPU_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpu"

.field public static final LDAP_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "ldap_account_policy"

.field public static final LICENSE_LOG_SERVICE:Ljava/lang/String; = "license_log_service"

.field public static final LOCATION_POLICY_SERVICE:Ljava/lang/String; = "location_policy"

.field public static final LOCKSCREEN_OVERLAY_SERVICE:Ljava/lang/String; = "lockscreen_overlay"

.field public static final MISC_POLICY_SERVICE:Ljava/lang/String; = "misc_policy"

.field public static final MULTI_USER_MANAGER_SERVICE:Ljava/lang/String; = "multi_user_manager_service"

.field public static final MUM_CONTAINER_POLICY_SERVICE:Ljava/lang/String; = "mum_container_policy"

.field public static final MUM_CONTAINER_RCP_POLICY_SERVICE:Ljava/lang/String; = "mum_container_rcp_policy"

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field public static final PASSWORD_POLICY_SERVICE:Ljava/lang/String; = "password_policy"

.field public static final PHONE_RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "phone_restriction_policy"

.field public static final PROFILE_POLICY_SERVICE:Ljava/lang/String; = "profilepolicy"

.field public static final REMOTE_INJECTION_SERVICE:Ljava/lang/String; = "remoteinjection"

.field public static final RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "restriction_policy"

.field public static final ROAMING_POLICY_SERVICE:Ljava/lang/String; = "roaming_policy"

.field public static final SECURITY_POLICY_SERVICE:Ljava/lang/String; = "security_policy"

.field public static final SMARTCARD_BROWSER_POLICY_SERVICE:Ljava/lang/String; = "smartcard_browser_policy"

.field public static final SMARTCARD_EMAIL_POLICY_SERVICE:Ljava/lang/String; = "smartcard_email_policy"

.field public static final THREAT_DEFENSE_SERVICE:Ljava/lang/String; = "threat_defense_service"

.field public static final UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field public static final UNKNOWN_ADMIN_ID:I = -0x1

.field public static final VPN_POLICY_SERVICE:Ljava/lang/String; = "vpn_policy"

.field public static final WIFI_POLICY_SERVICE:Ljava/lang/String; = "wifi_policy"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/EdmConstants$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/EdmConstants$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/knox/EdmConstants$2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/samsung/android/knox/EdmConstants$2;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/samsung/android/knox/EdmConstants;->APP_MANAGEMENT_SERVICE_PACKAGES:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    .locals 1

    .line 1
    const-string v0, "37"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_10:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_1
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_2
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_3
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_4
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_5
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_6
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_7
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_8
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_9
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_a
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_c
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_e
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_f
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_10
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_11
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_12
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 68
    .line 69
    return-object v0

    .line 70
    :pswitch_13
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_14
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 74
    .line 75
    return-object v0

    .line 76
    :pswitch_15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_16
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_17
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_18
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 86
    .line 87
    return-object v0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_10:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/16 v1, 0x21

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    const/16 v1, 0x20

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_2
    const/16 v1, 0x1f

    .line 25
    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_3
    const/16 v1, 0x1e

    .line 32
    .line 33
    if-ne v0, v1, :cond_4

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_4
    const/16 v1, 0x1d

    .line 39
    .line 40
    if-ne v0, v1, :cond_5

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_5
    const/16 v1, 0x1c

    .line 46
    .line 47
    if-ne v0, v1, :cond_6

    .line 48
    .line 49
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_6
    const/16 v1, 0x1b

    .line 53
    .line 54
    if-ne v0, v1, :cond_7

    .line 55
    .line 56
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_7
    const/16 v1, 0x1a

    .line 60
    .line 61
    if-ne v0, v1, :cond_8

    .line 62
    .line 63
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_8
    const/16 v1, 0x19

    .line 67
    .line 68
    if-ne v0, v1, :cond_9

    .line 69
    .line 70
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_9
    const/16 v1, 0x18

    .line 74
    .line 75
    if-ne v0, v1, :cond_a

    .line 76
    .line 77
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_a
    const/16 v1, 0x17

    .line 81
    .line 82
    if-ne v0, v1, :cond_b

    .line 83
    .line 84
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_b
    const/16 v1, 0x16

    .line 88
    .line 89
    if-ne v0, v1, :cond_c

    .line 90
    .line 91
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_c
    const/16 v1, 0x15

    .line 95
    .line 96
    if-ne v0, v1, :cond_d

    .line 97
    .line 98
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_d
    const/16 v1, 0x14

    .line 102
    .line 103
    if-ne v0, v1, :cond_e

    .line 104
    .line 105
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_e
    const/16 v1, 0x13

    .line 109
    .line 110
    if-ne v0, v1, :cond_f

    .line 111
    .line 112
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_f
    const/16 v1, 0x12

    .line 116
    .line 117
    if-ne v0, v1, :cond_10

    .line 118
    .line 119
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_10
    const/16 v1, 0x11

    .line 123
    .line 124
    if-ne v0, v1, :cond_11

    .line 125
    .line 126
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_11
    const/16 v1, 0x10

    .line 130
    .line 131
    if-ne v0, v1, :cond_12

    .line 132
    .line 133
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_12
    const/16 v1, 0xf

    .line 137
    .line 138
    if-ne v0, v1, :cond_13

    .line 139
    .line 140
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_13
    const/16 v1, 0xe

    .line 144
    .line 145
    if-ne v0, v1, :cond_14

    .line 146
    .line 147
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_14
    const/16 v1, 0xd

    .line 151
    .line 152
    if-ne v0, v1, :cond_15

    .line 153
    .line 154
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_15
    const/16 v1, 0xc

    .line 158
    .line 159
    if-ne v0, v1, :cond_16

    .line 160
    .line 161
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_16
    const/16 v1, 0xb

    .line 165
    .line 166
    if-ne v0, v1, :cond_17

    .line 167
    .line 168
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_17
    const/16 v1, 0xa

    .line 172
    .line 173
    if-ne v0, v1, :cond_18

    .line 174
    .line 175
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 179
    .line 180
    return-object v0
.end method
