.class public final synthetic Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->f$1:I

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
    iget v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "VideoPlayer"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->f$1:I

    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "startDrawing() mediaPlayer is not prepared"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    iput-boolean p0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string/jumbo p0, "startDrawing() mediaPlayer is null"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v3, "startDrawing() mIsPrepared = "

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ", playTime = "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :try_start_0
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    .line 84
    .line 85
    const/16 v2, 0x3e9

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    .line 95
    .line 96
    :cond_2
    if-lez p0, :cond_3

    .line 97
    .line 98
    int-to-long v3, p0

    .line 99
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p0

    .line 104
    const-string/jumbo v0, "startDrawing() failed start"

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_0
    return-void

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 115
    .line 116
    iget p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda3;->f$1:I

    .line 117
    .line 118
    const-string/jumbo v2, "seekTo: "

    .line 119
    .line 120
    .line 121
    iget-object v3, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 122
    .line 123
    if-nez v3, :cond_4

    .line 124
    .line 125
    const-string/jumbo p0, "seekTo() mediaPlayer is null"

    .line 126
    .line 127
    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 133
    .line 134
    if-nez v3, :cond_5

    .line 135
    .line 136
    const-string/jumbo p0, "seekTo() mediaPlayer is not prepared"

    .line 137
    .line 138
    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 159
    .line 160
    invoke-virtual {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_1
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    const-string p0, "failed seekTo"

    .line 169
    .line 170
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :goto_2
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
