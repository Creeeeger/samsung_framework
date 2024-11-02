.class public final synthetic Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 4
    .line 5
    move-object/from16 v0, p1

    .line 6
    .line 7
    check-cast v0, Landroid/graphics/Bitmap;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v2, "ImageWallpaperRenderer"

    .line 15
    .line 16
    const-string/jumbo v3, "reload texture failed!"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mOnBitmapUpdated:Ljava/util/function/Consumer;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v4, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mColorDecorFilterData:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    xor-int/2addr v4, v3

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget-object v4, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mColorDecorFilterData:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0, v4}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget v4, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mHighlightFilterAmount:I

    .line 51
    .line 52
    if-ltz v4, :cond_3

    .line 53
    .line 54
    invoke-static {v0, v4}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    move-object v4, v0

    .line 59
    move v5, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move-object v4, v0

    .line 62
    move v5, v2

    .line 63
    :goto_2
    iget-object v0, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;

    .line 64
    .line 65
    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;

    .line 66
    .line 67
    iget v7, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->mProgramHandle:I

    .line 68
    .line 69
    const-string v8, "aPosition"

    .line 70
    .line 71
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    iput v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    .line 76
    .line 77
    iget-object v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 78
    .line 79
    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    .line 82
    iget v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    .line 83
    .line 84
    const/4 v7, 0x2

    .line 85
    const/16 v14, 0x1406

    .line 86
    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    iget-object v13, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 91
    .line 92
    const/4 v9, 0x2

    .line 93
    const/16 v10, 0x1406

    .line 94
    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v12, 0x0

    .line 97
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 98
    .line 99
    .line 100
    iget v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    .line 101
    .line 102
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 103
    .line 104
    .line 105
    iget v8, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->mProgramHandle:I

    .line 106
    .line 107
    const-string v9, "aTextureCoordinates"

    .line 108
    .line 109
    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iput v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    .line 114
    .line 115
    iget-object v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 116
    .line 117
    invoke-virtual {v8, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    iget v9, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    .line 121
    .line 122
    iget-object v8, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 123
    .line 124
    move v10, v7

    .line 125
    move v11, v14

    .line 126
    move v12, v15

    .line 127
    move/from16 v13, v16

    .line 128
    .line 129
    move-object v14, v8

    .line 130
    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 131
    .line 132
    .line 133
    iget v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    .line 134
    .line 135
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 136
    .line 137
    .line 138
    const/16 v7, 0xbe2

    .line 139
    .line 140
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 141
    .line 142
    .line 143
    const/16 v7, 0x302

    .line 144
    .line 145
    const/16 v8, 0x303

    .line 146
    .line 147
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 148
    .line 149
    .line 150
    iget v7, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->mProgramHandle:I

    .line 151
    .line 152
    const-string/jumbo v8, "uTexture"

    .line 153
    .line 154
    .line 155
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    iput v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mUniTexture:I

    .line 160
    .line 161
    iget v7, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->mProgramHandle:I

    .line 162
    .line 163
    const-string/jumbo v8, "uNightFilter"

    .line 164
    .line 165
    .line 166
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    iput v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mUniNightFilter:I

    .line 171
    .line 172
    iget v6, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLProgram;->mProgramHandle:I

    .line 173
    .line 174
    const-string/jumbo v7, "uFilterColor"

    .line 175
    .line 176
    .line 177
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    iput v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mUniFilterColor:I

    .line 182
    .line 183
    new-array v6, v3, [I

    .line 184
    .line 185
    const-string v7, "ImageGLWallpaper"

    .line 186
    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_4

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    invoke-static {v3, v6, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 197
    .line 198
    .line 199
    aget v8, v6, v2

    .line 200
    .line 201
    if-nez v8, :cond_5

    .line 202
    .line 203
    const-string/jumbo v0, "setupTexture: glGenTextures() failed"

    .line 204
    .line 205
    .line 206
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_5
    const/16 v9, 0xde1

    .line 211
    .line 212
    :try_start_0
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 213
    .line 214
    .line 215
    invoke-static {v9, v2, v4, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 216
    .line 217
    .line 218
    const/16 v8, 0x2801

    .line 219
    .line 220
    const/16 v10, 0x2601

    .line 221
    .line 222
    invoke-static {v9, v8, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 223
    .line 224
    .line 225
    const/16 v8, 0x2800

    .line 226
    .line 227
    invoke-static {v9, v8, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 228
    .line 229
    .line 230
    aget v6, v6, v2

    .line 231
    .line 232
    iput v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageGLWallpaper;->mTextureId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v8, "Failed uploading texture: "

    .line 239
    .line 240
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_6
    :goto_3
    const-string/jumbo v0, "setupTexture: invalid bitmap"

    .line 259
    .line 260
    .line 261
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :goto_4
    if-eqz v4, :cond_b

    .line 265
    .line 266
    iget v0, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 267
    .line 268
    const/4 v6, 0x2

    .line 269
    if-ne v0, v6, :cond_7

    .line 270
    .line 271
    move v0, v3

    .line 272
    goto :goto_5

    .line 273
    :cond_7
    move v0, v2

    .line 274
    :goto_5
    if-nez v0, :cond_9

    .line 275
    .line 276
    iget-boolean v0, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    .line 277
    .line 278
    if-eqz v0, :cond_8

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_8
    move v0, v2

    .line 282
    goto :goto_7

    .line 283
    :cond_9
    :goto_6
    move v0, v3

    .line 284
    :goto_7
    iget-object v6, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 285
    .line 286
    if-eqz v6, :cond_b

    .line 287
    .line 288
    if-nez v0, :cond_b

    .line 289
    .line 290
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-virtual {v6, v4, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Landroid/graphics/Rect;

    .line 298
    .line 299
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    invoke-direct {v0, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 308
    .line 309
    .line 310
    iget-object v2, v6, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 311
    .line 312
    iget-object v1, v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 313
    .line 314
    if-nez v2, :cond_a

    .line 315
    .line 316
    invoke-virtual {v1, v3, v0, v0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_a
    invoke-virtual {v1, v3, v0, v2}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 321
    .line 322
    .line 323
    :cond_b
    :goto_8
    if-eqz v5, :cond_c

    .line 324
    .line 325
    if-eqz v4, :cond_c

    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_c

    .line 332
    .line 333
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 334
    .line 335
    .line 336
    :cond_c
    return-void
.end method
