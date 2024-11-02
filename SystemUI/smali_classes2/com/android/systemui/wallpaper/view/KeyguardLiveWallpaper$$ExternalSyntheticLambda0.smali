.class public final synthetic Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string/jumbo v3, "requestRelease: connState="

    .line 17
    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 32
    .line 33
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v4, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 41
    .line 42
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsReleaseRequested:Z

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 48
    .line 49
    sget-object v3, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->CONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 50
    .line 51
    if-ne v1, v3, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->release()V

    .line 54
    .line 55
    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 64
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v0, "KeyguardLiveWallpaper"

    .line 70
    .line 71
    const-string v3, "attachService"

    .line 72
    .line 73
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperIntent:Landroid/content/Intent;

    .line 79
    .line 80
    new-instance v4, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda2;

    .line 81
    .line 82
    invoke-direct {v4, p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0, v3, v4}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;Landroid/content/Intent;Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$Listener;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 89
    .line 90
    const-string v3, "connect: failed to bind wallpaper. e= "

    .line 91
    .line 92
    monitor-enter v0

    .line 93
    :try_start_2
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 94
    .line 95
    iget-object v4, v4, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    iget-object v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 98
    .line 99
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_2

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 108
    .line 109
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    const-string v5, "connect: failed"

    .line 112
    .line 113
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 114
    .line 115
    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    .line 117
    .line 118
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :try_start_4
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 123
    .line 124
    iget-object v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 125
    .line 126
    const-string v6, "connect: bindService invoked successfully"

    .line 127
    .line 128
    check-cast v4, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 129
    .line 130
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v4, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->CONNECTING:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setConnectionState(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    .line 137
    .line 138
    :try_start_5
    monitor-exit v0

    .line 139
    goto :goto_2

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_3

    .line 142
    :catch_0
    move-exception v1

    .line 143
    iget-object v4, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 144
    .line 145
    iget-object v4, v4, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 146
    .line 147
    iget-object v5, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v4, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 162
    .line 163
    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    :goto_1
    const/4 v1, 0x0

    .line 168
    :goto_2
    if-nez v1, :cond_3

    .line 169
    .line 170
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 171
    .line 172
    :cond_3
    return-void

    .line 173
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 174
    throw p0

    .line 175
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 176
    .line 177
    const-string/jumbo v0, "updateThumbnail: "

    .line 178
    .line 179
    .line 180
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 195
    .line 196
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 199
    .line 200
    const-string v2, "KeyguardLiveWallpaper"

    .line 201
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 208
    .line 209
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 217
    .line 218
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_1

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_1
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 224
    .line 225
    .line 226
    :goto_5
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
