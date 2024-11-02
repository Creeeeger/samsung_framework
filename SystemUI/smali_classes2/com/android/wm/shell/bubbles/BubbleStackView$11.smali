.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$11;
.super Lcom/android/wm/shell/bubbles/RelativeTouchListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    invoke-virtual {p0, p5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setFlyoutStateForDragLength(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUp(Landroid/view/View;FFFF)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 p5, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 14
    .line 15
    cmpg-float v0, p4, v0

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 21
    .line 22
    cmpl-float v0, p4, v0

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    :goto_0
    move v0, p2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, p5

    .line 29
    :goto_1
    const/high16 v1, 0x3e800000    # 0.25f

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    neg-int v2, v2

    .line 42
    int-to-float v2, v2

    .line 43
    mul-float/2addr v2, v1

    .line 44
    cmpg-float p3, p3, v2

    .line 45
    .line 46
    if-gez p3, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    mul-float/2addr v2, v1

    .line 59
    cmpl-float p3, p3, v2

    .line 60
    .line 61
    if-lez p3, :cond_3

    .line 62
    .line 63
    :goto_2
    move p3, p2

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move p3, p5

    .line 66
    :goto_3
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    cmpl-float p1, p4, v1

    .line 70
    .line 71
    if-lez p1, :cond_5

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    cmpg-float p1, p4, v1

    .line 75
    .line 76
    if-gez p1, :cond_5

    .line 77
    .line 78
    :goto_4
    move p1, p2

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    move p1, p5

    .line 81
    :goto_5
    if-nez v0, :cond_7

    .line 82
    .line 83
    if-eqz p3, :cond_6

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move p2, p5

    .line 89
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 90
    .line 91
    iget-object p3, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 99
    .line 100
    invoke-virtual {p1, p4, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateFlyoutCollapsed(FZ)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    return-void
.end method
