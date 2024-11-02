.class public final Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;
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

.field public final mHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

.field public mMediaController:Landroid/media/session/MediaController;

.field public mMediaNextButton:Landroid/widget/LinearLayout;

.field public mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

.field public mMediaPanelPopupType:I

.field public mMediaPauseButton:Landroid/widget/LinearLayout;

.field public mMediaPreviousButton:Landroid/widget/LinearLayout;

.field public mMediaResumeButton:Landroid/widget/LinearLayout;

.field public mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

.field public mMediaSeekNextButton:Landroid/widget/LinearLayout;

.field public mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

.field public mMetadataChanged:Z

.field public mPlaybackState:Landroid/media/session/PlaybackState;

.field public final mSeekBarControlListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$1;

.field public mSeekBarEnabled:Z

.field public mSeekBarFromUser:Z

.field public mSeekBarText:Landroid/widget/TextView;

.field public mSeekPosition:J

.field public final mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMetadataChanged:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarFromUser:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarControlListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$1;

    .line 17
    .line 18
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    new-instance v1, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    .line 31
    .line 32
    const-wide/16 v2, 0x10

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f0a008d

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v4, 0x20

    .line 45
    .line 46
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const v4, 0x7f0a008c

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v5, 0x204

    .line 57
    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v5, 0x7f0a0088

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v6, 0x202

    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const v6, 0x7f0a0083

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v7, 0x100

    .line 81
    .line 82
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const v7, 0x7f0a008a

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const v8, 0x7f0a0089

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

    .line 108
    .line 109
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 110
    .line 111
    const p3, 0x7f0a0669

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Landroidx/appcompat/widget/SeslSeekBar;

    .line 119
    .line 120
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 121
    .line 122
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    check-cast p3, Landroid/widget/LinearLayout;

    .line 127
    .line 128
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    check-cast p3, Landroid/widget/LinearLayout;

    .line 135
    .line 136
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    check-cast p3, Landroid/widget/LinearLayout;

    .line 143
    .line 144
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    check-cast p3, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 155
    .line 156
    iput-object v0, p3, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 157
    .line 158
    const p3, 0x7f0a02d9

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    check-cast p3, Landroid/widget/TextView;

    .line 166
    .line 167
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mCurrentText:Landroid/widget/TextView;

    .line 168
    .line 169
    const p3, 0x7f0a0387

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast p3, Landroid/widget/TextView;

    .line 177
    .line 178
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDurationText:Landroid/widget/TextView;

    .line 179
    .line 180
    const p3, 0x7f0a09c5

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    check-cast p3, Landroid/widget/TextView;

    .line 188
    .line 189
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarText:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    check-cast p3, Landroid/widget/LinearLayout;

    .line 196
    .line 197
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    check-cast p3, Landroid/widget/LinearLayout;

    .line 204
    .line 205
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    const-string/jumbo p3, "window"

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/view/WindowManager;

    .line 215
    .line 216
    new-instance p3, Landroid/graphics/Point;

    .line 217
    .line 218
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 226
    .line 227
    .line 228
    iget p1, p3, Landroid/graphics/Point;->x:I

    .line 229
    .line 230
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDisplayX:I

    .line 231
    .line 232
    iget p1, p3, Landroid/graphics/Point;->y:I

    .line 233
    .line 234
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDisplayY:I

    .line 235
    .line 236
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    const-wide v0, 0x4018f5c28f5c28f6L    # 6.24

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    const-wide v2, 0x401e28f5c28f5c29L    # 7.54

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 256
    .line 257
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 265
    .line 266
    const-wide v0, 0x400e28f5c28f5c29L    # 3.77

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    const-wide v2, 0x4012333333333333L    # 4.55

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 284
    .line 285
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 286
    .line 287
    .line 288
    move-result-object p3

    .line 289
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 293
    .line 294
    const-wide v0, 0x4012b851eb851eb8L    # 4.68

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    const-wide v2, 0x40165c28f5c28f5cL    # 5.59

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 312
    .line 313
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    const p1, 0x7f0a07da

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    const-wide v0, 0x4013333333333333L    # 4.8

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    const-wide v2, 0x4017333333333333L    # 5.8

    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    .line 343
    .line 344
    const p1, 0x7f0a08c4

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    .line 357
    .line 358
    const p1, 0x7f0a0a46

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    const-wide v0, 0x4007333333333333L    # 2.9

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    .line 371
    .line 372
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 373
    .line 374
    .line 375
    move-result-object p3

    .line 376
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    const p1, 0x7f0a080c

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 387
    .line 388
    .line 389
    move-result-object p3

    .line 390
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    const p1, 0x7f0a0a47

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const-wide v0, 0x400ccccccccccccdL    # 3.6

    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    const-wide v2, 0x4011333333333333L    # 4.3

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    .line 412
    .line 413
    move-result-object p3

    .line 414
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    .line 416
    .line 417
    const p1, 0x7f0a080d

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 425
    .line 426
    .line 427
    move-result-object p3

    .line 428
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .line 430
    .line 431
    const p1, 0x7f0a0657

    .line 432
    .line 433
    .line 434
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    const-wide/16 v0, 0x0

    .line 439
    .line 440
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    .line 441
    .line 442
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 443
    .line 444
    .line 445
    move-result-object p3

    .line 446
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .line 448
    .line 449
    const p1, 0x7f0a01fc

    .line 450
    .line 451
    .line 452
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    .line 457
    .line 458
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    .line 460
    .line 461
    move-result-object p3

    .line 462
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    .line 464
    .line 465
    const p1, 0x7f0a01fd

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 473
    .line 474
    .line 475
    move-result-object p3

    .line 476
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    .line 478
    .line 479
    const p1, 0x7f0a01fe

    .line 480
    .line 481
    .line 482
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 487
    .line 488
    .line 489
    move-result-object p3

    .line 490
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    .line 492
    .line 493
    const p1, 0x7f0a01ff

    .line 494
    .line 495
    .line 496
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->setupButtons()V

    .line 508
    .line 509
    .line 510
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
    const-string v0, "MediaPanel"

    .line 2
    .line 3
    const-string v1, "MediaPanel checkPlaybackPosition"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;

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

