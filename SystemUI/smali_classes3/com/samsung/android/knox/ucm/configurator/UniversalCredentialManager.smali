.class public final Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_UCM_CONFIG_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

.field public static final ACTION_UCM_KEYGUARD_SET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

.field public static final ACTION_UCM_KEYGUARD_UNSET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

.field public static final ACTION_UCM_NOTIFY_EVENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

.field public static final ACTION_UCM_REFRESH_AGENT_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

.field public static final APPLET_FORM_FACTOR_ESE:Ljava/lang/String; = "eSE"

.field public static final APPLET_FORM_FACTOR_ESE1:Ljava/lang/String; = "eSE1"

.field public static final APPLET_FORM_FACTOR_SD:Ljava/lang/String; = "SD"

.field public static final APPLET_FORM_FACTOR_SD1:Ljava/lang/String; = "SD1"

.field public static final APPLET_FORM_FACTOR_SIM:Ljava/lang/String; = "SIM"

.field public static final APPLET_FORM_FACTOR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final APPLET_FORM_FACTOR_SIM2:Ljava/lang/String; = "SIM2"

.field public static final BUNDLE_CA_CERT_TYPE:Ljava/lang/String; = "cert_type"

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ALLOW_WIFI:Ljava/lang/String; = "allow_wifi"

.field public static final BUNDLE_EXTRA_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final BUNDLE_EXTRA_ENFORCE_LOCK_TYPE_DIRECT_SET:Ljava/lang/String; = "enforce_lock_type_direct_set"

.field public static final BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final BUNDLE_EXTRA_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final BUNDLE_EXTRA_ODE_CA_CERT:Ljava/lang/String; = "ode_ca_cert"

.field public static final BUNDLE_EXTRA_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final BUNDLE_EXTRA_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final BUNDLE_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final ERROR_UCM_ALIAS_ALREADY_EXIST:I = -0x14

.field public static final ERROR_UCM_ALIAS_EMPTY:I = -0x10

.field public static final ERROR_UCM_ALIAS_NOT_EXIST:I = -0xe

.field public static final ERROR_UCM_APP_SIGNATURE_INVALID:I = -0x12

.field public static final ERROR_UCM_CALLER_NOT_ALLOWED_TO_MANAGE_STORAGE:I = -0x17

.field public static final ERROR_UCM_CALLER_NOT_CONTAINER_OWNER:I = -0x18

.field public static final ERROR_UCM_FAILURE:I = -0x1

.field public static final ERROR_UCM_INSTALL_DELEGATION_NOT_ALLOWED:I = -0x1d

.field public static final ERROR_UCM_INVALID_ACCESS_TYPE:I = -0xf

.field public static final ERROR_UCM_INVALID_AUTH_TYPE:I = -0x11

.field public static final ERROR_UCM_INVALID_CERTIFICATE:I = -0x19

.field public static final ERROR_UCM_INVALID_EXEMPT_TYPE:I = -0x15

.field public static final ERROR_UCM_INVALID_STORAGE_OPTION:I = -0x13

.field public static final ERROR_UCM_KEYGUARD_CONFIGURED:I = -0x1a

.field public static final ERROR_UCM_MISSING_ARGUMENT:I = -0xb

.field public static final ERROR_UCM_PASSWORD_QUALITY_NOT_UNSPECIFIED:I = -0x1c

.field public static final ERROR_UCM_PASSWORD_UNSUPPORTED_STORAGE:I = -0x1b

.field public static final ERROR_UCM_STORAGE_ALREADY_CONFIGURED:I = -0xa

.field public static final ERROR_UCM_STORAGE_DELEGATION_NOT_ALLOWED:I = -0x1e

.field public static final ERROR_UCM_STORAGE_NOT_ENABLED:I = -0xc

.field public static final ERROR_UCM_STORAGE_NOT_MANAGEABLE:I = -0x16

