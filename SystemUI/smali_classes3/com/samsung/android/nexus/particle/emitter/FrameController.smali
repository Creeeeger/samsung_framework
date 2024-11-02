.class public final Lcom/samsung/android/nexus/particle/emitter/FrameController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCheckInterval:I

.field public final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public mCurFrameRate:I

.field public final mFrameDownStepFrame:I

.field public final mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

.field public mIsStarted:Z

.field public final mMaxFrameRate:I

.field public final mMinFrameRate:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    .line 6
    .line 7
    const/16 v0, 0x3c

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMaxFrameRate:I

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMinFrameRate:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 16
    .line 17
    const/16 v0, 0x1f4

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCheckInterval:I

    .line 20
    .line 21
    const/16 v0, 0xa

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameDownStepFrame:I

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;-><init>(Lcom/samsung/android/nexus/particle/emitter/FrameController;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final startFrameRateDown()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    .line 8
    .line 9
    const-string v0, "FrameController"

    .line 10
    .line 11
    const-string v1, "Start frame control."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMaxFrameRate:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCheckInterval:I

    .line 27
    .line 28
    int-to-long v2, p0

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
