.class public final Lcom/samsung/android/knox/restriction/RestrictionPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOW_SETTINGS_CHANGES_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ALLOW_SETTINGS_CHANGES_INTERNAL"

.field public static final ACTION_MTP_DISABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

.field public static final ACTION_UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

.field public static final ACTION_UPDATE_FOTA_VERSION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_FOTA_VERSION_RESULT"

.field public static final ERROR_UPDATE_FOTA_ENABLED_BY_OTHER_ADMIN:I = 0x2

.field public static final ERROR_UPDATE_FOTA_INVALID_PARAMETER:I = 0x3

.field public static final ERROR_UPDATE_FOTA_NONE:I = 0x0

.field public static final ERROR_UPDATE_FOTA_UNKNOWN:I = 0x4

.field public static final ERROR_UPDATE_FOTA_UNKNOWN_SERVER:I = 0x1

.field public static final EXTERNAL_STORAGE_PATH_SD:Ljava/lang/String; = "/storage/extSdCard"

.field public static final EXTRA_UPDATE_FOTA_VERSION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.UPDATE_FOTA_VERSION_STATUS"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final KC_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final LOCKSCREEN_MULTIPLE_WIDGET_VIEW:I = 0x1

.field public static final LOCKSCREEN_SHORTCUTS_VIEW:I = 0x2

.field public static final PERMISSION_KNOX_MTP_DISABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MTP_DISABLED_INTERNAL"

.field public static final STATUS_UPDATE_FOTA_ALREADY_LATEST_VERSION:I = 0x6

.field public static final STATUS_UPDATE_FOTA_FAILURE:I = 0x8

.field public static final STATUS_UPDATE_FOTA_PROCESSING:I = 0x7

.field public static final STATUS_UPDATE_FOTA_SUCCESS:I = 0x5

.field public static final SVOICE_PACKAGE1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final SVOICE_PACKAGE2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field public static TAG:Ljava/lang/String; = "RestrictionPolicy"

.field public static final TASK_MANAGER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static final UPDATE_FOTA_CORPID:Ljava/lang/String; = "update_fota_corpid"

.field public static final USB_HOST_STORAGE_PATH:Ljava/lang/String; = "/storage/UsbDrive"

.field public static final WEARABLE_GEAR_DEVICE:I = 0x1

