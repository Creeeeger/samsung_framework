.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleMenuShowing:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const-wide/16 v0, 0x32

    .line 28
    .line 29
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsBlurSupported:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
