.class public final Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mImmersiveState:I

    .line 14
    .line 15
    if-ne v1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iput v0, p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mImmersiveState:I

    .line 19
    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-class v2, Lcom/android/wm/shell/controlpanel/activity/VideoControlsDimActivity;

    .line 29
    .line 30
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v0}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 47
    .line 48
    .line 49
    const/high16 v0, 0x30010000

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method
