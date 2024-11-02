.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;
    }
.end annotation


# static fields
.field private static final CHINESE_APP_LIST:[Ljava/lang/String;

.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;

.field private static final LIMIT_PREV_MOVE:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "MediaCommand.PreviousController"


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;

    .line 8
    .line 9
    const-string v2, "com.kugou.android"

    .line 10
    .line 11
    const-string v3, "com.netease.cloudmusic"

    .line 12
    .line 13
    const-string v4, "com.ximalaya.ting.android"

    .line 14
    .line 15
    const-string v5, "fm.xiami.main"

    .line 16
    .line 17
    const-string v6, "com.tencent.qqmusic"

    .line 18
    .line 19
    const-string v7, "fm.qingting.qtradio"

    .line 20
    .line 21
    const-string v8, "cn.kuwo.player"

    .line 22
    .line 23
    const-string v9, "cmccwm.mobilemusic"

    .line 24
    .line 25
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->CHINESE_APP_LIST:[Ljava/lang/String;

    .line 30
    .line 31
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

.method private final isChineseApp(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->CHINESE_APP_LIST:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private final isPositionWithIn5sec()Z
    .locals 4

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
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    :goto_0
    const-wide/16 v2, 0x1388

    .line 21
    .line 22
    cmp-long p0, v0, v2

    .line 23
    .line 24
    if-gez p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string p0, "MediaCommand.PreviousController"

    .line 29
    .line 30
    const-string/jumbo v0, "position has passed 5 seconds."

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    :goto_1
    return p0
.end method

.method private final shouldSendPreviousEventOnce()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->isChineseApp(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->isPositionWithIn5sec()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isMusicAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->shouldSendPreviousEventOnce()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x58

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const-string/jumbo v1, "success"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    const-string v1, "NoMediaExists"

    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-object p0
.end method
