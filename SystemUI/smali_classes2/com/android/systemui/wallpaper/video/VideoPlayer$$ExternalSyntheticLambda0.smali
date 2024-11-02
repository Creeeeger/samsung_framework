.class public final synthetic Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field public final synthetic f$1:Landroid/content/res/AssetFileDescriptor;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Landroid/view/Surface;

.field public final synthetic f$5:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/AssetFileDescriptor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$3:Landroid/net/Uri;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$4:Landroid/view/Surface;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/AssetFileDescriptor;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$3:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$4:Landroid/view/Surface;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v6, "initFile() filePath = "

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v6, ", fd = "

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v6, ", uri = "

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "VideoPlayer"

    .line 47
    .line 48
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    iput-boolean v5, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsRenderingStarted:Z

    .line 53
    .line 54
    iput-boolean v5, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    iput-boolean v5, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 58
    .line 59
    new-instance v7, Lcom/samsung/android/media/SemMediaPlayer;

    .line 60
    .line 61
    invoke-direct {v7}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v7, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 65
    .line 66
    const v8, 0x88bc

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 70
    .line 71
    .line 72
    iget-object v7, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 73
    .line 74
    const v8, 0x9088

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 78
    .line 79
    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 86
    .line 87
    iget-object v5, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    .line 90
    .line 91
    .line 92
    if-eqz p0, :cond_1

    .line 93
    .line 94
    iget-object v4, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 95
    .line 96
    invoke-virtual {v4, p0}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_2

    .line 104
    .line 105
    new-instance p0, Ljava/io/File;

    .line 106
    .line 107
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/io/FileInputStream;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    if-eqz v1, :cond_3

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    move-object v1, p0

    .line 144
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    if-eqz v3, :cond_4

    .line 149
    .line 150
    iget-object p0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    const-string/jumbo p0, "video file is invalid"

    .line 159
    .line 160
    .line 161
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    const-string p0, "mSemMediaPlayer is not exist"

    .line 170
    .line 171
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :goto_0
    return-void
.end method