.method public final getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDisplayX:I

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
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDisplayY:I

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    .line 3
    const-string v1, "MediaPanel"

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mContext:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-wide v11, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

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
    iput-wide v11, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

    .line 187
    .line 188
    if-lez p1, :cond_6

    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->onMediaPanelPopupShow(I)V

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
    if-ne p1, v0, :cond_c

    .line 226
    .line 227
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

    .line 228
    .line 229
    if-nez p1, :cond_9

    .line 230
    .line 231
    return-void

    .line 232
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    iget-wide v9, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

    .line 239
    .line 240
    cmp-long p1, v9, v7

    .line 241
    .line 242
    if-gtz p1, :cond_b

    .line 243
    .line 244
    sub-long/2addr v0, v5

    .line 245
    cmp-long p1, v0, v7

    .line 246
    .line 247
    if-lez p1, :cond_b

    .line 248
    .line 249
    sub-long/2addr v9, v3

    .line 250
    iput-wide v9, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

    .line 251
    .line 252
    if-gez p1, :cond_a

    .line 253
    .line 254
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1, v7, v8}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 273
    .line 274
    .line 275
    move-result-wide v0

    .line 276
    sub-long/2addr v0, v5

    .line 277
    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 278
    .line 279
    .line 280
    :goto_2
    const/4 p1, 0x2

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->onMediaPanelPopupShow(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_b
    return-void

    .line 286
    :cond_c
    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 287
    .line 288
    new-instance p1, Ljava/util/HashMap;

    .line 289
    .line 290
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v0, "packageName"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    const-string p2, "F003"

    .line 308
    .line 309
    invoke-static {p2, p0, p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_d
    :goto_4
    const-string p0, "MediaPanel onClickButton mMediaController or getPlaybackState == null"

    .line 314
    .line 315
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public final onMediaPanelPopupShow(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopupType:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

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
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopupType:I

    .line 47
    .line 48
    if-ne p1, v2, :cond_4

    .line 49
    .line 50
    iget-wide v3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

    .line 51
    .line 52
    long-to-int p1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget-wide v3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

    .line 55
    .line 56
    long-to-int p1, v3

    .line 57
    mul-int/lit8 p1, p1, -0x1

    .line 58
    .line 59
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

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
    const-string v0, "MediaPanel"

    .line 2
    .line 3
    const-string v1, "MediaPanel setupButtons"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/4 v2, 0x5

    .line 68
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final updatePanel()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 4
    .line 5
    const-string v2, "MediaPanel"

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
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    const-wide/16 v5, 0x100

    .line 79
    .line 80
    and-long/2addr v3, v5

    .line 81
    const-wide/16 v5, 0x0

    .line 82
    .line 83
    cmp-long v3, v3, v5

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v7, 0x1

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    move v3, v7

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v3, v4

    .line 92
    :goto_0
    const-string/jumbo v8, "updateSeekbarInfo isSupportSeekBar : "

    .line 93
    .line 94
    .line 95
    invoke-static {v8, v3, v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v8, 0x3

    .line 99
    const-string v9, "android.media.metadata.DURATION"

    .line 100
    .line 101
    const v10, 0x7f0605da

    .line 102
    .line 103
    .line 104
    iget-object v11, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    invoke-virtual {v1, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v12

    .line 114
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 117
    .line 118
    .line 119
    move-result-wide v14

    .line 120
    long-to-int v1, v14

    .line 121
    cmp-long v3, v12, v5

    .line 122
    .line 123
    if-lez v3, :cond_3

    .line 124
    .line 125
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mCurrentText:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->makeCurrentText(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDurationText:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-static {v12, v13}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->makeDurationText(J)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mCurrentText:Landroid/widget/TextView;

    .line 145
    .line 146
    const-string v3, ""

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDurationText:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "MediaPanel updateSeekbarInfo duration : "

    .line 159
    .line 160
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    const-wide/16 v14, 0x64

    .line 174
    .line 175
    cmp-long v1, v12, v14

    .line 176
    .line 177
    if-gtz v1, :cond_4

    .line 178
    .line 179
    const-string v1, "MediaPanel updateSeekbarInfo hide seekbar"

    .line 180
    .line 181
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iput-boolean v4, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

    .line 185
    .line 186
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 187
    .line 188
    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 196
    .line 197
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    iput-boolean v7, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

    .line 207
    .line 208
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 209
    .line 210
    const v3, 0x7f0605d9

    .line 211
    .line 212
    .line 213
    invoke-static {v3, v11}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 221
    .line 222
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 226
    .line 227
    long-to-int v3, v12

    .line 228
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 229
    .line 230
    .line 231
    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMetadataChanged:Z

    .line 232
    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 238
    .line 239
    .line 240
    iput-boolean v4, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMetadataChanged:Z

    .line 241
    .line 242
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->updateSeekbarPosition()V

    .line 243
    .line 244
    .line 245
    :goto_2
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 246
    .line 247
    if-eqz v1, :cond_7

    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-ne v1, v8, :cond_7

    .line 254
    .line 255
    invoke-virtual {v0, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->checkPlaybackPosition(J)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_6
    const-string v1, "MediaFloatingUI updateSeekbarInfo mediaMetadata is null"

    .line 260
    .line 261
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    iput-boolean v4, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

    .line 265
    .line 266
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 267
    .line 268
    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 276
    .line 277
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 281
    .line 282
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 288
    .line 289
    .line 290
    move-result-wide v10

    .line 291
    const v1, 0x3ecccccd    # 0.4f

    .line 292
    .line 293
    .line 294
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    .line 295
    .line 296
    if-nez v3, :cond_8

    .line 297
    .line 298
    goto/16 :goto_8

    .line 299
    .line 300
    :cond_8
    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    .line 301
    .line 302
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    new-instance v13, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .line 310
    .line 311
    move v14, v4

    .line 312
    :goto_4
    if-ge v14, v12, :cond_c

    .line 313
    .line 314
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v16

    .line 322
    check-cast v16, Ljava/lang/Long;

    .line 323
    .line 324
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v16

    .line 328
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v15

    .line 332
    check-cast v15, Landroid/widget/LinearLayout;

    .line 333
    .line 334
    and-long v16, v10, v16

    .line 335
    .line 336
    cmp-long v5, v16, v5

    .line 337
    .line 338
    if-eqz v5, :cond_9

    .line 339
    .line 340
    const/4 v6, 0x1

    .line 341
    goto :goto_5

    .line 342
    :cond_9
    move v6, v4

    .line 343
    :goto_5
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 344
    .line 345
    .line 346
    if-eqz v5, :cond_a

    .line 347
    .line 348
    const/4 v5, 0x1

    .line 349
    goto :goto_6

    .line 350
    :cond_a
    move v5, v4

    .line 351
    :goto_6
    if-eqz v5, :cond_b

    .line 352
    .line 353
    const/high16 v5, 0x3f800000    # 1.0f

    .line 354
    .line 355
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_b
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 367
    .line 368
    .line 369
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 370
    .line 371
    const-wide/16 v5, 0x0

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v5, "action count : "

    .line 377
    .line 378
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v5, " enable buttons : "

    .line 385
    .line 386
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 400
    .line 401
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    if-eqz v3, :cond_d

    .line 406
    .line 407
    invoke-virtual {v3, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 408
    .line 409
    .line 410
    move-result-wide v5

    .line 411
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 412
    .line 413
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 414
    .line 415
    .line 416
    move-result-wide v9

    .line 417
    long-to-int v3, v9

    .line 418
    invoke-virtual {v0, v3, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->updateSeekButton(IJ)V

    .line 419
    .line 420
    .line 421
    :cond_d
    :goto_8
    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 422
    .line 423
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    const/16 v5, 0x8

    .line 428
    .line 429
    if-nez v3, :cond_e

    .line 430
    .line 431
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 432
    .line 433
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 437
    .line 438
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 442
    .line 443
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 444
    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_e
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eq v1, v8, :cond_10

    .line 454
    .line 455
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 456
    .line 457
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    const/4 v3, 0x6

    .line 462
    if-ne v1, v3, :cond_f

    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 466
    .line 467
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 471
    .line 472
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_10
    :goto_9
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    .line 477
    .line 478
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    .line 482
    .line 483
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .line 485
    .line 486
    goto :goto_a

    .line 487
    :catch_0
    const-string v1, "MediaPanel updatePlayPauseIcon mPlaybackState.getState is null"

    .line 488
    .line 489
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->setupButtons()V

    .line 493
    .line 494
    .line 495
    return-void
.end method

.method public final updateSeekButton(IJ)V
    .locals 7

    .line 1
    const v0, 0x7f0a008a

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

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
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

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
    iget-boolean p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarEnabled:Z

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

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
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarFromUser:Z

    .line 50
    .line 51
    const-string v3, "MediaPanel"

    .line 52
    .line 53
    invoke-static {v1, v2, v3}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarFromUser:Z

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
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

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
    iget-object v7, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mCurrentText:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->makeCurrentText(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDurationText:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-static {v5, v6}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->makeDurationText(J)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mCurrentText:Landroid/widget/TextView;

    .line 164
    .line 165
    const-string v2, ""

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mDurationText:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->updateSeekButton(IJ)V

    .line 181
    .line 182
    .line 183
    :cond_3
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekBarFromUser:Z

    .line 185
    .line 186
    return-void
.end method