.field public static final ERROR_UCM_STORAGE_NOT_VALID:I = -0xd

.field public static EVENT_PLUGIN_APPLET_DELETE_COMPLETED:I = 0x3f3

.field public static EVENT_PLUGIN_APPLET_DELETE_FAILED:I = 0x3f4

.field public static EVENT_PLUGIN_APPLET_INSTALL_COMPLETED:I = 0x3e9

.field public static EVENT_PLUGIN_APPLET_INSTALL_FAILED:I = 0x3ea

.field public static EVENT_PLUGIN_APPLET_UPDATE_COMPLETED:I = 0x3fd

.field public static EVENT_PLUGIN_APPLET_UPDATE_FAILED:I = 0x3fe

.field public static final EVENT_PLUGIN_LICENSE_EXPIRED:I = 0x2

.field public static final EVENT_PLUGIN_UNINSTALLED:I = 0x1

.field public static KEY_PLUGIN_EVENT:Ljava/lang/String; = "key_plugin_event"

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final RESET_APPLET_FORM_FACTOR:Ljava/lang/String; = "reset"

.field public static final SCP_SD:Ljava/lang/String; = "SCP_SD"

.field public static TAG:Ljava/lang/String; = "UniversalCredentialManager"

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_INSTALL:I = 0x6b

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_APPLET_DELETE:Ljava/lang/String; = "DELETE_APPLET"

.field public static final UCM_APPLET_ID:Ljava/lang/String; = "applet_id"

.field public static final UCM_APPLET_INSTALL_LOCATION:Ljava/lang/String; = "applet_location"

.field public static final UCM_APPLET_UPGRADE:Ljava/lang/String; = "UPGRADE_APPLET"

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_AUTH_TYPE_NONE:I = 0x69

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final UCM_STORAGE_OPTION_OUTSIDE:I = 0x66

.field public static final UCM_SUCCESS:I = 0x0

.field public static final UCM_SUCCESS_KEYGUARD_ALREADY_CONFIGURED:I = 0xa

.field public static final WIFI_VIRTUAL_PACKAGE:Ljava/lang/String; = "com.samsung.knox.virtual.wifi"

.field public static mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "UniversalCredentialStorageManager API ["

    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ","

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, "] "

    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 5

    const-string v0, "getUCMManager : Invalid user request userId-"

    const-class v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v1

    return-object v3

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6
    invoke-static {p0, v2}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v1

    return-object v3

    .line 9
    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;I)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 4

    const-string v0, "getUCMManager : Invalid user request userId-"

    const-class v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v2

    .line 11
    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 12
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v1

    return-object v3

    .line 14
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v1

    return-object v3

    .line 17
    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "knox_ucsm_policy"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
.end method

