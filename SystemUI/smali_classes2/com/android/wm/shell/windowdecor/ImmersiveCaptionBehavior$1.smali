.class public final Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

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
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const-wide/16 v0, 0x3e8

    .line 22
    .line 23
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->-$$Nest$msetButtonDisable(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
