.class public final Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static isShowBandSummaryOn:I = -0x1

.field public static isWifiDeveloperOptionOn:I = -0x1

.field public static isWpa3OweSupported:I = -0x1

.field public static isWpa3SaeSupported:I = -0x1

.field public static isWpa3SuiteBSupported:I = -0x1

.field public static sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field public has6EStandard:Z

.field public hasVHTVSICapabilities:Z

.field public isCarrierNetwork:Z

.field public isOpenRoamingNetwork:Z

.field public isSamsungMobileHotspot:Z

.field public networkScoringUiEnabled:Z

.field public networkType:I

.field public passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final qosScoredNetworkCache:Ljava/util/Map;

.field public semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field public staCount:I

.field public wifiStandard:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->qosScoredNetworkCache:Ljava/util/Map;

    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "getOpBranding: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SemWifiEntryFlags"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 41
    .line 42
    return-object v0
.end method

.method public static isShowBandInfoOn(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

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
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "sec_wifi_developer_show_band"

    .line 15
    .line 16
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p0, v3, :cond_0

    .line 21
    .line 22
    move p0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v2

    .line 25
    :goto_0
    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

    .line 26
    .line 27
    :cond_1
    sget p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

    .line 28
    .line 29
    if-ne p0, v3, :cond_2

    .line 30
    .line 31
    move v2, v3

    .line 32
    :cond_2
    return v2
.end method

.method public static isWifiDeveloperOptionOn(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

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
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "sem_wifi_developer_option_visible"

    .line 15
    .line 16
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p0, v3, :cond_0

    .line 21
    .line 22
    move p0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v2

    .line 25
    :goto_0
    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

    .line 26
    .line 27
    :cond_1
    sget p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

    .line 28
    .line 29
    if-ne p0, v3, :cond_2

    .line 30
    .line 31
    move v2, v3

    .line 32
    :cond_2
    return v2
.end method
