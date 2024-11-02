.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->updateSeekbarPosition()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 11
    .line 12
    const-string v1, "MediaPanel"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x3

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    const-string v0, "MediaPanel mUpdateTimer PlaybackState.STATE_PLAYING"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x3e8

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->checkPlaybackPosition(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "MediaPanel mUpdateTimer else"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
