.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;

.field private static final INVALID_POSITION:J = -0x1L

.field public static final NETFLIX_CUSTOM_ACTION:Ljava/lang/String; = "customActionSeek"

.field private static final NETFLIX_PACKAGE_NAME:Ljava/lang/String; = "com.netflix.mediaclient"

.field public static final OFFSET:Ljava/lang/String; = "offset"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getPosition()J
    .locals 2

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    :goto_0
    return-wide v0
.end method

.method private final isNetflixController()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "com.netflix.mediaclient"

    .line 12
    .line 13
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private final sendCustomAction()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-wide v1, v1, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    .line 13
    .line 14
    long-to-int v1, v1

    .line 15
    const-string/jumbo v2, "offset"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "customActionSeek"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    const-string/jumbo v1, "success"

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isPlayingOrFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->isNetflixController()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->sendCustomAction()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->getPosition()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, -0x1

    .line 24
    .line 25
    cmp-long v0, v2, v4

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-wide v0, v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    .line 36
    .line 37
    add-long/2addr v2, v0

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->seekTo(J)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 44
    .line 45
    const-string v0, "NoSupportFeature"

    .line 46
    .line 47
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-object p0

    .line 51
    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 52
    .line 53
    const-string v0, "MediaNotPlaying"

    .line 54
    .line 55
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method
