.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$1:Z

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, ", AOD state = "

    .line 5
    .line 6
    const-string/jumbo v3, "onVisibilityChanged : visible = "

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$1:Z

    .line 18
    .line 19
    sget v4, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->MIN_SURFACE_WIDTH:I

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 36
    .line 37
    const-string v3, "ImageWallpaper[GifGLEngine]"

    .line 38
    .line 39
    invoke-static {v4, v2, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPm:Landroid/os/PowerManager;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v5, " onVisibilityChanged: "

    .line 61
    .line 62
    const-string v6, ", isInteractive : "

    .line 63
    .line 64
    const-string v7, ", aodState : "

    .line 65
    .line 66
    invoke-static {v5, p0, v6, v3, v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "ImageWallpaperGifRenderer"

    .line 71
    .line 72
    invoke-static {v5, v4, v6}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 76
    .line 77
    iput-boolean p0, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mVisible:Z

    .line 78
    .line 79
    if-eqz p0, :cond_1

    .line 80
    .line 81
    if-ne v4, v1, :cond_0

    .line 82
    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->start()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->stop()V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    return-void

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 95
    .line 96
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 97
    .line 98
    iget-boolean p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$1:Z

    .line 99
    .line 100
    sget v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateOnSwitchDisplayChanged(Z)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 107
    .line 108
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 109
    .line 110
    iget-boolean p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$1:Z

    .line 111
    .line 112
    invoke-static {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->$r8$lambda$MTjZ9OcqEdrPyZzafR7xU6HwKHk(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;Z)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;

    .line 117
    .line 118
    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 119
    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;->f$1:Z

    .line 121
    .line 122
    sget v4, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->MIN_SURFACE_WIDTH:I

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, ", isInteractive = "

    .line 136
    .line 137
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPm:Landroid/os/PowerManager;

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, " , mIsPauseByCommand = "

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-boolean v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 165
    .line 166
    const-string v3, "ImageWallpaper[VideoGLEngine]"

    .line 167
    .line 168
    invoke-static {v4, v2, v3}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    if-eqz p0, :cond_5

    .line 172
    .line 173
    iget p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    if-ne p0, v1, :cond_3

    .line 177
    .line 178
    move p0, v2

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    const/4 p0, 0x0

    .line 181
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 182
    .line 183
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPm:Landroid/os/PowerManager;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    xor-int/2addr v2, v3

    .line 190
    and-int/2addr p0, v2

    .line 191
    if-eqz p0, :cond_4

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_4
    iget-boolean p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 195
    .line 196
    if-nez p0, :cond_6

    .line 197
    .line 198
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->start()V

    .line 201
    .line 202
    .line 203
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 212
    .line 213
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_5
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->stop()V

    .line 223
    .line 224
    .line 225
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    const/4 v2, 0x3

    .line 236
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    .line 241
    .line 242
    :cond_6
    :goto_3
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
