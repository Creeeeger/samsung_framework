.class public final Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->-$$Nest$msetButtonDisable(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;->this$0:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    .line 41
    .line 42
    const/16 p1, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
