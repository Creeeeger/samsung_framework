.class public final Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mediaSessionManager$delegate:Lkotlin/Lazy;

.field private playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

.field private remoteController:Landroid/media/session/MediaController;

.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController$mediaSessionManager$2;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController$mediaSessionManager$2;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->mediaSessionManager$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    const-string p1, "Media"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private final getActiveSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->mediaSessionManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/media/session/MediaSessionManager;

    .line 8
    .line 9
    return-object p0
.end method

.method private final isRemotePlayerActive()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->getActiveSessions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v4, v1

    .line 22
    check-cast v4, Landroid/media/session/MediaController;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x2

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    move v4, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v4, v3

    .line 40
    :goto_0
    if-eqz v4, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_1
    check-cast v1, Landroid/media/session/MediaController;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->remoteController:Landroid/media/session/MediaController;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :cond_3
    return v3
.end method


# virtual methods
.method public getMaxVolume()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    return p0
.end method

.method public getMinVolume()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    return p0
.end method

.method public getStreamType()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVolume()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    return p0
.end method

.method public setStreamVolume(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->remoteController:Landroid/media/session/MediaController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setStreamVolume(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
