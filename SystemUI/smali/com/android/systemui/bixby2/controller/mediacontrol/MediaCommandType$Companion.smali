.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;ILcom/android/systemui/bixby2/util/MediaModeInfoBixby;Lcom/android/systemui/bixby2/util/AudioManagerWrapper;Landroid/media/session/MediaSessionManager;)Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setMediaInfo(Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p5}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setMediaSessionManager(Landroid/media/session/MediaSessionManager;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isInCall()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/InCallCaseController;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/InCallCaseController;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getActiveSession()Landroid/media/session/MediaController;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;

    .line 29
    .line 30
    invoke-direct {p0, p2}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;-><init>(I)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setMediaController(Landroid/media/session/MediaController;)V

    .line 35
    .line 36
    .line 37
    packed-switch p2, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/InvalidActionController;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/InvalidActionController;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/SeekToController;

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/SeekToController;-><init>()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_2
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/RewindController;

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/RewindController;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_3
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/FastForwardController;

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/FastForwardController;-><init>()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_4
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;-><init>()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_5
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/SkipController;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/SkipController;-><init>()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_6
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/ReplayController;

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/ReplayController;-><init>()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_7
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;-><init>()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_8
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayController;

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayController;-><init>()V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-object p0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getActiveSession()Landroid/media/session/MediaController;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

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
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/media/session/MediaController;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "com.samsung.android.audiomirroring"

    .line 30
    .line 31
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x2

    .line 42
    if-lt v1, v3, :cond_0

    .line 43
    .line 44
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/media/session/MediaController;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Landroid/media/session/MediaController;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_1
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaInfo:Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final isMediaControlActive(Z)Z
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;->INSTANCE:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaInfo(Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaInfo:Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSessionManager(Landroid/media/session/MediaSessionManager;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2
    .line 3
    return-void
.end method
