.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "ImageWallpaper[VideoGLEngine]"

    .line 4
    .line 5
    const-string v2, "ImageWallpaperVideoRenderer"

    .line 6
    .line 7
    const/high16 v3, 0x3f000000    # 0.5f

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->start()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 38
    .line 39
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 50
    .line 51
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperRect()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->calculateCropHint(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setBoundRect(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 71
    .line 72
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaPath(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->start()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 100
    .line 101
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    const-string/jumbo p0, "videoFilePath is NULL"

    .line 114
    .line 115
    .line 116
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaPath(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void

    .line 126
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 129
    .line 130
    if-eqz p0, :cond_3

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 133
    .line 134
    if-eqz p0, :cond_3

    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    .line 138
    .line 139
    .line 140
    :cond_3
    return-void

    .line 141
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 144
    .line 145
    if-eqz p0, :cond_4

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 148
    .line 149
    if-eqz p0, :cond_4

    .line 150
    .line 151
    invoke-virtual {p0, v3}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void

    .line 155
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v2, " updatePluginWallpaper "

    .line 164
    .line 165
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 169
    .line 170
    iget v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, " , "

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 181
    .line 182
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 183
    .line 184
    check-cast v2, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 201
    .line 202
    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 205
    .line 206
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    const/16 v2, 0x17

    .line 213
    .line 214
    if-eq v1, v0, :cond_6

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 217
    .line 218
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 219
    .line 220
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    iput v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 229
    .line 230
    iget v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 231
    .line 232
    const/4 v1, -0x2

    .line 233
    if-eq v0, v1, :cond_7

    .line 234
    .line 235
    if-eq v2, v0, :cond_7

    .line 236
    .line 237
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 238
    .line 239
    if-eqz v0, :cond_5

    .line 240
    .line 241
    const/16 v0, 0x11

    .line 242
    .line 243
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 247
    .line 248
    .line 249
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 262
    .line 263
    check-cast p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 274
    .line 275
    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    .line 276
    .line 277
    if-ne v1, v2, :cond_7

    .line 278
    .line 279
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    const/4 v2, 0x4

    .line 288
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    .line 293
    .line 294
    :cond_7
    :goto_1
    return-void

    .line 295
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 296
    .line 297
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 298
    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->stop()V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    const-string v1, "onSurfaceDestroyed"

    .line 310
    .line 311
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 315
    .line 316
    if-eqz v1, :cond_8

    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    .line 319
    .line 320
    .line 321
    :cond_8
    const/4 v1, 0x0

    .line 322
    iput-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 323
    .line 324
    iput-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->finish()V

    .line 329
    .line 330
    .line 331
    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 332
    .line 333
    :cond_9
    return-void

    .line 334
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;

    .line 335
    .line 336
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 337
    .line 338
    if-eqz v0, :cond_d

    .line 339
    .line 340
    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 341
    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    .line 345
    .line 346
    .line 347
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 348
    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    const-string/jumbo v0, "pause"

    .line 353
    .line 354
    .line 355
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 359
    .line 360
    if-eqz v0, :cond_c

    .line 361
    .line 362
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 363
    .line 364
    if-nez v0, :cond_b

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    .line 368
    .line 369
    .line 370
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 371
    .line 372
    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_c
    :goto_3
    const-string/jumbo p0, "pause: Layer is null."

    .line 378
    .line 379
    .line 380
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    :cond_d
    :goto_4
    return-void

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
