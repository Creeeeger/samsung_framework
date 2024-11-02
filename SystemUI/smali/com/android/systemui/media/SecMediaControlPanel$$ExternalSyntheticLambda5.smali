.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:Landroid/media/session/MediaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;->f$1:Landroid/media/session/MediaController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;->f$1:Landroid/media/session/MediaController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, v1

    .line 21
    :goto_0
    iput-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object p0, v1

    .line 33
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-wide v5, v3

    .line 45
    :goto_2
    const-wide/16 v7, 0x100

    .line 46
    .line 47
    and-long/2addr v5, v7

    .line 48
    cmp-long v2, v5, v3

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    move v7, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move v7, v4

    .line 57
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    long-to-int v1, v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_4
    move-object v10, v1

    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    const-string v1, "android.media.metadata.DURATION"

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    long-to-int p0, v1

    .line 80
    move v11, p0

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    move v11, v4

    .line 83
    :goto_4
    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 84
    .line 85
    if-eqz p0, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    goto :goto_5

    .line 92
    :cond_6
    move p0, v4

    .line 93
    :goto_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 98
    .line 99
    if-eqz p0, :cond_9

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_7

    .line 106
    .line 107
    move p0, v3

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    move p0, v4

    .line 110
    :goto_6
    if-nez p0, :cond_9

    .line 111
    .line 112
    if-gtz v11, :cond_8

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_8
    move v6, v3

    .line 116
    goto :goto_8

    .line 117
    :cond_9
    :goto_7
    move v6, v4

    .line 118
    :goto_8
    new-instance p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 119
    .line 120
    iget-boolean v9, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    .line 121
    .line 122
    move-object v5, p0

    .line 123
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    .line 130
    .line 131
    .line 132
    return-void
.end method
