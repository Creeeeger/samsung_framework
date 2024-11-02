.class public final Lcom/samsung/android/nexus/video/VideoPlayer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;,
        Lcom/samsung/android/nexus/video/VideoPlayer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

.field public static final MEDIA_ERROR_NOT_PREPARED:I = -0x26

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field private static final SEM_KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field private static final SEM_KEY_PARAMETER_SEAMLESS_LOOPING:I = 0x9089

.field private static final SEM_KEY_PARAMETER_VIDEO_TEAR_DOWN:I = 0x9088

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private isLooping:Z

.field private final mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field private mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

.field private mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field private mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private mediaFd:Ljava/io/FileDescriptor;

.field private mediaUri:Landroid/net/Uri;

.field private preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private videoOrientation:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->Companion:Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

    .line 8
    .line 9
    const-string v0, "VideoPlayer"

    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;

    .line 10
    .line 11
    invoke-direct {v1, v0, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/nexus/video/VideoPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$3;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 42
    .line 43
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final loggingError(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setDataSourceAssetFd()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set data asset source fd = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", is looping = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 33
    .line 34
    if-eqz v0, :cond_9

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 37
    .line 38
    if-eqz v0, :cond_8

    .line 39
    .line 40
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 43
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 76
    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    move-object v2, v0

    .line 84
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 89
    .line 90
    .line 91
    throw v2

    .line 92
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 93
    .line 94
    .line 95
    throw v2

    .line 96
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 97
    .line 98
    .line 99
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    instance-of v0, p0, Ljava/io/IOException;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "Set data source fd failed : "

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_1
    return-void

    .line 144
    :cond_8
    const-string v0, "Set data source error. context is null."

    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    const-string v0, "Set data source error. Media asset fd is null."

    .line 151
    .line 152
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private final setDataSourceFd()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set data source fd = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", is looping = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 43
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    instance-of v0, p0, Ljava/io/IOException;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "Set data source fd failed : "

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    return-void

    .line 110
    :cond_5
    const-string v0, "Set data source error. context is null."

    .line 111
    .line 112
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    const-string v0, "Set data source error. Media fd is null."

    .line 117
    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private final setDataSourceUri()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set data source uri = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", is looping = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    .line 33
    .line 34
    if-eqz v0, :cond_8

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 37
    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 43
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, v1, Lcom/samsung/android/nexus/base/context/NexusContext;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    .line 66
    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 74
    .line 75
    .line 76
    throw v2

    .line 77
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 78
    .line 79
    .line 80
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    instance-of v0, p0, Ljava/io/IOException;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v2, "Set data source fd failed : "

    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_1
    return-void

    .line 125
    :cond_7
    const-string v0, "Set data source error. context is null."

    .line 126
    .line 127
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_8
    const-string v0, "Set data source error. Media uri is null."

    .line 132
    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public final getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCurrentPosition()I
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    .line 3
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get current position : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaAssetFd()Landroid/content/res/AssetFileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaFd()Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoOrientation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->videoOrientation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoSize()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    aget-object v1, p0, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getVideoWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    aget-object p0, p0, v0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getVideoHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    new-instance v0, Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final isLooping()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPlaying()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Cannot set looping to the media player : "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final onCreate(Lcom/samsung/android/nexus/base/context/NexusContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 2
    .line 3
    return-void
.end method

.method public final pause()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Pause : state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 23
    .line 24
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    .line 43
    .line 44
    .line 45
    :cond_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Cannot pause media player : "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public final play()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Start play state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", player looping state = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isLooping()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 37
    .line 38
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    .line 57
    .line 58
    .line 59
    :cond_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Cannot start media player : "

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Release"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->release()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final seekTo(I)V
    .locals 4

    .line 1
    const-string v0, "Cannot seek to in media player : "

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "Seek to position : "

    .line 6
    .line 7
    const-string v3, " , state = "

    .line 8
    .line 9
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 26
    .line 27
    sget-object v2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_0

    .line 34
    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p0

    .line 65
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method public final setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setLooping(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set looping : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Cannot get playing state of media player : "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public final setMPlayerState(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaAssetFd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceAssetFd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMediaFd(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceFd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMediaUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceUri()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set surface : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Cannot set surface to media player : "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set volume : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setVolume(FF)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Stop : state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 23
    .line 24
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "Cannot stop media player : "

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
