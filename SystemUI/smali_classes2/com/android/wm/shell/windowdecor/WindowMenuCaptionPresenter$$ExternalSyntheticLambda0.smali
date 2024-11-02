.class public final synthetic Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mShowPrimaryButtonSet:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    xor-int/2addr p1, v0

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mShowPrimaryButtonSet:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    xor-int/2addr p1, v0

    .line 14
    iput-boolean p1, v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonVisibility:[Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;

    .line 18
    .line 19
    aget-object p1, v1, p1

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mVisibleAnim:Landroid/animation/AnimatorSet;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mInvisibleAnim:Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 41
    .line 42
    .line 43
    :cond_2
    aget-object p1, v1, v0

    .line 44
    .line 45
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mVisibleAnim:Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mInvisibleAnim:Landroid/animation/AnimatorSet;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mShowPrimaryButtonSet:Z

    .line 68
    .line 69
    xor-int/2addr p1, v0

    .line 70
    aget-object p1, v1, p1

    .line 71
    .line 72
    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mVisibleAnim:Landroid/animation/AnimatorSet;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/animation/CaptionButtonVisibility;->mInvisibleAnim:Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->setTaskFocusState(Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
