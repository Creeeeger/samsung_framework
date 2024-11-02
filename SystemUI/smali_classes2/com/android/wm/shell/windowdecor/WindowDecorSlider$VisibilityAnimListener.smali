.class public final Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mCanceled:Z

.field public mIsTalkbackEnabled:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/WindowDecorSlider;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/WindowDecorSlider;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecorSlider;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mControllable:Z

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mButtonContainer:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->mIsTalkbackEnabled:Z

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const-wide/16 v0, 0xbb8

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mButtonContainer:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSetControlDisabledRunnable:Lcom/android/wm/shell/windowdecor/WindowDecorSlider$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mControllable:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mSliderContainer:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/samsung/android/util/SemViewUtils;->isTalkbackEnabled(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->mIsTalkbackEnabled:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->mButtonContainer:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    .line 34
    .line 35
    return-void
.end method
