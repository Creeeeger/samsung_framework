.class public final Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final audioManagerWrapper$delegate:Lkotlin/Lazy;

.field private final editor$delegate:Lkotlin/Lazy;

.field private final preferences$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;-><init>(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->preferences$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance p1, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;-><init>(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->editor$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic access$getPreferences(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getPreferences()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSharedPreferences(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->editor$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->preferences$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/SharedPreferences;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    const-string p0, "VolumeController_preferences"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private final getStreamVolume(I)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamVolume(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final loadStreamVolume(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getPreferences()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    const v2, 0x3e99999a    # 0.3f

    .line 18
    .line 19
    .line 20
    mul-float/2addr v0, v2

    .line 21
    float-to-int v0, v0

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    return v0
.end method

.method private final saveStreamVolume(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final setMute(Ljava/lang/String;II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private final setRingerMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const-string v1, "Ringtone"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v1, "Notification"

    .line 19
    .line 20
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, "System"

    .line 29
    .line 30
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setRingerMode(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final setUnMuteStream(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->loadStreamVolume(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p2, p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setStreamVolume(III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private final showVolumePanel(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->adjustStreamVolume(III)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public isStreamMute()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isAllStreamMute()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setAllMute()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isAllStreamMute()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const-string v1, "VolumeAlreadyMute"

    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setRingerMode(I)V

    .line 22
    .line 23
    .line 24
    const-string v1, "Media"

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-direct {p0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setMute(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    const-string v1, "Bixby"

    .line 35
    .line 36
    const/16 v2, 0xb

    .line 37
    .line 38
    invoke-direct {p0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setMute(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->showVolumePanel(I)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 49
    .line 50
    const-string/jumbo v1, "success"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object p0
.end method

.method public final setAllUnMute()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isAllStreamMute()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 13
    .line 14
    const-string v0, "VolumeAlreadyUnMute"

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getRingerMode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setRingerMode(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const-string v0, "System"

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string v0, "Notification"

    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const-string v0, "Media"

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v0, "Bixby"

    .line 48
    .line 49
    const/16 v3, 0xb

    .line 50
    .line 51
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->showVolumePanel(I)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 58
    .line 59
    const-string/jumbo v0, "success"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object p0
.end method

.method public setMute(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setAllMute()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setAllUnMute()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method
