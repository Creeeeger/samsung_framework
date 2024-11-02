.class public final Lcom/android/systemui/pluginlock/model/DynamicLockData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field VERSION:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field landscapeAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "landscape_available"
    .end annotation
.end field

.field private mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capture_info"
    .end annotation
.end field

.field private mCustomShortcut:Lcom/android/systemui/pluginlock/model/CustomShortcut;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_shortcut"
    .end annotation
.end field

.field private mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finger_print_info"
    .end annotation
.end field

.field private mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indication_info"
    .end annotation
.end field

.field private mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "music_info"
    .end annotation
.end field

.field private mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_swipe_info"
    .end annotation
.end field

.field private mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_info"
    .end annotation
.end field

.field private mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_info"
    .end annotation
.end field

.field private mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
    .end annotation
.end field

.field private mStatusBarIconVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_bar_icon_visibility"
    .end annotation
.end field

.field private mStatusBarNetworkVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_bar_network_visibility"
    .end annotation
.end field

.field private mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_info"
    .end annotation
.end field

.field private origin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "origin"
    .end annotation
.end field

.field portraitAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portrait_available"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->VERSION:Ljava/lang/Integer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    .line 17
    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->portraitAvailable:Ljava/lang/Boolean;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->landscapeAvailable:Ljava/lang/Boolean;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    .line 32
    .line 33
    return-void
.end method

.method public static fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getCaptureData()Lcom/android/systemui/pluginlock/model/CaptureData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/CaptureData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getFingerPrintData()Lcom/android/systemui/pluginlock/model/FingerPrintData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/FingerPrintData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/MusicData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/MusicData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/ShortcutData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/WallpaperData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final isDlsData()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isLandscapeAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->landscapeAvailable:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPortraitAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->portraitAvailable:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isStatusBarIconVisible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    return p0
.end method

.method public final isStatusBarNetworkVisible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    return p0
.end method
