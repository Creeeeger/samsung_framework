.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/graphics/Bitmap;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-interface {v5, v1, v4, v3}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-static {v5}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    move-object v2, v5

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v5, "Failed to get task snapshot, taskId="

    .line 77
    .line 78
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "FreeformContainer"

    .line 89
    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 97
    .line 98
    iput-boolean v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIsVisiblePreview:Z

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 103
    .line 104
    iput-object v2, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "freeform_caption_type"

    .line 113
    .line 114
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    if-ne v1, v4, :cond_4

    .line 121
    .line 122
    move v1, v4

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move v1, v3

    .line 125
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    const v1, 0x1050336

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const v1, 0x105033d

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    iget-object v6, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 153
    .line 154
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    sub-int/2addr v6, v1

    .line 159
    invoke-static {v2, v3, v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    int-to-float v2, v2

    .line 168
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    int-to-float v5, v5

    .line 173
    cmpl-float v6, v2, v5

    .line 174
    .line 175
    const/4 v7, 0x0

    .line 176
    const-string v8, "FreeformThumbnailView"

    .line 177
    .line 178
    if-lez v6, :cond_7

    .line 179
    .line 180
    iget v6, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    .line 181
    .line 182
    int-to-float v6, v6

    .line 183
    cmpl-float v6, v2, v6

    .line 184
    .line 185
    if-lez v6, :cond_9

    .line 186
    .line 187
    const-string v6, "Width recompute"

    .line 188
    .line 189
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    div-float/2addr v2, v5

    .line 193
    cmpl-float v5, v2, v7

    .line 194
    .line 195
    if-nez v5, :cond_6

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    iget v5, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    .line 199
    .line 200
    int-to-float v5, v5

    .line 201
    div-float v2, v5, v2

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    iget v6, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    .line 205
    .line 206
    int-to-float v6, v6

    .line 207
    cmpl-float v6, v5, v6

    .line 208
    .line 209
    if-lez v6, :cond_9

    .line 210
    .line 211
    const-string v6, "Height recompute"

    .line 212
    .line 213
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    div-float/2addr v5, v2

    .line 217
    cmpl-float v2, v5, v7

    .line 218
    .line 219
    if-nez v2, :cond_8

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    iget v2, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    .line 223
    .line 224
    int-to-float v2, v2

    .line 225
    div-float v5, v2, v5

    .line 226
    .line 227
    :goto_3
    move v12, v5

    .line 228
    move v5, v2

    .line 229
    move v2, v12

    .line 230
    :cond_9
    float-to-int v2, v2

    .line 231
    iput v2, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mWidth:I

    .line 232
    .line 233
    float-to-int v5, v5

    .line 234
    iput v5, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mHeight:I

    .line 235
    .line 236
    invoke-static {v1, v2, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iput-object v1, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 241
    .line 242
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 250
    .line 251
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 252
    .line 253
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 260
    .line 261
    iget-object v5, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    .line 262
    .line 263
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    aget v3, v6, v3

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    div-int/lit8 v7, v7, 0x2

    .line 278
    .line 279
    add-int/2addr v7, v3

    .line 280
    aget v3, v6, v4

    .line 281
    .line 282
    iget-object v6, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mPivot:Landroid/graphics/Point;

    .line 283
    .line 284
    invoke-virtual {v6, v7, v3}, Landroid/graphics/Point;->set(II)V

    .line 285
    .line 286
    .line 287
    iget v6, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mHeight:I

    .line 288
    .line 289
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    add-int/2addr v8, v6

    .line 292
    sub-int v9, v3, v8

    .line 293
    .line 294
    iget-object v10, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    .line 295
    .line 296
    iget v11, v10, Landroid/graphics/Rect;->top:I

    .line 297
    .line 298
    sub-int/2addr v9, v11

    .line 299
    if-lez v9, :cond_a

    .line 300
    .line 301
    iget v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMargin:I

    .line 302
    .line 303
    add-int/2addr v8, v0

    .line 304
    sub-int/2addr v3, v8

    .line 305
    goto :goto_5

    .line 306
    :cond_a
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 307
    .line 308
    add-int/2addr v8, v6

    .line 309
    add-int/2addr v8, v3

    .line 310
    iget-object v9, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    .line 311
    .line 312
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 313
    .line 314
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 315
    .line 316
    sub-int/2addr v9, v10

    .line 317
    if-le v8, v9, :cond_b

    .line 318
    .line 319
    sub-int v3, v9, v6

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    add-int/2addr v0, v3

    .line 327
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 328
    .line 329
    add-int/2addr v0, v1

    .line 330
    iget v1, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMargin:I

    .line 331
    .line 332
    add-int v3, v0, v1

    .line 333
    .line 334
    :goto_5
    iget v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mWidth:I

    .line 335
    .line 336
    div-int/lit8 v1, v0, 0x2

    .line 337
    .line 338
    sub-int v6, v7, v1

    .line 339
    .line 340
    iget-object v8, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    .line 341
    .line 342
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 343
    .line 344
    sub-int v10, v6, v9

    .line 345
    .line 346
    if-gez v10, :cond_c

    .line 347
    .line 348
    move v6, v9

    .line 349
    goto :goto_6

    .line 350
    :cond_c
    add-int/2addr v1, v7

    .line 351
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 352
    .line 353
    add-int/2addr v1, v7

    .line 354
    iget-object v8, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    .line 355
    .line 356
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 357
    .line 358
    sub-int v9, v8, v7

    .line 359
    .line 360
    if-le v1, v9, :cond_d

    .line 361
    .line 362
    sub-int/2addr v8, v0

    .line 363
    sub-int v6, v8, v7

    .line 364
    .line 365
    :cond_d
    :goto_6
    iget-object v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    .line 366
    .line 367
    int-to-float v1, v6

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    .line 372
    .line 373
    int-to-float v1, v3

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 375
    .line 376
    .line 377
    iget v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mHeight:I

    .line 378
    .line 379
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    .line 381
    iget v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mWidth:I

    .line 382
    .line 383
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 384
    .line 385
    iget-object v0, v2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    .line 386
    .line 387
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .line 389
    .line 390
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 391
    .line 392
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 393
    .line 394
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 395
    .line 396
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->scheduleAnimation(Z)V

    .line 397
    .line 398
    .line 399
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 400
    .line 401
    if-eqz p0, :cond_e

    .line 402
    .line 403
    const-string p0, "2204"

    .line 404
    .line 405
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_e
    return-void
.end method
