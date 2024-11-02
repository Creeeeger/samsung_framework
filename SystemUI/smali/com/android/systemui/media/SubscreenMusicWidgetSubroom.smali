.class public final Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->init()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d0443

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    sget-object v0, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/android/systemui/media/SecMediaHost;->removeMediaFrame(Lcom/android/systemui/media/MediaType;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/media/SecMediaHost;->addMediaFrame(Landroid/view/View;Lcom/android/systemui/media/MediaType;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final removeListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    const-string v0, "STATE_MUSIC_CAPSULE_INFO"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    const-string v0, " request "

    .line 10
    .line 11
    const-string v1, "SubLauncherMusic"

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_5

    .line 17
    .line 18
    const-string p1, "capsule"

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    sget-object p1, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    .line 42
    .line 43
    const-string v0, "SecMediaHost"

    .line 44
    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p0, "There is no current media data, exit"

    .line 48
    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    const-string p0, "There is no frame, exit"

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 82
    .line 83
    if-nez p0, :cond_3

    .line 84
    .line 85
    const-string p1, "There is no player for key, exit"

    .line 86
    .line 87
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 99
    .line 100
    if-nez p0, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateEqualizerState(Landroid/media/session/PlaybackState;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->init()V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_0
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    .line 1
    return-void
.end method
