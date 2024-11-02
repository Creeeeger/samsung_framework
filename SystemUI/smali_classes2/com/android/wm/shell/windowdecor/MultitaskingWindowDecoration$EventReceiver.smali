.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Landroid/view/MotionEvent;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    .line 12
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 13
    .line 14
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    float-to-int v3, v3

    .line 31
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    float-to-int v1, v1

    .line 36
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mIsShowing:Z

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHide:Landroid/animation/Animator;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHide:Landroid/animation/Animator;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mShow:Landroid/animation/Animator;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 66
    .line 67
    .line 68
    :cond_1
    const/4 v0, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
