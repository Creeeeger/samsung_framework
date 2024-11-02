.class public final Lcom/samsung/android/nexus/particle/emitter/FrameController$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FrameController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 2
    .line 3
    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 4
    .line 5
    iget v1, p1, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameDownStepFrame:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iput v0, p1, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget v2, p1, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMinFrameRate:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-gt v0, v2, :cond_0

    .line 15
    .line 16
    iput v2, p1, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 17
    .line 18
    move p1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, v1

    .line 21
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Do frame down rate : "

    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 29
    .line 30
    iget v2, v2, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "FrameController"

    .line 40
    .line 41
    invoke-static {v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 47
    .line 48
    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-gtz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string v4, "NexusContext"

    .line 60
    .line 61
    const-string v5, "setFrameRate() : Do NOT set a negative value."

    .line 62
    .line 63
    invoke-static {v4, v5}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v2, v2, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 67
    .line 68
    iput v0, v2, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    .line 69
    .line 70
    add-int/2addr v0, v1

    .line 71
    const v1, 0x3b9aca00

    .line 72
    .line 73
    .line 74
    div-int/2addr v1, v0

    .line 75
    int-to-long v0, v1

    .line 76
    iput-wide v0, v2, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    .line 83
    .line 84
    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCheckInterval:I

    .line 85
    .line 86
    int-to-long v0, p0

    .line 87
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method
