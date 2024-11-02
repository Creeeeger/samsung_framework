.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    return-void
.end method


# virtual methods
.method public final getMode()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isNeedTurnOverChecker()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v0, "isNeedTurnOverChecker: not enabled"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mRequestor:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v0, "isNeedTurnOverChecker: not support screen on"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    const-string v0, "isNeedTurnOverChecker: not support in cover closed"

    .line 39
    .line 40
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    sget v1, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v0, v2

    .line 64
    :goto_0
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const-string v0, "isNeedTurnOverChecker: not support desktop mode"

    .line 67
    .line 68
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return v2

    .line 72
    :cond_4
    return v1
.end method

.method public final onChangedUpdown(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "onChangedUpdown: "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "Device don\'t support position sensor type."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->isNeedTurnOverChecker()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->run(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-object p0
.end method

.method public final onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onRinging"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->isNeedTurnOverChecker()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->run(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    return-object p0
.end method

.method public final onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onRingingEnd"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
