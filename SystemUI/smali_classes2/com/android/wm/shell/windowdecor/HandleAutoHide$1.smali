.class public final Lcom/android/wm/shell/windowdecor/HandleAutoHide$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/HandleAutoHide;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/HandleAutoHide;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

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
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mEnabled:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mIsShowing:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHideRunnable:Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const-wide/16 v0, 0x7d0

    .line 16
    .line 17
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mIsShowing:Z

    .line 5
    .line 6
    return-void
.end method
