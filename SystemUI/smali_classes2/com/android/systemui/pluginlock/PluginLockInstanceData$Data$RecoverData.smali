.class public final Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mClock:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock"
    .end annotation
.end field

.field private mClockState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_state"
    .end annotation
.end field

.field private mNotificationBackup:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_visibility"
    .end annotation
.end field

.field private mNotificationBackupType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_origin"
    .end annotation
.end field

.field private mNotificationState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification"
    .end annotation
.end field

.field private mShortcut:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut"
    .end annotation
.end field

.field private mShortcutState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_state"
    .end annotation
.end field

.field private mWallpaperDynamic:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_dynamic"
    .end annotation
.end field

.field private mWallpaperDynamicSub:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_dynamic_sub"
    .end annotation
.end field

.field private mWallpaperSource:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_source"
    .end annotation
.end field

.field private mWallpaperSourceSub:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_source_sub"
    .end annotation
.end field

.field private mWallpaperType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_type"
    .end annotation
.end field

.field private mWallpaperTypeSub:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_type_sub"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    .line 18
    .line 19
    const/4 v1, -0x2

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final getClock()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getClockState()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getNotificationBackupType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getNotificationBackupVisibility()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getNotificationState()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getShortcutBackupValue()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getShortcutState()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    return-object p0
.end method

.method public final getWallpaperSource(I)Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    return-object p0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez p0, :cond_2

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_2
    return-object p0
.end method

.method public final getWallpaperType(I)Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    return-object p0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez p0, :cond_2

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_2
    return-object p0
.end method

.method public final setClock(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public final setClockState(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public final setNotificationBackupType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotificationBackupVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setNotificationState(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public final setShortcutBackup(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public final setShortcutState(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public final setWallpaperDynamic(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    return-void
.end method

.method public final setWallpaperDynamic(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public final setWallpaperSource()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    .line 2
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    return-void
.end method

.method public final setWallpaperSource(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public final setWallpaperType()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    .line 2
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    return-void
.end method

.method public final setWallpaperType(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, "]"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
