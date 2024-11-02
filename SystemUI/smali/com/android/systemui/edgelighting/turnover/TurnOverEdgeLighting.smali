.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

.field public mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

.field public mIsEnabled:Z

.field public mIsUpsideDown:I

.field public mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

.field public mRequestor:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

.field public final mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

.field public final mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final setEnable()V
    .locals 2

    .line 1
    const-string/jumbo v0, "setEnable: false"

    .line 2
    .line 3
    .line 4
    const-string v1, "TurnOverEdgeLighting"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final stopTurnOver()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onIdle()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
