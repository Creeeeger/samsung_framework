.class public final Lcom/android/systemui/pluginlock/component/PluginLockMusic;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsLandscapeAvailable:Z

.field public mIsPortraitAvailable:Z

.field public mMusicGravity:I

.field public mMusicGravityLand:I

.field public mMusicPaddingEnd:I

.field public mMusicPaddingEndLand:I

.field public mMusicPaddingStart:I

.field public mMusicPaddingStartLand:I

.field public mMusicPaddingTop:I

.field public mMusicPaddingTopLand:I

.field public mMusicVisibility:I

.field public mMusicVisibilityLand:I

.field public mStateListenerList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    .line 13
    .line 14
    const/16 p3, 0x11

    .line 15
    .line 16
    iput p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    .line 17
    .line 18
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 19
    .line 20
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 21
    .line 22
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 23
    .line 24
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    .line 25
    .line 26
    iput p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopY()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingStart()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingEnd()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibility()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravity()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopYLand()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingStartLand()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingEndLand()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibilityLand()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravityLand()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsPortraitAvailable:Z

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsLandscapeAvailable:Z

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final loadMusicData()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "key_music_top_padding"

    .line 7
    .line 8
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "key_music_visibility"

    .line 14
    .line 15
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "key_music_start_padding"

    .line 21
    .line 22
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v1, "key_music_end_padding"

    .line 28
    .line 29
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string v1, "key_music_gravity"

    .line 35
    .line 36
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const-string v1, "key_music_top_padding_land"

    .line 42
    .line 43
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string v1, "key_music_visibility_land"

    .line 49
    .line 50
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string v1, "key_music_start_padding_land"

    .line 56
    .line 57
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string v1, "key_music_end_padding_land"

    .line 63
    .line 64
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const-string v1, "key_music_gravity_land"

    .line 70
    .line 71
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string v1, "key_music_available"

    .line 77
    .line 78
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsPortraitAvailable:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-string v1, "key_music_available_land"

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsLandscapeAvailable:Z

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "loadMusicData bundle: "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/4 v2, 0x0

    .line 109
    new-array v3, v2, [Ljava/lang/Object;

    .line 110
    .line 111
    const-string v4, "PluginLockMusic"

    .line 112
    .line 113
    invoke-static {v4, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-ge v2, v1, :cond_1

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 131
    .line 132
    if-eqz v1, :cond_0

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 139
    .line 140
    if-eqz v1, :cond_0

    .line 141
    .line 142
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onMusicChanged(Landroid/os/Bundle;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method
