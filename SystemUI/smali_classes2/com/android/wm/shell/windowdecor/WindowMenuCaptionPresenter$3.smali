.class public final Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$3;->this$0:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$3;->this$0:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mShowPrimaryButtonSet:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter$1;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 16
    .line 17
    const-wide/16 v0, 0x32

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    return-void
.end method
