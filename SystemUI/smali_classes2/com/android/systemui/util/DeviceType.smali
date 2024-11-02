.class public final Lcom/android/systemui/util/DeviceType;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static debugLevel:I = -0x1

.field public static mIsSupport5G:Z = false

.field public static mIsSupport5GChecked:Z = false

.field public static sCachedEngOrUTBinary:I = -0x1

.field public static sRpCount:I = -0x2

.field public static supportCover:I = -0x1

.field public static supportDeadzone:I = -0x1

.field public static supportESim:I = -0x1

.field public static supportFBE:I = -0x1

.field public static supportInDisplayFingerprint:I = -0x1

.field public static supportLightReveal:I = -0x1

.field public static supportLightSensor:I = -0x1

.field public static supportMultiSIM:I = -0x1

.field public static supportOpticalFingerprint:I = -0x1

.field public static supportPenDetachmentOption:Ljava/lang/Boolean; = null

.field public static supportSEPLite:I = -0x1

.field public static supportTablet:I = -0x1

.field public static supportVibrator:I = -0x1

.field public static supportWeaver:I = -0x1

.field public static supportWifiOnly:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "mdc.sys.enable_smff"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    const-string v0, "mdc.singlesku"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    const-string v0, "mdc.unified"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugLevel()I
    .locals 3

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_4

    .line 5
    .line 6
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 7
    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string/jumbo v0, "ro.debug_level"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const-string v1, "0x4f4c"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v1, "0x494d"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string v1, "0x4948"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 68
    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 69
    .line 70
    :cond_4
    :goto_1
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 71
    .line 72
    return v0
.end method

.method public static isCoverSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "com.sec.feature.cover"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    .line 23
    .line 24
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method public static isEngOrUTBinary()Z
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gez v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string/jumbo v0, "persist.log.seclevel"

    .line 14
    .line 15
    .line 16
    const-string v3, "0"

    .line 17
    .line 18
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v3, "1"

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v0, v1

    .line 34
    :goto_1
    sput v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    .line 35
    .line 36
    :cond_2
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    .line 37
    .line 38
    if-lez v0, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move v1, v2

    .line 42
    :goto_2
    return v1
.end method

.method public static isFbeSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Landroid/os/storage/StorageManager;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    .line 27
    .line 28
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1
.end method

.method public static isLDUSKU()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "ril.product_code"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0xb

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v4, 0x38

    .line 27
    .line 28
    if-eq v2, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x39

    .line 35
    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    :cond_1
    const/4 v3, 0x1

    .line 39
    :cond_2
    return v3
.end method

.method public static isLightSensorSupported(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    if-ne v0, v3, :cond_3

    .line 7
    .line 8
    const-string/jumbo v0, "sensor"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/hardware/SensorManager;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    move v3, v1

    .line 26
    :goto_0
    if-ge v3, v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/hardware/Sensor;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x5

    .line 39
    if-eq v4, v5, :cond_1

    .line 40
    .line 41
    const v5, 0x10044

    .line 42
    .line 43
    .line 44
    if-ne v4, v5, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    sput v2, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    .line 51
    .line 52
    return v2

    .line 53
    :cond_2
    sput v1, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    .line 54
    .line 55
    :cond_3
    sget p0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    .line 56
    .line 57
    if-ne p0, v2, :cond_4

    .line 58
    .line 59
    move v1, v2

    .line 60
    :cond_4
    return v1
.end method

.method public static isMultiSimSupported()Z
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-le v0, v3, :cond_0

    .line 17
    .line 18
    move v0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    sput v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    .line 22
    .line 23
    :cond_1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    .line 24
    .line 25
    if-ne v0, v3, :cond_2

    .line 26
    .line 27
    move v2, v3

    .line 28
    :cond_2
    return v2
.end method

.method public static isShipBuild()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.product_ship"

    .line 2
    .line 3
    .line 4
    const-string v1, "false"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "true"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static isSupportESim()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportESim:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "android.hardware.telephony.euicc"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Lcom/android/systemui/util/DeviceType;->supportESim:I

    .line 23
    .line 24
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportESim:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method public static isSupportPenDetachmentOption(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "com.sec.feature.spen_usp"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sput-object p0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    sget-object p0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public static isTablet()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "ro.build.characteristics"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "phone"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "tablet"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 24
    .line 25
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1
.end method

.method public static isVibratorSupported(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "vibrator"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/os/Vibrator;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    move p0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v2

    .line 28
    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    .line 29
    .line 30
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    .line 31
    .line 32
    if-ne p0, v3, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_2
    return v2
.end method

.method public static isWeaverDevice()Z
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "security.securehw.available"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "isWeaverDevice : "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget v1, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    .line 24
    .line 25
    const-string v3, "DeviceType"

    .line 26
    .line 27
    invoke-static {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    move v2, v1

    .line 36
    :cond_1
    return v2
.end method

.method public static isWiFiOnlyDevice()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "ro.carrier"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "unknown"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "wifi-only"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    .line 24
    .line 25
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1
.end method
