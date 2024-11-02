.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAdjustingBounds:Landroid/graphics/Rect;

.field public mAnimating:Z

.field public mIsAdjusted:Z

.field public final mOriginBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAdjustingBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final adjustConfig(Landroid/window/WindowContainerToken;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAdjustingBounds:Landroid/graphics/Rect;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final moveSurface(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->setOriginBounds(Landroid/graphics/Rect;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAdjustingBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 15
    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAnimating:Z

    .line 18
    .line 19
    return-void
.end method

.method public final setOriginBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
