.class public final Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActionViewIdMap:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentText:Landroid/widget/TextView;

.field public mDisplayX:I

.field public mDisplayY:I

.field public mDurationText:Landroid/widget/TextView;

.field public final mFloatingPanelView:Landroid/widget/LinearLayout;

.field public final mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

.field public mMediaArtistText:Landroid/widget/TextView;

.field public mMediaController:Landroid/media/session/MediaController;

.field public mMediaImageView:Landroid/widget/ImageView;

.field public mMediaNextButton:Landroid/widget/LinearLayout;

.field public mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

.field public mMediaPanelPopupType:I

.field public mMediaPauseButton:Landroid/widget/LinearLayout;

.field public mMediaPreviousButton:Landroid/widget/LinearLayout;

.field public mMediaResumeButton:Landroid/widget/LinearLayout;

.field public mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

.field public mMediaSeekNextButton:Landroid/widget/LinearLayout;

.field public mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

.field public mMediaTitleText:Landroid/widget/TextView;

.field public mMetadataChanged:Z

.field public mPlaybackState:Landroid/media/session/PlaybackState;

.field public final mSeekBarControlListener:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;

.field public mSeekBarEnabled:Z

.field public mSeekBarFromUser:Z

.field public mSeekBarText:Landroid/widget/TextView;

.field public mSeekPosition:J