.field public static final settingsExceptions:[Ljava/lang/String;


# instance fields
.field public mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    const-string v0, "com.android.settings.FallbackHome"

    .line 2
    .line 3
    const-string v1, "com.android.settings.ActivityPicker"

    .line 4
    .line 5
    const-string v2, "com.android.settings.AppWidgetPickActivity"

    .line 6
    .line 7
    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    .line 8
    .line 9
    const-string v4, "com.android.settings.CryptKeeper"

    .line 10
    .line 11
    const-string v5, "com.android.settings.CryptKeeperConfirm"

    .line 12
    .line 13
    const-string v6, "com.android.settings.CryptKeeperSettings"

    .line 14
    .line 15
    const-string v7, "com.android.settings.ChooseLockAdditionalPin"

    .line 16
    .line 17
    const-string v8, "com.android.settings.ChooseLockFaceWarning"

    .line 18
    .line 19
    const-string v9, "com.android.settings.password.ChooseLockGeneric"

    .line 20
    .line 21
    const-string v10, "com.android.settings.ChooseLockMotion"

    .line 22
    .line 23
    const-string v11, "com.android.settings.password.ChooseLockPassword"

    .line 24
    .line 25
    const-string v12, "com.android.settings.password.ChooseLockPattern"

    .line 26
    .line 27
    const-string v13, "com.android.settings.password.ConfirmLockPassword"

    .line 28
    .line 29
    const-string v14, "com.android.settings.password.ConfirmLockPattern"

    .line 30
    .line 31
    const-string v15, "com.android.settings.DeviceAdminAdd"

    .line 32
    .line 33
    const-string v16, "com.android.settings.bluetooth.DevicePickerActivity"

    .line 34
    .line 35
    const-string v17, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    .line 36
    .line 37
    const-string v18, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    .line 38
    .line 39
    const-string v19, "com.android.settings.wfd.WfdPickerActivity"

    .line 40
    .line 41
    const-string v20, "com.android.settings.bluetooth.BluetoothPairingDialog"

    .line 42
    .line 43
    const-string v21, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    .line 44
    .line 45
    const-string v22, "com.android.settings.bluetooth.BluetoothEnableActivity"

    .line 46
    .line 47
    const-string v23, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    .line 48
    .line 49
    const-string v24, "com.android.settings.fingerprint.FingerprintLockSettings"

    .line 50
    .line 51
    const-string v25, "com.android.settings.fingerprint.RegisterFingerprint"

    .line 52
    .line 53
    const-string v26, "com.android.settings.KnoxSetLockFingerprintPassword"

    .line 54
    .line 55
    const-string v27, "com.android.settings.KnoxChooseLockFingerprintPassword"

    .line 56
    .line 57
    const-string v28, "com.android.settings.notification.RedactionInterstitial"

    .line 58
    .line 59
    const-string v29, "com.android.settings.KnoxFingerprintNotice"

    .line 60
    .line 61
    const-string v30, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    .line 62
    .line 63
    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .line 68
    .line 69
    new-instance v0, Landroid/content/ComponentName;

    .line 70
    .line 71
    const-string v1, "com.sec.knox.kccagent"

    .line 72
    .line 73
    const-string v2, "com.sec.knox.kccc.agent.receiver.KCCCAdminReceiver"

    .line 74
    .line 75
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->KC_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final addAllowedFOTAVersions(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final allowAirplaneMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowAirplaneMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowAndroidBeam(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "RestrictionPolicy.allowAndroidBeam"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method

.method public final allowAudioRecord(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowAudioRecord"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowBackgroundProcessLimit(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowBackgroundProcessLimit"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowBluetooth(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowBluetooth"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "Failed talking with bluetooth policy"

    .line 29
    .line 30
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final allowClipboardShare(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "allowClipboardShare"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "RestrictionPolicy.allowClipboardShare"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with restriction policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final allowDataSaving(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowDataSaving"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowDeveloperMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowDeveloperMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowFactoryReset(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "allowFactoryReset"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "RestrictionPolicy.allowFactoryReset"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with misc info policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final allowFastEncryption(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowFastEncryption"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowFirmwareRecovery(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowFirmwareRecovery"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowGoogleAccountsAutoSync(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "allowGoogleAccountsAutoSync"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "RestrictionPolicy.allowGoogleAccountsAutoSync"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with restriction policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final allowGoogleCrashReport(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowGoogleCrashReport"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with security policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowKillingActivitiesOnLeave(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowKillingActivitiesOnLeave"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowLockScreenView(IZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowLockScreenView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowOTAUpgrade(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowOTAUpgrade"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowPowerOff(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "allowPowerOff"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "RestrictionPolicy.allowPowerOff"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with restriction policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final allowPowerSavingMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowPowerSavingMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowSBeam(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "RestrictionPolicy.allowSBeam"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method

.method public final allowSDCardMove(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowSDCardMove"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowSDCardWrite(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowSDCardWrite"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with security policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowSVoice(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowSVoice"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowSafeMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowSafeMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowScreenPinning(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowScreenPinning"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 15
    .line 16
    const/16 v1, 0xe

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "Failed talking with restriction policy"

    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final allowSettingsChanges(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowSettingsChanges"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowShareList(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowShareList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowSmartClipMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowSmartClipMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowStatusBarExpansion(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowStatusBarExpansion"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowStopSystemApp(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowStopSystemApp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowUWB(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "RestrictionPolicy.allowUWB"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final allowUsbHostStorage(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowUsbHostStorage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowUserMobileDataLimit(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowUserMobileDataLimit"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowVideoRecord(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowVideoRecord"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowVpn(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowVpn"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowWallpaperChange(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowWallpaperChange"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final allowWiFi(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowWiFi"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "Failed talking with allowWiFi"

    .line 29
    .line 30
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final allowWifiDirect(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.allowWifiDirect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final checkIfRestrictionWasSetByKC(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkIfRestrictionWasSetByKC(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "Failed talking with restriction policy"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    return v1
.end method

.method public final enableWearablePolicy(IZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.enableWearablePolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

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
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "enableWearablePolicy : support above ENTERPRISE_SDK_VERSION_5_6"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return p0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string p2, "Failed talking with restriction policy"

    .line 48
    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    return v1
.end method

.method public final getAllowedFOTAInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "getAllowedFOTAInfo(secedm)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "getAllowedFOTAInfo(secedm) : servie is null"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final getAllowedFOTAVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "getAllowedFOTAVersion : support above ENTERPRISE_SDK_VERSION_5_7"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "Failed talking with restriction policy"

    .line 41
    .line 42
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object v1
.end method

.method public final getAllowedFOTAVersions()Ljava/util/List;
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
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "bluetooth_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mBluetoothPolicyService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getKcActionDisabledText()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getKcActionDisabledText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "Failed talking with restriction policy"

    .line 19
    .line 20
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v1
.end method

.method public final getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "restriction_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getUsbExceptionList()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getUsbExceptionList()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Failed talking with restriction policy"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "wifi_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mWifiPolicyService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isAirplaneModeAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isAirplaneModeAllowed(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isAndroidBeamAllowed()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final isAndroidBeamAllowed(Z)Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public final isAudioRecordAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isAudioRecordAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isBackgroundDataEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isBackgroundProcessLimitAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isBackupAllowed(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "isBackupAllowed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final isBluetoothEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getBluetoothPolicyService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with bluetooth policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isBluetoothTetheringEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isCameraEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with device info policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isCellularDataAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isClipboardAllowed(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "isClipboardAllowed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final isClipboardAllowedAsUser(ZI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p2, "Failed talking with misc policy"

    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isClipboardShareAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "isClipboardShareAllowed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final isClipboardShareAllowedAsUser(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Failed talking with restriction policy"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isDataSavingAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDataSavingAllowed()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Failed talking with restriction policy"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isDeveloperModeAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isDeveloperModeAllowed(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isFOTAVersionAllowed(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isFactoryResetAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "isFactoryResetAllowed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final isFastEncryptionAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final isFirmwareRecoveryAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isGoogleAccountsAutoSyncAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "isGoogleAccountsAutoSyncAllowed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Failed talking with restriction policy"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isGoogleCrashReportAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with security policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isGoogleCrashReportAllowedAsUser(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Failed talking with security policy"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isHeadphoneEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isHomeKeyEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public final isHomeKeyEnabled(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isIrisCameraEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isKillingActivitiesOnLeaveAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isLockScreenEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isLockScreenViewAllowed(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isMicrophoneEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isMockLocationEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isNonMarketAppAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isOTAUpgradeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isPowerOffAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isPowerOffAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isPowerOffAllowed(Z)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isPowerOffAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isPowerSavingModeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isSBeamAllowed()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final isSBeamAllowed(Z)Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public final isSDCardMoveAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isSDCardWriteAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with security policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isSVoiceAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isSVoiceAllowed(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSafeModeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isScreenCaptureEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isScreenCaptureEnabledInternal(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Failed talking with misc policy"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isScreenPinningAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "Failed talking with restriction policy"

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final isSdCardEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isSettingsChangesAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isShareListAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isShareListAllowed(Z)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isShareListAllowedAsUser(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p2, "Failed talking with restriction policy"

    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isSmartClipModeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSmartClipModeAllowed(Z)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isStatusBarExpansionAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isStatusBarExpansionAllowed(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isStopSystemAppAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isTetheringEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isUWBAllowed()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isUsbDebuggingEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isUsbHostStorageAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isUsbHostStorageAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUsbMediaPlayerAvailable(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isUsbTetheringEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isUseSecureKeypadEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 25
    .line 26
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 27
    .line 28
    if-lez p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isUserMobileDataLimitAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isVideoRecordAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isVideoRecordAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isVideoRecordAllowed(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isVpnAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with restriction policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isWallpaperChangeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with restriction info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isWallpaperChangeAllowed(Z)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isWearablePolicyEnabled(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "isWearablePolicyEnabled : support above ENTERPRISE_SDK_VERSION_5_6"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "Failed talking with restriction policy"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    return v1
.end method

.method public final isWiFiEnabled(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getWifiPolicyService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 12
    .line 13
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "Failed talking with isWiFiEnabled"

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final isWifiDirectAllowed()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public final isWifiDirectAllowed(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isWifiTetheringEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with misc policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final removeAllowedFOTAVersions(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setAllowNonMarketApps(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setAllowNonMarketApps"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setAllowedFOTAVersion(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setAllowedFOTAVersion"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "setSelectiveFota : support above ENTERPRISE_SDK_VERSION_5_7"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 39
    .line 40
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p2, "Failed talking with restriction policy"

    .line 49
    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return v1
.end method

.method public final setBackgroundData(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setBackgroundData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setBackup(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "setBackup"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "RestrictionPolicy.setBackup"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with misc info policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final setBluetoothTethering(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setBluetoothTethering"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setCameraState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setCameraState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setCellularData(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setCellularData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setClipboardEnabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "setClipboardEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "RestrictionPolicy.setClipboardEnabled"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Failed talking with misc info policy"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final setHeadphoneState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setHeadphoneState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setHomeKeyState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setHomeKeyState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setIrisCameraState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setIrisCameraState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setLockScreenState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy. setLockScreenState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setMicrophoneState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setMicrophoneState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setMockLocation(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setMockLocation"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setScreenCapture(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setScreenCapture"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setSdCardState(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setSdCardState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setTethering(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setTethering"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setUsbDebuggingEnabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setUsbDebuggingEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setUsbExceptionList(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setUSBExceptionList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setUsbMediaPlayerAvailability(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setUsbMediaPlayerAvailability"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc info policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setUsbTethering(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setUsbTethering"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setUseSecureKeypad(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setUseSecureKeypad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with restriction policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setWifiTethering(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "RestrictionPolicy.setWifiTethering"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with misc policy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
