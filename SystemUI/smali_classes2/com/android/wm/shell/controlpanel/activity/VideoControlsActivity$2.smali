.class public final Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

.field public final synthetic val$count:[I

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;[ILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->val$count:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->val$handler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 4
    .line 5
    const-string v1, "VideoControlsActivity"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->val$count:[I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aget v2, v2, v3

    .line 13
    .line 14
    const/4 v4, 0x5

    .line 15
    if-ge v2, v4, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "handler postDelayed mMediaController == null count : "

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->val$count:[I

    .line 25
    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 45
    .line 46
    invoke-static {v2, v4}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->val$count:[I

    .line 53
    .line 54
    aget v2, v0, v3

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    aput v2, v0, v3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->val$handler:Landroid/os/Handler;

    .line 61
    .line 62
    const-wide/16 v2, 0xc8

    .line 63
    .line 64
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const-string v0, "handler postDelayed mMediaController != null"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 85
    .line 86
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 89
    .line 90
    invoke-static {v2, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 100
    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 106
    .line 107
    invoke-static {v2, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const-string v2, "VideoControlsActivity checkActiveSession isMediaPanelRequestedState : "

    .line 112
    .line 113
    invoke-static {v2, v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mVideoControlsPanel:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 125
    .line 126
    const-string v1, "MediaPanel"

    .line 127
    .line 128
    const-string v2, "MediaPanel setMediaController"

    .line 129
    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 134
    .line 135
    if-eq v1, p0, :cond_3

    .line 136
    .line 137
    iput-object p0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const-string v0, "VideoControlsActivity checkActiveSession MediaFloating no hasActiveSessions"

    .line 141
    .line 142
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    return-void
.end method