.field public final mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 16
    .line 17
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarControlListener:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;

    .line 23
    .line 24
    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    .line 27
    .line 28
    .line 29
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    new-instance v3, Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    .line 37
    .line 38
    const-wide/16 v4, 0x10

    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const v5, 0x7f0a008d

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v6, 0x20

    .line 51
    .line 52
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const v6, 0x7f0a008c

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v7, 0x204

    .line 63
    .line 64
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const v7, 0x7f0a0088

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v8, 0x202

    .line 75
    .line 76
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const v8, 0x7f0a0083

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v9, 0x100

    .line 87
    .line 88
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const v9, 0x7f0a008a

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const v10, 0x7f0a0089

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    iput-object v11, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    .line 109
    .line 110
    invoke-direct {v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    .line 111
    .line 112
    .line 113
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    .line 114
    .line 115
    move-object/from16 v3, p3

    .line 116
    .line 117
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 118
    .line 119
    const v3, 0x7f0a0669

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroidx/appcompat/widget/SeslSeekBar;

    .line 127
    .line 128
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 129
    .line 130
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroid/widget/LinearLayout;

    .line 135
    .line 136
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroid/widget/LinearLayout;

    .line 143
    .line 144
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Landroid/widget/LinearLayout;

    .line 159
    .line 160
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 161
    .line 162
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 163
    .line 164
    iput-object v2, v3, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 165
    .line 166
    const v2, 0x7f0a0be3

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 176
    .line 177
    const v2, 0x7f0a00f8

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    .line 187
    .line 188
    const v2, 0x7f0a02d9

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    .line 198
    .line 199
    const v2, 0x7f0a0387

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Landroid/widget/TextView;

    .line 207
    .line 208
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    .line 209
    .line 210
    const v2, 0x7f0a09c5

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Landroid/widget/TextView;

    .line 218
    .line 219
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    .line 220
    .line 221
    const v2, 0x7f0a0651

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Landroid/widget/ImageView;

    .line 229
    .line 230
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    .line 231
    .line 232
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Landroid/widget/LinearLayout;

    .line 237
    .line 238
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Landroid/widget/LinearLayout;

    .line 245
    .line 246
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    const-string/jumbo v2, "window"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroid/view/WindowManager;

    .line 256
    .line 257
    new-instance v3, Landroid/graphics/Point;

    .line 258
    .line 259
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 267
    .line 268
    .line 269
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 270
    .line 271
    iput v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayX:I

    .line 272
    .line 273
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 274
    .line 275
    iput v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayY:I

    .line 276
    .line 277
    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    const v15, 0x7f0a080d

    .line 282
    .line 283
    .line 284
    const v10, 0x7f0a080c

    .line 285
    .line 286
    .line 287
    const v7, 0x7f0a0a46

    .line 288
    .line 289
    .line 290
    const v3, 0x7f0a0657

    .line 291
    .line 292
    .line 293
    const-wide v12, 0x3ff199999999999aL    # 1.1

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    const v4, 0x7f0a09c6

    .line 299
    .line 300
    .line 301
    const v14, 0x7f0a09c7

    .line 302
    .line 303
    .line 304
    const-wide/16 v8, 0x0

    .line 305
    .line 306
    if-eqz v2, :cond_0

    .line 307
    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;

    .line 313
    .line 314
    invoke-direct {v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const-wide v5, 0x4004cccccccccccdL    # 2.6

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v8, v9, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v8, v9, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const-wide v2, 0x3ff547ae147ae148L    # 1.33

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v8, v9, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 364
    .line 365
    const-wide v2, 0x4018f5c28f5c28f6L    # 6.24

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    const-wide v4, 0x401e28f5c28f5c29L    # 7.54

    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 383
    .line 384
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 392
    .line 393
    const-wide v2, 0x400e28f5c28f5c29L    # 3.77

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    const-wide v4, 0x4012333333333333L    # 4.55

    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 411
    .line 412
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 420
    .line 421
    const-wide v2, 0x4012b851eb851eb8L    # 4.68

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    const-wide v4, 0x40165c28f5c28f5cL    # 5.59

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 439
    .line 440
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .line 446
    .line 447
    const v5, 0x7f0a07da

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    const-wide v2, 0x4013333333333333L    # 4.8

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    const-wide v4, 0x4017333333333333L    # 5.8

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .line 470
    .line 471
    const v6, 0x7f0a08c4

    .line 472
    .line 473
    .line 474
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const-wide v2, 0x4007333333333333L    # 2.9

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    .line 495
    .line 496
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .line 513
    .line 514
    const v2, 0x7f0a0a47

    .line 515
    .line 516
    .line 517
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    const-wide v2, 0x400ccccccccccccdL    # 3.6

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    const-wide v4, 0x4011333333333333L    # 4.3

    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    .line 548
    .line 549
    const v1, 0x7f0a01fc

    .line 550
    .line 551
    .line 552
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    const-wide v2, 0x401619999999999aL    # 5.525

    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    .line 567
    .line 568
    const v1, 0x7f0a01fd

    .line 569
    .line 570
    .line 571
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    const-wide v4, 0x40156147ae147ae1L    # 5.345

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v4, v5, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    .line 586
    .line 587
    const v1, 0x7f0a01fe

    .line 588
    .line 589
    .line 590
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-virtual {v0, v4, v5, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 595
    .line 596
    .line 597
    move-result-object v4

    .line 598
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    .line 600
    .line 601
    const v1, 0x7f0a01ff

    .line 602
    .line 603
    .line 604
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :cond_0
    const v5, 0x7f0a07da

    .line 618
    .line 619
    .line 620
    const v6, 0x7f0a08c4

    .line 621
    .line 622
    .line 623
    const v16, 0x7f0a01fc

    .line 624
    .line 625
    .line 626
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 627
    .line 628
    const-wide v18, 0x4020b33333333333L    # 8.35

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    const-wide/16 v20, 0x0

    .line 634
    .line 635
    const-wide v22, 0x4020b33333333333L    # 8.35

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    const-wide/16 v24, 0x0

    .line 641
    .line 642
    move-object/from16 v1, p1

    .line 643
    .line 644
    const v17, 0x7f0a0a47

    .line 645
    .line 646
    .line 647
    move v15, v4

    .line 648
    move-wide/from16 v3, v18

    .line 649
    .line 650
    move-wide/from16 v5, v20

    .line 651
    .line 652
    move-wide v12, v8

    .line 653
    move v9, v7

    .line 654
    move-wide/from16 v7, v22

    .line 655
    .line 656
    move-wide/from16 v9, v24

    .line 657
    .line 658
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 659
    .line 660
    .line 661
    const v1, 0x7f0a066f

    .line 662
    .line 663
    .line 664
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 669
    .line 670
    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    const-wide v2, 0x4008cccccccccccdL    # 3.1

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    const-wide v2, 0x3ff199999999999aL    # 1.1

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    .line 708
    .line 709
    const v1, 0x7f0a0657

    .line 710
    .line 711
    .line 712
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    const-wide v2, 0x400599999999999aL    # 2.7

    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    .line 727
    .line 728
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 729
    .line 730
    const-wide v2, 0x402cdc28f5c28f5cL    # 14.43

    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    const-wide v4, 0x4017eb851eb851ecL    # 5.98

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 741
    .line 742
    .line 743
    move-result-object v6

    .line 744
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    .line 746
    .line 747
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 748
    .line 749
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    .line 755
    .line 756
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 757
    .line 758
    const-wide v2, 0x402447ae147ae148L    # 10.14

    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    const-wide v4, 0x4010a3d70a3d70a4L    # 4.16

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 776
    .line 777
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    .line 783
    .line 784
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 785
    .line 786
    const-wide v2, 0x4025947ae147ae14L    # 10.79

    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    const-wide v4, 0x4011ae147ae147aeL    # 4.42

    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    .line 798
    .line 799
    move-result-object v6

    .line 800
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    .line 802
    .line 803
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 804
    .line 805
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    .line 811
    .line 812
    const v1, 0x7f0a07da

    .line 813
    .line 814
    .line 815
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    const-wide v2, 0x4026333333333333L    # 11.1

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    const-wide v4, 0x4012666666666666L    # 4.6

    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 830
    .line 831
    .line 832
    move-result-object v6

    .line 833
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    .line 835
    .line 836
    const v1, 0x7f0a08c4

    .line 837
    .line 838
    .line 839
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    .line 849
    .line 850
    const v1, 0x7f0a0a46

    .line 851
    .line 852
    .line 853
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    const-wide v2, 0x401f333333333333L    # 7.8

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    const-wide v4, 0x400999999999999aL    # 3.2

    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 868
    .line 869
    .line 870
    move-result-object v6

    .line 871
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    .line 873
    .line 874
    const v1, 0x7f0a080c

    .line 875
    .line 876
    .line 877
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    .line 887
    .line 888
    const v1, 0x7f0a0a47

    .line 889
    .line 890
    .line 891
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    const-wide v2, 0x402099999999999aL    # 8.3

    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    const-wide v4, 0x400b333333333333L    # 3.4

    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 906
    .line 907
    .line 908
    move-result-object v6

    .line 909
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    .line 911
    .line 912
    const v1, 0x7f0a080d

    .line 913
    .line 914
    .line 915
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    .line 925
    .line 926
    const v1, 0x7f0a01fc

    .line 927
    .line 928
    .line 929
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    const-wide v2, 0x401e570a3d70a3d7L    # 7.585

    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    .line 944
    .line 945
    const v1, 0x7f0a01fd

    .line 946
    .line 947
    .line 948
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    const-wide v4, 0x401ca8f5c28f5c29L    # 7.165

    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 958
    .line 959
    .line 960
    move-result-object v6

    .line 961
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    .line 963
    .line 964
    const v1, 0x7f0a01fe

    .line 965
    .line 966
    .line 967
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    .line 977
    .line 978
    const v1, 0x7f0a01ff

    .line 979
    .line 980
    .line 981
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 986
    .line 987
    .line 988
    move-result-object v2

    .line 989
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    .line 991
    .line 992
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->setupButtons()V

    .line 993
    .line 994
    .line 995
    return-void
.end method

.method public static makeCurrentText(I)Ljava/lang/String;
    .locals 6

    .line 1
    div-int/lit16 p0, p0, 0x3e8

    .line 2
    .line 3
    div-int/lit16 v0, p0, 0xe10

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const-string v2, ":"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v3, "0"

    .line 33
    .line 34
    const/16 v4, 0xa

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    div-int/lit8 v1, p0, 0x3c

    .line 39
    .line 40
    rem-int/lit8 v1, v1, 0x3c

    .line 41
    .line 42
    if-ge v1, v4, :cond_1

    .line 43
    .line 44
    invoke-static {v3, v1, v2}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    div-int/lit8 v5, p0, 0x3c

    .line 55
    .line 56
    rem-int/lit8 v5, v5, 0x3c

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    rem-int/lit8 p0, p0, 0x3c

    .line 69
    .line 70
    if-ge p0, v4, :cond_2

    .line 71
    .line 72
    invoke-static {v3, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_2
    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static makeDurationText(J)Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0xe10

    .line 5
    .line 6
    div-long v0, p0, v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    const-string v4, ":"

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, v3

    .line 35
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v2, "0"

    .line 40
    .line 41
    const-wide/16 v5, 0xa

    .line 42
    .line 43
    const-wide/16 v7, 0x3c

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    div-long v9, p0, v7

    .line 48
    .line 49
    rem-long/2addr v9, v7

    .line 50
    cmp-long v1, v9, v5

    .line 51
    .line 52
    if-gez v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    div-long v9, p0, v7

    .line 66
    .line 67
    rem-long/2addr v9, v7

    .line 68
    :goto_1
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    rem-long/2addr p0, v7

    .line 79
    cmp-long v3, p0, v5

    .line 80
    .line 81
    if-gez v3, :cond_2

    .line 82
    .line 83
    invoke-static {v2, p0, p1}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_2
    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method


# virtual methods
.method public final checkPlaybackPosition(J)V
    .locals 2

    .line 1
    const-string v0, "FlexMediaPanel"

    .line 2
    .line 3
    const-string v1, "MediaPanel checkPlaybackPosition"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final clearController()V
    .locals 2

    .line 1
    const-string v0, "FlexMediaPanel"

    .line 2
    .line 3
    const-string v1, "MediaPanel clearController"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayX:I

    .line 4
    .line 5
    int-to-double v1, v1

    .line 6
    mul-double/2addr v1, p1

    .line 7
    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    div-double/2addr v1, p1

    .line 10
    double-to-int v1, v1

    .line 11
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayY:I

    .line 12
    .line 13
    int-to-double v2, p0

    .line 14
    mul-double/2addr v2, p3

    .line 15
    div-double/2addr v2, p1

    .line 16
    double-to-int p0, v2

    .line 17
    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final onClickButton(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    const-string v1, "FlexMediaPanel"

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "MediaPanel onClick mMediaPauseButton mMediaController : "

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", logging : "

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ", mPlaybackState : "

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const v0, 0x7f0a008d

    .line 75
    .line 76
    .line 77
    if-ne p1, v0, :cond_1

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_1
    const v0, 0x7f0a008c

    .line 91
    .line 92
    .line 93
    if-ne p1, v0, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_2
    const v0, 0x7f0a0088

    .line 107
    .line 108
    .line 109
    if-ne p1, v0, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_3
    const v0, 0x7f0a0083

    .line 123
    .line 124
    .line 125
    if-ne p1, v0, :cond_4

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_4
    const v0, 0x7f0a0089

    .line 139
    .line 140
    .line 141
    const-wide/16 v3, 0xa

    .line 142
    .line 143
    const-wide/16 v5, 0x2710

    .line 144
    .line 145
    const-wide/16 v7, 0x0

    .line 146
    .line 147
    if-ne p1, v0, :cond_8

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    if-nez p1, :cond_5

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    const-string v9, "android.media.metadata.DURATION"

    .line 169
    .line 170
    invoke-virtual {p1, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v9

    .line 174
    iget-wide v11, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    .line 175
    .line 176
    cmp-long p1, v11, v7

    .line 177
    .line 178
    if-ltz p1, :cond_7

    .line 179
    .line 180
    add-long/2addr v0, v5

    .line 181
    cmp-long p1, v0, v9

    .line 182
    .line 183
    if-gez p1, :cond_7

    .line 184
    .line 185
    add-long/2addr v11, v3

    .line 186
    iput-wide v11, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    .line 187
    .line 188
    if-lez p1, :cond_6

    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1, v9, v10}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    add-long/2addr v0, v5

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 214
    .line 215
    .line 216
    :goto_0
    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onMediaPanelPopupShow(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    :goto_1
    return-void

    .line 222
    :cond_8
    const v0, 0x7f0a008a

    .line 223
    .line 224
    .line 225
    if-ne p1, v0, :cond_b

    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 230
    .line 231
    .line 232
    move-result-wide v0

    .line 233
    iget-wide v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    .line 234
    .line 235
    cmp-long p1, v9, v7

    .line 236
    .line 237
    if-gtz p1, :cond_a

    .line 238
    .line 239
    sub-long/2addr v0, v5

    .line 240
    cmp-long p1, v0, v7

    .line 241
    .line 242
    if-lez p1, :cond_a

    .line 243
    .line 244
    sub-long/2addr v9, v3

    .line 245
    iput-wide v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    .line 246
    .line 247
    if-gez p1, :cond_9

    .line 248
    .line 249
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p1, v7, v8}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    sub-long/2addr v0, v5

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 273
    .line 274
    .line 275
    :goto_2
    const/4 p1, 0x2

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onMediaPanelPopupShow(I)V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_a
    return-void

    .line 281
    :cond_b
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 282
    .line 283
    if-eqz p1, :cond_c

    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 286
    .line 287
    new-instance p1, Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string/jumbo v0, "packageName"

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    const-string p2, "F003"

    .line 307
    .line 308
    invoke-static {p2, p0, p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    .line 310
    .line 311
    :cond_c
    return-void

    .line 312
    :cond_d
    :goto_4
    const-string p0, "MediaPanel onClickButton mMediaController or getPlaybackState == null"

    .line 313
    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method public final onMediaPanelPopupShow(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopupType:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    .line 17
    .line 18
    .line 19
    :cond_1
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 20
    .line 21
    if-ne p1, v2, :cond_2

    .line 22
    .line 23
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;-><init>(Landroid/content/Context;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopupType:I

    .line 47
    .line 48
    if-ne p1, v2, :cond_4

    .line 49
    .line 50
    iget-wide v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    .line 51
    .line 52
    long-to-int p1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget-wide v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    .line 55
    .line 56
    long-to-int p1, v3

    .line 57
    mul-int/lit8 p1, p1, -0x1

    .line 58
    .line 59
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const v4, 0x7f110004

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mSeekTextView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 p0, 0x2bc

    .line 86
    .line 87
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final setupButtons()V
    .locals 3

    .line 1
    const-string v0, "FlexMediaPanel"

    .line 2
    .line 3
    const-string v1, "MediaPanel setupButtons"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    const/4 v2, 0x5

    .line 68
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final updateImmersiveState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 17
    .line 18
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 37
    .line 38
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final updateMediaPanel()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 4
    .line 5
    const-string v2, "FlexMediaPanel"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, "MediaPanel updateMediaPanel mMediaController == null"

    .line 10
    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string v0, "MediaPanel updateMediaPanel getPlaybackState == null"

    .line 24
    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "MediaPanel updateMediaPanel playbackState.getState : "

    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", mPlaybackState.getPosition : "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v3, 0x1

    .line 73
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    .line 79
    .line 80
    const-string v6, "android.media.metadata.ARTIST"

    .line 81
    .line 82
    invoke-virtual {v1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    const-string v5, "android.media.metadata.ALBUM_ART"

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    .line 101
    .line 102
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    .line 109
    .line 110
    const v6, 0x7f080730

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    const-string v5, "android.media.metadata.TITLE"

    .line 121
    .line 122
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_4

    .line 127
    .line 128
    const-string v5, "android.media.metadata.DISPLAY_TITLE"

    .line 129
    .line 130
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    :cond_4
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_5

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 157
    .line 158
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 159
    .line 160
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    const v1, 0x3ecccccd    # 0.4f

    .line 175
    .line 176
    .line 177
    const-wide/16 v7, 0x0

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    const-string v9, "android.media.metadata.DURATION"

    .line 181
    .line 182
    iget-object v10, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    if-nez v10, :cond_6

    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_6
    iget-object v11, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    .line 189
    .line 190
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    new-instance v13, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    move v14, v3

    .line 200
    :goto_2
    if-ge v14, v12, :cond_a

    .line 201
    .line 202
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v16

    .line 210
    check-cast v16, Ljava/lang/Long;

    .line 211
    .line 212
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 213
    .line 214
    .line 215
    move-result-wide v16

    .line 216
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    check-cast v15, Landroid/widget/LinearLayout;

    .line 221
    .line 222
    and-long v16, v5, v16

    .line 223
    .line 224
    cmp-long v7, v16, v7

    .line 225
    .line 226
    if-eqz v7, :cond_7

    .line 227
    .line 228
    const/4 v8, 0x1

    .line 229
    goto :goto_3

    .line 230
    :cond_7
    move v8, v3

    .line 231
    :goto_3
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 232
    .line 233
    .line 234
    if-eqz v7, :cond_8

    .line 235
    .line 236
    const/4 v7, 0x1

    .line 237
    goto :goto_4

    .line 238
    :cond_8
    move v7, v3

    .line 239
    :goto_4
    if-eqz v7, :cond_9

    .line 240
    .line 241
    const/high16 v7, 0x3f800000    # 1.0f

    .line 242
    .line 243
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_9
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 255
    .line 256
    .line 257
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    const-wide/16 v7, 0x0

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v6, "action count : "

    .line 265
    .line 266
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v6, " enable buttons : "

    .line 273
    .line 274
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 288
    .line 289
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    if-eqz v5, :cond_b

    .line 294
    .line 295
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 296
    .line 297
    .line 298
    move-result-wide v5

    .line 299
    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 300
    .line 301
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 302
    .line 303
    .line 304
    move-result-wide v7

    .line 305
    long-to-int v7, v7

    .line 306
    invoke-virtual {v0, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekButton(IJ)V

    .line 307
    .line 308
    .line 309
    :cond_b
    :goto_6
    const/4 v5, 0x3

    .line 310
    :try_start_0
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 311
    .line 312
    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    const/16 v7, 0x8

    .line 317
    .line 318
    if-nez v6, :cond_c

    .line 319
    .line 320
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 321
    .line 322
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 326
    .line 327
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 331
    .line 332
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 333
    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_c
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 337
    .line 338
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eq v1, v5, :cond_e

    .line 343
    .line 344
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 345
    .line 346
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    const/4 v6, 0x6

    .line 351
    if-ne v1, v6, :cond_d

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_d
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 355
    .line 356
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 360
    .line 361
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_e
    :goto_7
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 366
    .line 367
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 371
    .line 372
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :catch_0
    const-string v1, "MediaPanel updatePlayPauseIcon mPlaybackState.getState is null"

    .line 377
    .line 378
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    :goto_8
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 388
    .line 389
    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getActions()J

    .line 390
    .line 391
    .line 392
    move-result-wide v6

    .line 393
    const-wide/16 v10, 0x100

    .line 394
    .line 395
    and-long/2addr v6, v10

    .line 396
    const-wide/16 v10, 0x0

    .line 397
    .line 398
    cmp-long v6, v6, v10

    .line 399
    .line 400
    if-eqz v6, :cond_f

    .line 401
    .line 402
    const/4 v6, 0x1

    .line 403
    goto :goto_9

    .line 404
    :cond_f
    move v6, v3

    .line 405
    :goto_9
    const-string/jumbo v7, "updateSeekbarInfo isSupportSeekBar : "

    .line 406
    .line 407
    .line 408
    invoke-static {v7, v6, v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const v7, 0x7f0605da

    .line 412
    .line 413
    .line 414
    if-eqz v1, :cond_13

    .line 415
    .line 416
    if-eqz v6, :cond_13

    .line 417
    .line 418
    invoke-virtual {v1, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 419
    .line 420
    .line 421
    move-result-wide v8

    .line 422
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 425
    .line 426
    .line 427
    move-result-wide v10

    .line 428
    long-to-int v1, v10

    .line 429
    const-wide/16 v10, 0x0

    .line 430
    .line 431
    cmp-long v6, v8, v10

    .line 432
    .line 433
    if-lez v6, :cond_10

    .line 434
    .line 435
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    .line 436
    .line 437
    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeCurrentText(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    .line 445
    .line 446
    invoke-static {v8, v9}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeDurationText(J)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    .line 455
    .line 456
    const-string v6, ""

    .line 457
    .line 458
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    .line 460
    .line 461
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    .line 462
    .line 463
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string v6, "MediaPanel updateSeekbarInfo duration : "

    .line 469
    .line 470
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    const-wide/16 v10, 0x64

    .line 484
    .line 485
    cmp-long v1, v8, v10

    .line 486
    .line 487
    if-gtz v1, :cond_11

    .line 488
    .line 489
    const-string v1, "MediaPanel updateSeekbarInfo hide seekbar"

    .line 490
    .line 491
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    iput-boolean v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 495
    .line 496
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 497
    .line 498
    invoke-static {v7, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 503
    .line 504
    .line 505
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 506
    .line 507
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 511
    .line 512
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 513
    .line 514
    .line 515
    goto :goto_b

    .line 516
    :cond_11
    const/4 v1, 0x1

    .line 517
    iput-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 518
    .line 519
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 520
    .line 521
    const v6, 0x7f0605d9

    .line 522
    .line 523
    .line 524
    invoke-static {v6, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 529
    .line 530
    .line 531
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 532
    .line 533
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 537
    .line 538
    long-to-int v2, v8

    .line 539
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 540
    .line 541
    .line 542
    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    .line 543
    .line 544
    if-eqz v1, :cond_12

    .line 545
    .line 546
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 547
    .line 548
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 549
    .line 550
    .line 551
    iput-boolean v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    .line 552
    .line 553
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekbarPosition()V

    .line 554
    .line 555
    .line 556
    :goto_b
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 557
    .line 558
    if-eqz v1, :cond_14

    .line 559
    .line 560
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-ne v1, v5, :cond_14

    .line 565
    .line 566
    const-wide/16 v1, 0x0

    .line 567
    .line 568
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->checkPlaybackPosition(J)V

    .line 569
    .line 570
    .line 571
    goto :goto_c

    .line 572
    :cond_13
    const-string v1, "MediaFloatingUI updateSeekbarInfo mediaMetadata is null"

    .line 573
    .line 574
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    iput-boolean v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 578
    .line 579
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 580
    .line 581
    invoke-static {v7, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 586
    .line 587
    .line 588
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 589
    .line 590
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 591
    .line 592
    .line 593
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 594
    .line 595
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 596
    .line 597
    .line 598
    :cond_14
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->setupButtons()V

    .line 599
    .line 600
    .line 601
    return-void
.end method

.method public final updateSeekButton(IJ)V
    .locals 7

    .line 1
    const v0, 0x7f0a008a

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v2, 0x64

    .line 13
    .line 14
    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const v6, 0x3ecccccd    # 0.4f

    .line 19
    .line 20
    .line 21
    if-le p1, v2, :cond_0

    .line 22
    .line 23
    cmp-long v2, p2, v4

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const v0, 0x7f0a0089

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    add-int/lit16 p1, p1, 0x3e8

    .line 48
    .line 49
    int-to-long v1, p1

    .line 50
    cmp-long p1, v1, p2

    .line 51
    .line 52
    if-gez p1, :cond_1

    .line 53
    .line 54
    cmp-long p1, p2, v4

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method public final updateSeekbarPosition()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "MediaPanel updateSeekbarPosition mMediaController : "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", mPlaybackState : "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", mSeekbarFromUser : "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    .line 50
    .line 51
    const-string v3, "FlexMediaPanel"

    .line 52
    .line 53
    invoke-static {v1, v2, v3}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    long-to-int v1, v1

    .line 69
    div-int/lit16 v2, v1, 0x3e8

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const-string v5, "android.media.metadata.DURATION"

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v7, "MediaPanel updateSeekbarPosition mPlaybackState.getState() : "

    .line 86
    .line 87
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v7, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 91
    .line 92
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v7, ", currentPosition : "

    .line 100
    .line 101
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v7, ", current : "

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v7, ", max : "

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    if-le v1, v4, :cond_1

    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    const-wide/16 v2, 0x0

    .line 139
    .line 140
    cmp-long v0, v5, v2

    .line 141
    .line 142
    if-lez v0, :cond_2

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeCurrentText(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-static {v5, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeDurationText(J)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    .line 164
    .line 165
    const-string v2, ""

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekButton(IJ)V

    .line 181
    .line 182
    .line 183
    :cond_3
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    .line 185
    .line 186
    return-void
.end method
