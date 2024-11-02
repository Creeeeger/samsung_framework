.class public final Lcom/android/wm/shell/common/DismissButtonManager;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDismissType:I

.field public mNeedToRemoveWindow:Z

.field public mTitle:Ljava/lang/String;

.field public mView:Lcom/android/wm/shell/common/DismissButtonView;

.field public mWindowAdded:Z

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0xa2f

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/DismissButtonManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mNeedToRemoveWindow:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowAdded:Z

    const-string p1, "dismiss-button-overlay"

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mTitle:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mDismissType:I

    .line 7
    iput p3, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowType:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final cleanUpDismissTarget()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "cleanUpDismissTarget  isAttachedToWindow="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "  mWindowAdded="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowAdded:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "DismissButtonManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mNeedToRemoveWindow:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iput-boolean v0, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowManager:Landroid/view/WindowManager;

    .line 65
    .line 66
    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowAdded:Z

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowAdded:Z

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mNeedToRemoveWindow:Z

    .line 78
    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method public final createDismissButtonView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->cleanUpDismissTarget()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0d00d0

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/wm/shell/common/DismissButtonView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    .line 38
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 55
    .line 56
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const v4, 0x7f070390

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, v0

    .line 76
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 82
    .line 83
    iget v1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mDismissType:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setDismissType(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final createOrUpdateWrapper()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createOrUpdateWrapper  isAttachedToWindow="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DismissButtonManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mNeedToRemoveWindow:Z

    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowAdded:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    iget v3, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mWindowType:I

    .line 6
    .line 7
    const v4, 0x1000338

    .line 8
    .line 9
    .line 10
    const/4 v5, -0x2

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mTitle:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x50

    .line 23
    .line 24
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 25
    .line 26
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 27
    .line 28
    const/high16 v1, 0x20000

    .line 29
    .line 30
    or-int/2addr v0, v1

    .line 31
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 39
    .line 40
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 41
    .line 42
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/Point;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 58
    .line 59
    .line 60
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    .line 64
    iget p0, v0, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    .line 68
    const p0, 0x800033

    .line 69
    .line 70
    .line 71
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    .line 73
    return-object v6
.end method

.method public final hide(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 4
    .line 5
    const-string v1, "DismissButtonView"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/DismissButtonView;->updateDismissButtonState(Z)V

    .line 11
    .line 12
    .line 13
    const-string v0, "already mVisible=false but the callback should be run."

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 38
    .line 39
    const-string v0, "hide"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsideHideAnimation:Landroid/view/animation/Animation;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mOutsideHideAnimation:Landroid/view/animation/Animation;

    .line 55
    .line 56
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    .line 57
    .line 58
    new-instance p1, Lcom/android/wm/shell/common/DismissButtonView$2;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DismissButtonView$2;-><init>(Lcom/android/wm/shell/common/DismissButtonView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onAttachedToWindow  mNeedToRemoveWindow="

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mNeedToRemoveWindow:Z

    .line 12
    .line 13
    const-string v2, "DismissButtonManager"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mNeedToRemoveWindow:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->cleanUpDismissTarget()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 14
    .line 15
    const-string v0, "DismissButtonView"

    .line 16
    .line 17
    const-string/jumbo v1, "show"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final updateDismissTargetView(Landroid/graphics/PointF;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 2
    .line 3
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    float-to-int v0, v0

    .line 6
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 7
    .line 8
    float-to-int p1, p1

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x3

    .line 12
    .line 13
    add-int/lit8 v3, p1, -0x3

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x3

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