.method public static isValidUser(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "isValidUser userId-"

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :try_start_0
    const-string v2, "persona"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_0
    move v1, v0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "The exception occurs "

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "isValidUser status-"

    .line 60
    .line 61
    invoke-static {p1, v1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v1
.end method


# virtual methods
.method public final addPackagesToExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.addPackagesToExemptList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.addPackagesToExemptList is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "addPackagesToExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.addPackagesToExemptList getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p3, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final addPackagesToWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.addPackagesToWhiteList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.addPackagesToWhiteList is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "addPackagesToWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.addPackagesToWhiteList getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p3, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v0, "UniversalCredentialManager.addPackagesToWhiteListInternal"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "UniversalCredentialManager.addPackagesToWhiteListInternal is called...."

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, -0x1

    .line 26
    if-gez p0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "addPackagesToWhiteListInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    move v2, p1

    .line 45
    move v3, p2

    .line 46
    move-object v4, p3

    .line 47
    move-object v5, p4

    .line 48
    move-object v6, p5

    .line 49
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "UniversalCredentialStorageManager.addPackagesToWhiteListInternal getUCMService is null...."

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p3, "The exception occurs "

    .line 68
    .line 69
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return v0
.end method

.method public final changeKeyguardPin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.changeKeyguardPin"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.changeKeyguardPin is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->changeKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.changeKeyguardPin getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p3, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final clearWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.clearWhiteList is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "clearWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.clearWhiteList getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.configureCredentialStorageForODESettings is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, "UniversalCredentialStorageManager.configureCredentialStorageForODESettings getUCMService is null...."

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "The exception occurs "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final configureCredentialStoragePlugin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.configureCredentialStoragePlugin is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "configureCredentialStoragePlugin : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.configureCredentialStoragePlugin getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final deleteCACertificate(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.deleteCACertificate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.deleteCACertificate is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "deleteCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.deleteCACertificate getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final deleteCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.deleteCertificate is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "deleteCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.deleteCertificate getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v0, "UniversalCredentialManager.deleteCertificateInternal"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "UniversalCredentialManager.deleteCertificateInternal is called...."

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, -0x1

    .line 26
    if-gez p0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "deleteCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string p1, "UniversalCredentialStorageManager.deleteCertificateInternal getUCMService is null...."

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p3, "The exception occurs "

    .line 63
    .line 64
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return v0
.end method

.method public final enableCredentialStorageForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.enableCredentialStorageForLockType"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.enableCredentialStorageForLockType is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "enableCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.enableCredentialStorageForLockType getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage) is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage, Bundle)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage, Bundle) is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 9
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "enforceCredentialStorageAsLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    .line 12
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.enforceCredentialStorageAsLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public final getAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getAliases is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "getAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.getAliases getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final getAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getAuthType is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x69

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "getAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 39
    .line 40
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string p1, "UniversalCredentialStorageManager.getStorageOption getAuthType is null...."

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "The exception occurs "

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return v1
.end method

