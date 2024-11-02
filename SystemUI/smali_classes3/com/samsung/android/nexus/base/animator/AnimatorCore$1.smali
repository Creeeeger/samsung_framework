.class public final Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    .line 4
    .line 5
    sub-long v1, p1, v1

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    if-ltz v1, :cond_5

    .line 14
    .line 15
    iput-wide p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    .line 16
    .line 17
    iget p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    .line 18
    .line 19
    const/4 p2, 0x2

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p1, p2, :cond_1

    .line 22
    .line 23
    if-ne p1, v1, :cond_0

    .line 24
    .line 25
    iget-object p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    .line 26
    .line 27
    check-cast p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    .line 45
    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sub-int/2addr p1, v1

    .line 53
    :goto_1
    if-ltz p1, :cond_3

    .line 54
    .line 55
    iget-object p2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    .line 58
    .line 59
    check-cast p2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/samsung/android/nexus/base/animator/Animator;

    .line 66
    .line 67
    iget-boolean p2, p2, Lcom/samsung/android/nexus/base/animator/Animator;->mAlive:Z

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    .line 75
    .line 76
    check-cast p2, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    .line 87
    .line 88
    invoke-virtual {p1, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

    .line 94
    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidateMethod:Ljava/lang/reflect/Method;

    .line 98
    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidatorInstance:Ljava/lang/Object;

    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    new-array p2, p2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    iget-object p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    .line 112
    .line 113
    invoke-virtual {p1, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 114
    .line 115
    .line 116
    :catch_0
    :cond_6
    :goto_3
    return-void
.end method
