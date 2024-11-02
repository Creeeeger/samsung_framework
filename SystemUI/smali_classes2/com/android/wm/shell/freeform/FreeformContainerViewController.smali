.class public final Lcom/android/wm/shell/freeform/FreeformContainerViewController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallBacks:Ljava/util/List;

.field public mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final mContext:Landroid/content/Context;

.field public mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

.field public final mDisplayFrame:Landroid/graphics/Rect;

.field public mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

.field public final mFullscreenModeRequests:Ljava/util/List;

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

.field public final mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

.field public mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mNonDecorDisplayFrame:Landroid/graphics/Rect;

.field public mState:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpPointF:Landroid/graphics/PointF;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 55
    .line 56
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string/jumbo v0, "window"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/view/WindowManager;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 75
    .line 76
    const-string v0, "layout_inflater"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/view/LayoutInflater;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final adjustPositionInDisplay(IILandroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    sub-int v1, v0, p1

    .line 6
    .line 7
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    sub-int/2addr v0, p1

    .line 13
    sub-int/2addr v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    add-int v0, p1, p2

    .line 18
    .line 19
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    sub-int v0, p1, v1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v3

    .line 28
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    iget p2, p3, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    if-le p1, p2, :cond_2

    .line 33
    .line 34
    sub-int v3, p1, p2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    if-ge p0, p1, :cond_3

    .line 42
    .line 43
    sub-int v3, p0, p1

    .line 44
    .line 45
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 46
    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    :cond_4
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 50
    .line 51
    .line 52
    :cond_5
    return-void
.end method

.method public final closeFullscreenMode(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FreeformContainer"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "[ViewController] close failed: mContainerView is null"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    .line 15
    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "[ViewController] "

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " does not exist, close failed"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    move-object v1, v0

    .line 49
    check-cast v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "[ViewController] close FullscreenMode: "

    .line 57
    .line 58
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    check-cast v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const-string p1, "[ViewController] FullscreenMode Disabled"

    .line 80
    .line 81
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 85
    .line 86
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method public final createOrUpdateDismissButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->createOrUpdateWrapper()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    const-string v0, "FreeformContainer"

    .line 2
    .line 3
    const-string v1, "[ViewController] hideDismissButtonAndDismissIcon"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v1, "[ViewController] hideDismissButton"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const-string v4, "[FreeformContainerDismissButtonView] hide()"

    .line 22
    .line 23
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iput-boolean v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 35
    .line 36
    :cond_1
    iget-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 37
    .line 38
    new-instance v4, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v4, v1, v3}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 54
    .line 55
    iget-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 56
    .line 57
    :goto_1
    if-eqz v2, :cond_3

    .line 58
    .line 59
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    .line 65
    .line 66
    iget-object p0, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    .line 71
    .line 72
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    int-to-float p1, p1

    .line 75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    int-to-float p0, p0

    .line 80
    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    .line 82
    div-float/2addr p0, v2

    .line 83
    add-float/2addr p0, p1

    .line 84
    iget-object p1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    int-to-float v3, v3

    .line 93
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    int-to-float p1, p1

    .line 98
    div-float/2addr p1, v2

    .line 99
    add-float/2addr p1, v3

    .line 100
    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;

    .line 101
    .line 102
    invoke-direct {v2, v0, p2, v1}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    int-to-float v0, v0

    .line 110
    sub-float/2addr p0, v0

    .line 111
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    int-to-float v0, v0

    .line 116
    sub-float/2addr p1, v0

    .line 117
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    int-to-float v8, v0

    .line 122
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    int-to-float v9, p3

    .line 127
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-direct {p3, v0, p0, v0, p1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    .line 134
    .line 135
    const/high16 v4, 0x3f800000    # 1.0f

    .line 136
    .line 137
    const v5, 0x3f333333    # 0.7f

    .line 138
    .line 139
    .line 140
    const/high16 v6, 0x3f800000    # 1.0f

    .line 141
    .line 142
    const v7, 0x3f333333    # 0.7f

    .line 143
    .line 144
    .line 145
    move-object v3, p0

    .line 146
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 150
    .line 151
    const/high16 v1, 0x3f800000    # 1.0f

    .line 152
    .line 153
    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 157
    .line 158
    const/4 v1, 0x1

    .line 159
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    .line 170
    .line 171
    sget-object p0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 174
    .line 175
    .line 176
    const-wide/16 p0, 0xfa

    .line 177
    .line 178
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    return-void
.end method

.method public final hideWindow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const-string v0, "[ViewController] Hide Window"

    .line 6
    .line 7
    const-string v1, "FreeformContainer"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 35
    .line 36
    iget-boolean v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iput-boolean v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 41
    .line 42
    :cond_0
    const-string v0, "fullscreen_mode_request_remove_target"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v4, "[FreeformContainerDismissButtonView] hide()"

    .line 55
    .line 56
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iput-boolean v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 68
    .line 69
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 70
    .line 71
    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public final isDismissButtonShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    .line 8
    .line 9
    return p0
.end method

.method public final isPointerView()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final openFullscreenMode(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FreeformContainer"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "[ViewController] open failed: mContainerView is null"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "[ViewController] "

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " is already opened"

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-string v1, "[ViewController] open FullscreenMode: "

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v0, 0x1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    const-string p1, "[ViewController] FullscreenMode Enabled"

    .line 67
    .line 68
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 72
    .line 73
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return v0
.end method

.method public final setFocusable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 16
    .line 17
    and-int/lit8 v2, v2, -0x9

    .line 18
    .line 19
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    .line 24
    or-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 27
    .line 28
    :goto_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    .line 36
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "[ViewController] setFocusable: "

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "FreeformContainer"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final updateContainerState(IZZ)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_11

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const-string v2, "UNKNOWN"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v2, "STATE_FOLDER"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v2, "STATE_POINTER"

    .line 18
    .line 19
    :goto_0
    const-string v3, "[ViewController] updateContainerState: "

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "FreeformContainer"

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const-wide/16 v4, 0x11b

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    if-eq p1, v1, :cond_c

    .line 39
    .line 40
    if-eq p1, v0, :cond_2

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    add-int/lit8 p3, p3, -0x2

    .line 58
    .line 59
    move v0, v2

    .line 60
    :goto_1
    if-ltz p3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    add-int/2addr v0, v1

    .line 70
    iget-object v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 79
    .line 80
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getX()F

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setX(F)V

    .line 85
    .line 86
    .line 87
    iget-object v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 88
    .line 89
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getY()F

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    iget v10, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    .line 94
    .line 95
    mul-int/2addr v10, v0

    .line 96
    int-to-float v10, v10

    .line 97
    add-float/2addr v9, v10

    .line 98
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setY(F)V

    .line 99
    .line 100
    .line 101
    iget-object v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    const v10, 0x7f0101ad

    .line 104
    .line 105
    .line 106
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 p3, p3, -0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateFolderSize()V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 124
    .line 125
    iget-object p3, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 126
    .line 127
    iget v0, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    .line 128
    .line 129
    iget p3, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    .line 130
    .line 131
    iget-object v8, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    .line 132
    .line 133
    iget-object v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 134
    .line 135
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getX()F

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    iget v10, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 140
    .line 141
    sub-int/2addr v0, v10

    .line 142
    int-to-float v0, v0

    .line 143
    const/high16 v10, 0x40000000    # 2.0f

    .line 144
    .line 145
    div-float/2addr v0, v10

    .line 146
    sub-float/2addr v9, v0

    .line 147
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 154
    .line 155
    sub-int/2addr p3, p1

    .line 156
    int-to-float p1, p3

    .line 157
    div-float/2addr p1, v10

    .line 158
    sub-float/2addr v0, p1

    .line 159
    invoke-virtual {v8, v9, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 163
    .line 164
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 165
    .line 166
    iget v0, v8, Landroid/graphics/PointF;->x:F

    .line 167
    .line 168
    float-to-int v0, v0

    .line 169
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 170
    .line 171
    float-to-int v8, v8

    .line 172
    iget-object v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 173
    .line 174
    iget v10, v9, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    .line 175
    .line 176
    add-int/2addr v10, v0

    .line 177
    iget v9, v9, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    .line 178
    .line 179
    add-int/2addr v9, v8

    .line 180
    invoke-virtual {p3, v0, v8, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 181
    .line 182
    .line 183
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 184
    .line 185
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 186
    .line 187
    iget v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingLeft:I

    .line 188
    .line 189
    neg-int v8, v8

    .line 190
    iget v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingRight:I

    .line 191
    .line 192
    neg-int v9, v9

    .line 193
    invoke-virtual {p3, v8, v9, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->adjustPositionInDisplay(IILandroid/graphics/Rect;)V

    .line 194
    .line 195
    .line 196
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 197
    .line 198
    iget p3, p3, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    int-to-float p3, p3

    .line 201
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setX(F)V

    .line 202
    .line 203
    .line 204
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 205
    .line 206
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 207
    .line 208
    int-to-float p3, p3

    .line 209
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setY(F)V

    .line 210
    .line 211
    .line 212
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 213
    .line 214
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getZ()F

    .line 215
    .line 216
    .line 217
    move-result p3

    .line 218
    const/high16 v0, 0x3f800000    # 1.0f

    .line 219
    .line 220
    add-float/2addr p3, v0

    .line 221
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setZ(F)V

    .line 222
    .line 223
    .line 224
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 225
    .line 226
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 227
    .line 228
    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 229
    .line 230
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 231
    .line 232
    int-to-float v8, v8

    .line 233
    invoke-virtual {p3, v8}, Landroid/widget/FrameLayout;->setX(F)V

    .line 234
    .line 235
    .line 236
    int-to-float v0, v0

    .line 237
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 238
    .line 239
    .line 240
    new-instance p3, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v0, "[FolderView] setFolderPosition: x="

    .line 243
    .line 244
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 248
    .line 249
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 250
    .line 251
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v0, ", y="

    .line 255
    .line 256
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 260
    .line 261
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 262
    .line 263
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v0, ", view="

    .line 267
    .line 268
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 282
    .line 283
    invoke-virtual {p1, v7}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTrayBounds(Landroid/graphics/Rect;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 289
    .line 290
    .line 291
    move-result p3

    .line 292
    if-eqz p3, :cond_5

    .line 293
    .line 294
    iget p3, v7, Landroid/graphics/Rect;->right:I

    .line 295
    .line 296
    int-to-float p3, p3

    .line 297
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    sub-float/2addr p3, v0

    .line 304
    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 305
    .line 306
    int-to-float v0, v0

    .line 307
    sub-float/2addr p3, v0

    .line 308
    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    .line 309
    .line 310
    int-to-float v0, v0

    .line 311
    sub-float/2addr p3, v0

    .line 312
    goto :goto_3

    .line 313
    :cond_5
    iget p3, v7, Landroid/graphics/Rect;->left:I

    .line 314
    .line 315
    int-to-float p3, p3

    .line 316
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 317
    .line 318
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    sub-float/2addr p3, v0

    .line 323
    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    .line 324
    .line 325
    int-to-float v0, v0

    .line 326
    add-float/2addr p3, v0

    .line 327
    :goto_3
    float-to-int p3, p3

    .line 328
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 329
    .line 330
    int-to-float v0, v0

    .line 331
    iget-object v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 332
    .line 333
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    sub-float/2addr v0, v3

    .line 338
    iget v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconItemTopMarginInFolder:I

    .line 339
    .line 340
    int-to-float v3, v3

    .line 341
    add-float/2addr v0, v3

    .line 342
    float-to-int v0, v0

    .line 343
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 344
    .line 345
    int-to-float p3, p3

    .line 346
    int-to-float v0, v0

    .line 347
    invoke-direct {v3, v6, p3, v6, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 351
    .line 352
    .line 353
    sget-object p3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 354
    .line 355
    invoke-virtual {v3, p3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 356
    .line 357
    .line 358
    new-instance p3, Lcom/android/wm/shell/freeform/FreeformContainerView$7;

    .line 359
    .line 360
    invoke-direct {p3, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$7;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, p3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 367
    .line 368
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    .line 374
    .line 375
    .line 376
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 377
    .line 378
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->animateBackgroundDim(Z)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->setFocusable(Z)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 385
    .line 386
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 387
    .line 388
    const-string v0, "fullscreen_mode_request_folder"

    .line 389
    .line 390
    invoke-virtual {p3, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result p3

    .line 394
    const/4 v0, 0x0

    .line 395
    if-nez p3, :cond_6

    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_6
    iget-boolean p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    .line 400
    .line 401
    if-nez p3, :cond_b

    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateFolderSize()V

    .line 404
    .line 405
    .line 406
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 407
    .line 408
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 409
    .line 410
    .line 411
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 412
    .line 413
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 414
    .line 415
    .line 416
    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    .line 417
    .line 418
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    iget p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconCount:I

    .line 422
    .line 423
    iget-object v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 424
    .line 425
    invoke-virtual {v3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-ge p3, v3, :cond_7

    .line 430
    .line 431
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 432
    .line 433
    .line 434
    :cond_7
    if-eqz p2, :cond_a

    .line 435
    .line 436
    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    .line 437
    .line 438
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 439
    .line 440
    .line 441
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 442
    .line 443
    invoke-virtual {p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 444
    .line 445
    .line 446
    move-result p2

    .line 447
    move p3, v2

    .line 448
    :goto_4
    if-ge p3, p2, :cond_9

    .line 449
    .line 450
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 455
    .line 456
    if-nez v1, :cond_8

    .line 457
    .line 458
    goto :goto_5

    .line 459
    :cond_8
    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 460
    .line 461
    const/4 v3, 0x4

    .line 462
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    :goto_5
    add-int/lit8 p3, p3, 0x1

    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_9
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 469
    .line 470
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    const p3, 0x7f0101b1

    .line 476
    .line 477
    .line 478
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 479
    .line 480
    .line 481
    move-result-object p2

    .line 482
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 483
    .line 484
    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    .line 486
    .line 487
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 488
    .line 489
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    .line 490
    .line 491
    const-wide/16 v1, 0x21

    .line 492
    .line 493
    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    .line 495
    .line 496
    :cond_a
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    .line 497
    .line 498
    if-eqz p2, :cond_b

    .line 499
    .line 500
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 501
    .line 502
    const p3, 0x7f0d0101

    .line 503
    .line 504
    .line 505
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    check-cast p2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 510
    .line 511
    iput-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 512
    .line 513
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 514
    .line 515
    const/16 p2, 0x40

    .line 516
    .line 517
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 518
    .line 519
    .line 520
    goto/16 :goto_8

    .line 521
    .line 522
    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 523
    .line 524
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 525
    .line 526
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    .line 527
    .line 528
    .line 529
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 530
    .line 531
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewVisibility(I)V

    .line 532
    .line 533
    .line 534
    const-string p1, "DPK : mState = 1"

    .line 535
    .line 536
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 540
    .line 541
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->collapse(Z)V

    .line 542
    .line 543
    .line 544
    if-eqz p3, :cond_d

    .line 545
    .line 546
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 547
    .line 548
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->animateBackgroundDim(Z)V

    .line 549
    .line 550
    .line 551
    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->setFocusable(Z)V

    .line 552
    .line 553
    .line 554
    if-eqz p2, :cond_10

    .line 555
    .line 556
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 557
    .line 558
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 559
    .line 560
    .line 561
    move-result p1

    .line 562
    if-lt p1, v0, :cond_f

    .line 563
    .line 564
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 565
    .line 566
    invoke-virtual {p1, v7}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTrayBounds(Landroid/graphics/Rect;)V

    .line 567
    .line 568
    .line 569
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 570
    .line 571
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 575
    .line 576
    .line 577
    move-result p2

    .line 578
    if-eqz p2, :cond_e

    .line 579
    .line 580
    iget p2, v7, Landroid/graphics/Rect;->right:I

    .line 581
    .line 582
    int-to-float p2, p2

    .line 583
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 584
    .line 585
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getX()F

    .line 586
    .line 587
    .line 588
    move-result p3

    .line 589
    sub-float/2addr p2, p3

    .line 590
    iget p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 591
    .line 592
    int-to-float p3, p3

    .line 593
    sub-float/2addr p2, p3

    .line 594
    iget p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    .line 595
    .line 596
    int-to-float p3, p3

    .line 597
    sub-float/2addr p2, p3

    .line 598
    goto :goto_7

    .line 599
    :cond_e
    iget p2, v7, Landroid/graphics/Rect;->left:I

    .line 600
    .line 601
    int-to-float p2, p2

    .line 602
    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 603
    .line 604
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getX()F

    .line 605
    .line 606
    .line 607
    move-result p3

    .line 608
    sub-float/2addr p2, p3

    .line 609
    iget p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    .line 610
    .line 611
    int-to-float p3, p3

    .line 612
    add-float/2addr p2, p3

    .line 613
    :goto_7
    float-to-int p2, p2

    .line 614
    iget p3, v7, Landroid/graphics/Rect;->top:I

    .line 615
    .line 616
    int-to-float p3, p3

    .line 617
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 618
    .line 619
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    sub-float/2addr p3, v0

    .line 624
    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconItemTopMarginInFolder:I

    .line 625
    .line 626
    int-to-float v0, v0

    .line 627
    add-float/2addr p3, v0

    .line 628
    float-to-int p3, p3

    .line 629
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 630
    .line 631
    int-to-float p2, p2

    .line 632
    int-to-float p3, p3

    .line 633
    invoke-direct {v0, p2, v6, p3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 637
    .line 638
    .line 639
    sget-object p2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 640
    .line 641
    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 642
    .line 643
    .line 644
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$6;

    .line 645
    .line 646
    invoke-direct {p2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$6;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 650
    .line 651
    .line 652
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 653
    .line 654
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    .line 656
    .line 657
    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 658
    .line 659
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 660
    .line 661
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 662
    .line 663
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 667
    .line 668
    const p3, 0x7f0101b2

    .line 669
    .line 670
    .line 671
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 672
    .line 673
    .line 674
    move-result-object p2

    .line 675
    new-instance p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;

    .line 676
    .line 677
    invoke-direct {p3, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 681
    .line 682
    .line 683
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 684
    .line 685
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 686
    .line 687
    .line 688
    goto :goto_8

    .line 689
    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 690
    .line 691
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 692
    .line 693
    new-instance p3, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;

    .line 694
    .line 695
    invoke-direct {p3, p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    .line 700
    .line 701
    :cond_10
    :goto_8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 702
    .line 703
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateTouchableRegion()V

    .line 704
    .line 705
    .line 706
    :cond_11
    return-void
.end method

.method public final updateDisplayFrame(Z)V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/view/DisplayInfo;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 20
    .line 21
    .line 22
    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 23
    .line 24
    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual {v1, v5, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getStableInsets(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float p1, p1

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    div-float/2addr p1, v2

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    int-to-float v1, v1

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    int-to-float v0, v0

    .line 82
    div-float/2addr v1, v0

    .line 83
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 86
    .line 87
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    cmpl-float v4, v2, v3

    .line 91
    .line 92
    if-ltz v4, :cond_0

    .line 93
    .line 94
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 95
    .line 96
    cmpl-float v3, v0, v3

    .line 97
    .line 98
    if-ltz v3, :cond_0

    .line 99
    .line 100
    mul-float/2addr v2, p1

    .line 101
    const/high16 v3, 0x3f000000    # 0.5f

    .line 102
    .line 103
    add-float/2addr v2, v3

    .line 104
    mul-float/2addr v0, v1

    .line 105
    add-float/2addr v0, v3

    .line 106
    const-string v3, "[ContainerView] scalePointerPosition, new position=("

    .line 107
    .line 108
    const-string v4, ","

    .line 109
    .line 110
    const-string v6, ") scale=("

    .line 111
    .line 112
    invoke-static {v3, v2, v4, v0, v6}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, ")"

    .line 126
    .line 127
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v1, "FreeformContainer"

    .line 135
    .line 136
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v2, v0, v5}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 140
    .line 141
    .line 142
    :cond_0
    return-void
.end method
