.class public final Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "capture end "

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "BlurredWallpaper"

    .line 28
    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "initMatrix: view width = "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ", view height = "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " , bitmap = "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " , "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    iget v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    iget-object v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapWidth:I

    .line 115
    .line 116
    iget-object v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapHeight:I

    .line 123
    .line 124
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapWidth:I

    .line 125
    .line 126
    iget v3, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 127
    .line 128
    mul-int v4, v2, v3

    .line 129
    .line 130
    iget v5, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 131
    .line 132
    mul-int v6, v5, v1

    .line 133
    .line 134
    if-le v4, v6, :cond_2

    .line 135
    .line 136
    int-to-float v4, v3

    .line 137
    int-to-float v6, v1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    int-to-float v4, v5

    .line 140
    int-to-float v6, v2

    .line 141
    :goto_0
    div-float/2addr v4, v6

    .line 142
    int-to-float v5, v5

    .line 143
    int-to-float v2, v2

    .line 144
    mul-float/2addr v2, v4

    .line 145
    sub-float/2addr v5, v2

    .line 146
    const/high16 v2, 0x3f000000    # 0.5f

    .line 147
    .line 148
    mul-float/2addr v5, v2

    .line 149
    int-to-float v3, v3

    .line 150
    int-to-float v1, v1

    .line 151
    mul-float/2addr v1, v4

    .line 152
    sub-float/2addr v3, v1

    .line 153
    mul-float/2addr v3, v2

    .line 154
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iput v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDx:I

    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iput v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDy:I

    .line 165
    .line 166
    iget-object v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 167
    .line 168
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 172
    .line 173
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDx:I

    .line 174
    .line 175
    int-to-float v2, v2

    .line 176
    iget v6, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDy:I

    .line 177
    .line 178
    int-to-float v6, v6

    .line 179
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 180
    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v2, "mBitmapWidth = "

    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapWidth:I

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v2, "mBitmapHeight = "

    .line 204
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapHeight:I

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v2, "mViewWidth = "

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v2, "mViewHeight = "

    .line 242
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string/jumbo v1, "scale = "

    .line 261
    .line 262
    .line 263
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v1, "dx = "

    .line 279
    .line 280
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v1, "dy = "

    .line 296
    .line 297
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 313
    .line 314
    .line 315
    :goto_2
    return-void
.end method
