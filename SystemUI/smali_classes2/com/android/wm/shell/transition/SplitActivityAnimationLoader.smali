.class public final Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const v0, 0x10a003a

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const v0, 0x10a003b

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const v0, 0x10a0038

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const v0, 0x10a0039

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_3

    .line 53
    :cond_5
    const/4 v0, 0x0

    .line 54
    :goto_3
    if-eqz v0, :cond_6

    .line 55
    .line 56
    const-wide/16 v1, 0x150

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 62
    .line 63
    .line 64
    :cond_6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SplitActivityAnimationLoader"

    .line 2
    .line 3
    return-object p0
.end method