.method public final getAvailableCredentialStorages()[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getAvailableCredentialStorages is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "getAvailableCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "UniversalCredentialStorageManager.getAvailableCredentialStorages getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getCACertificate is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "getCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.getCACertificate getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final getCACertificateAliases(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getCACertificateAliases"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getCACertificateAliases is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "getCACertificateAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.getCACertificateAliases getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v1
.end method

.method public final getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getCredentialStoragePluginConfiguration"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UniversalCredentialManager.getCredentialStoragePluginConfiguration is called...."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "getCredentialStoragePluginConfiguration : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "UniversalCredentialStorageManager.getCredentialStoragePluginConfiguration getUCMService is null...."

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "The exception occurs "

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object v1
.end method

.method public final getCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getCredentialStorageProperty"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UniversalCredentialManager.getCredentialStorageProperty is called...."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "getPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "UniversalCredentialStorageManager.getStorageOption getCredentialStorageProperty is null...."

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "The exception occurs "

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object v1
.end method

.method public final getCredentialStorages(Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getCredentialStorages"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getCredentialStorages is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "getCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.getCredentialStorages getUCMService"

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v1
.end method

.method public final getDefaultInstallStorage()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getDefaultInstallStorage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getDefaultInstallStorage is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "getDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "UniversalCredentialStorageManager.getDefaultInstallStorage getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v1
.end method

.method public final getEnforcedCredentialStorageForLockType()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getEnforcedCredentialStorageForLockType is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "getEnforcedCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "UniversalCredentialStorageManager.getEnforcedCredentialStorageForLockType getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getKeyguardPinCurrentRetryCount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getKeyguardPinCurrentRetryCount is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinCurrentRetryCount getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumLength"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumLength is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMaximumLength getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumRetryCount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumRetryCount is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMaximumRetryCount getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getKeyguardPinMinimumLength"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.getKeyguardPinMinimumLength is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMinimumLength getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "IUniversalCredentialManager.getODESettingsConfiguration is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "UniversalCredentialManager.getODESettingsConfiguration getUCMService is null...."

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "The exception occurs "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final getPackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getPackagesFromExemptList"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UniversalCredentialManager.getPackagesFromExemptList is called...."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "getPackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "UniversalCredentialStorageManager.getPackagesFromExemptList getUCMService is null...."

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "The exception occurs "

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object v1
.end method

.method public final getPackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getPackagesFromWhiteList is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "getPackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.getPackagesFromWhiteList getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final getSupportedAlgorithms(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.getSupportedAlgorithms is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "getSupportedAlgorithms : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.getSupportedAlgorithms getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final initKeyguardPin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.initKeyguardPin"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.initKeyguardPin is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->initKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.initKeyguardPin getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p3, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final installCACertificate([BLjava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.installCACertificate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.installCACertificate is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "installCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.installCACertificate getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p3, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final installCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.installCertificate is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "installCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    move-object v4, p1

    .line 40
    move-object v5, p2

    .line 41
    move-object v6, p3

    .line 42
    move-object v7, p4

    .line 43
    move-object v8, p5

    .line 44
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string p1, "UniversalCredentialStorageManager.installCertificate getUCMService is null...."

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p3, "The exception occurs "

    .line 63
    .line 64
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return v1
.end method

.method public final installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 3
    .line 4
    const-string v1, "UniversalCredentialManager.installCertificateInternal"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UniversalCredentialManager.installCertificateInternal is called...."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, -0x1

    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "installCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 44
    .line 45
    move v3, p1

    .line 46
    move v4, p2

    .line 47
    move-object v5, p3

    .line 48
    move-object v6, p4

    .line 49
    move-object v7, p5

    .line 50
    move-object/from16 v8, p6

    .line 51
    .line 52
    move/from16 v9, p7

    .line 53
    .line 54
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "UniversalCredentialStorageManager.installCertificateInternal getUCMService is null...."

    .line 62
    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "The exception occurs "

    .line 73
    .line 74
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v3, v2}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return v1
.end method

.method public final isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.isCredentialStorageEnabledForLockType"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UniversalCredentialManager.isCredentialStorageEnabledForLockType is called...."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "isCredentialStorageEnabledForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "UniversalCredentialStorageManager.isCredentialStorageEnabledForLockType getUCMService is null...."

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "The exception occurs "

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return v1
.end method

.method public final isCredentialStorageLocked(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.isCredentialStorageLocked"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.isCredentialStorageLocked is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "isCredentialStorageLocked : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.getStorageOption isCredentialStorageLocked is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final isCredentialStorageManaged(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.isCredentialStorageManaged is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "isCredentialStorageManaged : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.isCredentialStorageManaged getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "checkSdkVersion : support above "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final lockCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.lockCredentialStorage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.lockCredentialStorage is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "lockCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.lockCredentialStorage getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final manageCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.manageCredentialStorage is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "manageCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.manageCredentialStorage getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final removePackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.removePackagesFromExemptList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.removePackagesFromExemptList is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "removePackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.removePackagesFromExemptList getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p3, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final removePackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.removePackagesFromWhiteList is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "removePackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.removePackagesFromWhiteList getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p3, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final setAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.setAuthType is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "setAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.setAuthType getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return v1
.end method

.method public final setCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.setCredentialStorageProperty is called...."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "setPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "UniversalCredentialStorageManager.setCredentialStorageProperty getUCMService is null...."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "The exception occurs "

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1
.end method

.method public final setDefaultInstallStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.setDefaultInstallStorage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.setDefaultInstallStorage is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "setDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "UniversalCredentialStorageManager.setDefaultInstallStorage getUCMService is null...."

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "The exception occurs "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return v1
.end method

.method public final setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumLength"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumLength is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMaximumLength getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumRetryCount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumRetryCount is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMaximumRetryCount getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method

.method public final setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "UniversalCredentialManager.setKeyguardPinMinimumLength"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "UniversalCredentialManager.setKeyguardPinMinimumLength is called...."

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMinimumLength getUCMService is null...."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "The exception occurs "

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method
