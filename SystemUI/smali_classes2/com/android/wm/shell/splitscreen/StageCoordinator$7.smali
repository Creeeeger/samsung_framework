.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$dividerLeash:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    const v1, 0x7fffffff

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    iget v2, v2, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    move v5, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v5, v4

    .line 74
    :goto_0
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    int-to-float v1, v1

    .line 82
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 83
    .line 84
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 85
    .line 86
    iget-object v5, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 87
    .line 88
    iget-object v6, v5, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 89
    .line 90
    iget-object v6, v6, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    .line 96
    .line 97
    iget v5, v5, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move v3, v4

    .line 103
    :goto_1
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 106
    .line 107
    .line 108
    :cond_4
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    int-to-float v2, v2

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 125
    .line 126
    .line 127
    return-void
.end method
