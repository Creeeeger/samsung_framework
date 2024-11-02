.class public final Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;
.super Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public final onImeVisibilityChanged(ZI)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 4
    .line 5
    iput-boolean p1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    .line 6
    .line 7
    iput p2, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 10
    .line 11
    if-eqz p0, :cond_7

    .line 12
    .line 13
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 26
    .line 27
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 38
    .line 39
    if-nez p2, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-lez p2, :cond_6

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 48
    .line 49
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    iget-object v6, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 62
    .line 63
    const v1, -0x7fffffff

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget p1, v6, Landroid/graphics/PointF;->y:F

    .line 69
    .line 70
    cmpl-float v2, p1, v0

    .line 71
    .line 72
    if-lez v2, :cond_3

    .line 73
    .line 74
    iget v2, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 75
    .line 76
    cmpl-float v2, v2, v1

    .line 77
    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    iput p1, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget v0, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 84
    .line 85
    cmpl-float p1, v0, v1

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iput v1, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 90
    .line 91
    :goto_0
    move p1, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move p1, v1

    .line 94
    :goto_1
    cmpl-float v7, p1, v1

    .line 95
    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const/high16 v0, 0x43480000    # 200.0f

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 107
    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    const/4 v0, 0x0

    .line 111
    new-array v5, v0, [Ljava/lang/Runnable;

    .line 112
    .line 113
    move-object v0, p2

    .line 114
    move v4, p1

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    iget v0, v6, Landroid/graphics/PointF;->x:F

    .line 119
    .line 120
    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    .line 121
    .line 122
    .line 123
    :cond_4
    if-eqz v7, :cond_5

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iget p1, v6, Landroid/graphics/PointF;->y:F

    .line 127
    .line 128
    :goto_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 129
    .line 130
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 131
    .line 132
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 133
    .line 134
    sub-float/2addr p1, p2

    .line 135
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_6

    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 144
    .line 145
    invoke-static {p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    add-float/2addr v1, p1

    .line 158
    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 165
    .line 166
    .line 167
    :cond_6
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 168
    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_3
    return-void
.end method
