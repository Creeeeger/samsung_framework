.class public abstract Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

.field public static final TAG:Ljava/lang/String; = "VolumeController"

.field private static audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

.field private static context:Landroid/content/Context;

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static notificationManager:Landroid/app/NotificationManager;

.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private final status:I

.field private final statusCode:Ljava/lang/String;

.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->status:I

    .line 6
    .line 7
    const-string/jumbo v0, "success"

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->statusCode:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->streamTypeToString:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getPreferences$cp()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->preferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setAudioManagerWrapper$cp(Lcom/android/systemui/bixby2/util/AudioManagerWrapper;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setContext$cp(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setEditor$cp(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->editor:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNotificationManager$cp(Landroid/app/NotificationManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->notificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPreferences$cp(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->preferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-void
.end method

.method private final getAlreadySetResponse(I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 9
    .line 10
    const-string p1, "VolumeAlreadyMaximum"

    .line 11
    .line 12
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p1, p0, :cond_1

    .line 21
    .line 22
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 23
    .line 24
    const-string p1, "VolumeAlreadyMinimum"

    .line 25
    .line 26
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 31
    .line 32
    const-string p1, "already_set"

    .line 33
    .line 34
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object p0
.end method

.method private final getMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const-string v1, "VolumeAlreadyMute"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    return-object p0
.end method

.method public static synthetic getStreamTypeToString$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getUnMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const-string v1, "VolumeAlreadyUnMute"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->loadVolume()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x5

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    return-object p0
.end method

.method private final isAllSoundOff()Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->context:Landroid/content/Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "all_sound_off"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    move p0, v1

    .line 21
    :catch_0
    :cond_1
    return p0
.end method

.method private final loadVolume()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->preferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamTypeToString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamTypeToString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    const v2, 0x3e99999a    # 0.3f

    .line 27
    .line 28
    .line 29
    mul-float/2addr v0, v2

    .line 30
    float-to-int v0, v0

    .line 31
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->saveVolume(I)V

    .line 32
    .line 33
    .line 34
    return v0
.end method

.method private final saveVolume(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->editor:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamTypeToString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final volumeStreamAllowedByDnd()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method public getMaxVolume()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamMaxVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getMinVolume()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamMinVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public getRingerMode()I
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getRingerMode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->status:I

    .line 2
    .line 3
    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->statusCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->streamTypeToString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVolume()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public isStreamDisabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isStreamMute()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne v0, p0, :cond_0

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

.method public isVoiceCapable()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->shouldShowRingtoneVolume()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isVolumeStateValid(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isAllSoundOff()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 9
    .line 10
    const-string p1, "AllSoundMuteOn"

    .line 11
    .line 12
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->volumeStreamAllowedByDnd()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 23
    .line 24
    const-string p1, "DoNotDisturbModeOn"

    .line 25
    .line 26
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamDisabled()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 39
    .line 40
    const-string p1, "SilentModeOn"

    .line 41
    .line 42
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    const-string/jumbo v0, "success"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public setMute(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getUnMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method

.method public setStreamVolume(II)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->saveVolume(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setStreamVolume(III)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatusCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVolumeStateValid(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    iget v0, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, p1, :cond_1

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getAlreadySetResponse(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setStreamVolume(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-object p3
.end method

.method public volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    .line 4
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
