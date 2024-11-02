.class public final Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SETTING_DEVELOPER_RSSI:[I

.field public static final SETTING_DEVELOPER_RSSI_5G:[I


# instance fields
.field public final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field public final DISPLAY_SSID_STATUS_BAR_INFO:Z

.field public final mContext:Landroid/content/Context;

.field public final mIsDeveloperOptionOn:Z

.field public mWeakSignalRssi:I

.field public mWeakSignalRssi5Ghz:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, -0x49

    .line 2
    .line 3
    const/16 v1, -0x4e

    .line 4
    .line 5
    const/16 v2, -0x7f

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI:[I

    .line 12
    .line 13
    const/16 v0, -0x46

    .line 14
    .line 15
    const/16 v1, -0x4b

    .line 16
    .line 17
    filled-new-array {v0, v1, v2}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI_5G:[I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "VZW"

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->readSalesCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    .line 15
    .line 16
    const-string v0, "ro.csc.sales_code"

    .line 17
    .line 18
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "SWC"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mIsDeveloperOptionOn:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->updateRssiFilter()V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final updateRssiFilter()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mIsDeveloperOptionOn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "sec_wifi_developer_rssi_level"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI:[I

    .line 21
    .line 22
    aget v1, v1, v0

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    .line 25
    .line 26
    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI_5G:[I

    .line 27
    .line 28
    aget v0, v1, v0

    .line 29
    .line 30
    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v0, -0x4e

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    .line 36
    .line 37
    const/16 v0, -0x4b

    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    .line 40
    .line 41
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "mWeakSignalRssi: "

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mWeakSignalRssi5Ghz: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    .line 59
    .line 60
    const-string v1, "SemWifiEntryFilter"

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
