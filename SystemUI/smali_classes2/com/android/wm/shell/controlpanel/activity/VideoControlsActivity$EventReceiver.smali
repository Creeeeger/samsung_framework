.class public final Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

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
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/view/MotionEvent;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 20
    .line 21
    const-wide/16 v4, 0x1388

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 27
    .line 28
    iget v2, v2, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mImmersiveState:I

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 39
    .line 40
    iget-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mIsDimTouched:Z

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iput-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mIsDimTouched:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsDimActivity;->sVideoControlsDimActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsDimActivity;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 55
    .line 56
    iput v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mImmersiveState:I

    .line 57
    .line 58
    :cond_2
    move v1, v3

    .line 59
    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
