.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;
.super Lcom/android/wm/shell/controlpanel/audio/AudioCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/audio/AudioCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaControllerConnected(Landroid/media/session/MediaController;)V
    .locals 1

    .line 1
    const-string v0, "FlexPanelActivity"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "FlexPanelActivity mCallback onMediaControllerConnected mMediaController == null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p1, "FlexPanelActivity mCallback onMediaControllerConnected"

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateMediaPanel()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->updateTouchPadMediaPanel()V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    .line 1
    const-string p1, "FlexPanelActivity"

    .line 2
    .line 3
    const-string v0, "FlexPanelActivity mCallback onMetadataChanged"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 9
    .line 10
    sget v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkActiveSession()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateMediaPanel()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->updateTouchPadMediaPanel()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 5

    .line 1
    const-string p1, "FlexPanelActivity"

    .line 2
    .line 3
    const-string v0, "FlexPanelActivity mCallback onPlaybackStateChanged isSupportButton : "

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isSupportButton(Landroid/media/session/MediaController;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", isVisible : "

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->semIsResumed()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeIn:Landroid/view/animation/Animation;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateMediaPanel()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 97
    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->updateTouchPadMediaPanel()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    const-string p0, "FlexPanelActivity mCallback onPlaybackStateChanged mediaController is null"

    .line 105
    .line 106
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 4

    .line 1
    const-string v0, "FlexPanelActivity"

    .line 2
    .line 3
    const-string v1, "FlexPanelActivity mCallback onSessionDestroyed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->clearController()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v1, "TouchPadMediaPanel"

    .line 24
    .line 25
    const-string v3, "TouchPadMediaPanel clearController"

    .line 26
    .line 27
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 39
    .line 40
    return-void
.end method
