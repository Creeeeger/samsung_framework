.class public final Lcom/samsung/android/nexus/base/animator/AnimatorCore;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimatorList:Ljava/util/List;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

.field public final mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

.field public mFrameRate:I

.field public mFrameStartTime:J

.field public mFrameTime:J

.field public mRenderMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    .line 6
    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    iput v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    .line 24
    .line 25
    new-instance v1, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;-><init>(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    .line 31
    .line 32
    const-string v1, "AnimatorCore"

    .line 33
    .line 34
    const-string v2, "AnimatorCore() : create AnimatorCore"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    .line 40
    .line 41
    iput v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    const v2, 0x3b9aca00

    .line 46
    .line 47
    .line 48
    div-int/2addr v2, v1

    .line 49
    int-to-long v1, v2

    .line 50
    iput-wide v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    .line 51
    .line 52
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    .line 57
    .line 58
    iget v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    .line 59
    .line 60
    if-ne v1, v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->startAnimator()V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public final startAnimator()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "startAnimator() : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "AnimatorCore"

    .line 18
    .line 19
    invoke-static {v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
