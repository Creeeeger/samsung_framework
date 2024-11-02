.class public Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBrightnessIcon:Landroid/widget/ImageView;

.field public final mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

.field public mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mBrightnessSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;

.field public final mContext:Landroid/content/Context;

.field public mCurrentMediaIconState:I

.field public mCurrentRingerMode:I

.field public mCurrentRingtoneIconState:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mGetRingerMode:I

.field public mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

.field public mMaxBrightness:I

.field public mMediaBrightnessLayout:Landroid/widget/LinearLayout;

.field public mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

.field public mMediaVolumeLayout:Landroid/widget/FrameLayout;

.field public mMinBrightness:I

.field public final mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

.field public mMute:Landroid/widget/ImageView;

.field public mNote:Landroid/widget/ImageView;

.field public mSplash:Landroid/widget/ImageView;

.field public mStreamType:I

.field public mVolumeIcon:Landroid/widget/ImageView;

.field public final mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

.field public mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

.field public mVolumeSeekBarTracking:Z

.field public mWaveL:Landroid/widget/ImageView;

.field public mWaveS:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    .line 10
    .line 11
    iput v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    .line 12
    .line 13
    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 19
    .line 20
    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    .line 26
    .line 27
    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;

    .line 33
    .line 34
    new-instance v2, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

    .line 40
    .line 41
    iput-object v11, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string/jumbo v2, "power"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/os/PowerManager;

    .line 51
    .line 52
    const-string v3, "display"

    .line 53
    .line 54
    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 59
    .line 60
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 61
    .line 62
    const-string v3, "audio"

    .line 63
    .line 64
    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/media/AudioManager;

    .line 69
    .line 70
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    .line 72
    const-string v4, "accessibility"

    .line 73
    .line 74
    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 79
    .line 80
    iput-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 81
    .line 82
    new-instance v4, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 83
    .line 84
    invoke-direct {v4, v11}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 88
    .line 89
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iput v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "BrightnessVolumeView mStreamType : "

    .line 104
    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, ", mCurrentRingerMode : "

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string v4, "BrightnessVolumeView"

    .line 130
    .line 131
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const v4, 0x7f0d005a

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    const v3, 0x7f0a063c

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Landroid/widget/LinearLayout;

    .line 156
    .line 157
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    const v3, 0x7f0a063d

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Landroidx/appcompat/widget/SeslSeekBar;

    .line 167
    .line 168
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 169
    .line 170
    const v3, 0x7f0a067a

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Landroid/widget/FrameLayout;

    .line 178
    .line 179
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    .line 180
    .line 181
    const v3, 0x7f0a0678

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Landroid/widget/FrameLayout;

    .line 189
    .line 190
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    .line 191
    .line 192
    const v3, 0x7f0a067b

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Landroidx/appcompat/widget/SeslSeekBar;

    .line 200
    .line 201
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 202
    .line 203
    const v3, 0x7f0a01aa

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Landroid/widget/ImageView;

    .line 211
    .line 212
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 213
    .line 214
    const v3, 0x7f0a0ce0

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Landroid/widget/ImageView;

    .line 222
    .line 223
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 224
    .line 225
    const v3, 0x7f0a0ce7

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Landroid/widget/ImageView;

    .line 233
    .line 234
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 235
    .line 236
    const v3, 0x7f0a0ce8

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Landroid/widget/ImageView;

    .line 244
    .line 245
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 246
    .line 247
    const v3, 0x7f0a0ce9

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Landroid/widget/ImageView;

    .line 255
    .line 256
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 257
    .line 258
    const v3, 0x7f0a0ce6

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Landroid/widget/ImageView;

    .line 266
    .line 267
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 268
    .line 269
    const v3, 0x7f0a0ce2

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Landroid/widget/ImageView;

    .line 277
    .line 278
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 279
    .line 280
    invoke-virtual {v2}, Landroid/os/PowerManager;->semGetMaximumScreenBrightnessSetting()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    iput v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    .line 285
    .line 286
    invoke-virtual {v2}, Landroid/os/PowerManager;->semGetMinimumScreenBrightnessSetting()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    iput v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    .line 291
    .line 292
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 293
    .line 294
    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 297
    .line 298
    .line 299
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 300
    .line 301
    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 307
    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    const-string/jumbo v4, "screen_brightness"

    .line 313
    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 321
    .line 322
    .line 323
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 324
    .line 325
    iput-object v1, v2, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 326
    .line 327
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    .line 328
    .line 329
    new-instance v2, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    invoke-direct {v2, v0, v5}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    .line 338
    .line 339
    new-instance v2, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;

    .line 340
    .line 341
    const/4 v3, 0x1

    .line 342
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_0

    .line 359
    .line 360
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 361
    .line 362
    const-wide v12, 0x400f333333333333L    # 3.9

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    const-wide/16 v14, 0x0

    .line 368
    .line 369
    const-wide v16, 0x401ccccccccccccdL    # 7.2

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    const-wide/16 v18, 0x0

    .line 375
    .line 376
    const-wide v3, 0x400f333333333333L    # 3.9

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    const-wide/16 v5, 0x0

    .line 382
    .line 383
    const-wide v7, 0x401ccccccccccccdL    # 7.2

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    const-wide/16 v9, 0x0

    .line 389
    .line 390
    move-object/from16 v1, p1

    .line 391
    .line 392
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 393
    .line 394
    .line 395
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 396
    .line 397
    move-wide v3, v12

    .line 398
    move-wide/from16 v7, v16

    .line 399
    .line 400
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 401
    .line 402
    .line 403
    const v1, 0x7f0a0401

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    const-wide v12, 0x401ccccccccccccdL    # 7.2

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    const-wide/16 v16, 0x0

    .line 416
    .line 417
    const-wide v3, 0x401ccccccccccccdL    # 7.2

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    const-wide/16 v7, 0x0

    .line 423
    .line 424
    move-object/from16 v1, p1

    .line 425
    .line 426
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 427
    .line 428
    .line 429
    const v1, 0x7f0a0402

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    move-object/from16 v1, p1

    .line 437
    .line 438
    move-wide v3, v12

    .line 439
    move-wide v5, v14

    .line 440
    move-wide/from16 v7, v16

    .line 441
    .line 442
    move-wide/from16 v9, v18

    .line 443
    .line 444
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    .line 445
    .line 446
    .line 447
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultBrightnessView()V

    .line 448
    .line 449
    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultVolumeIcon()V

    .line 451
    .line 452
    .line 453
    return-void
.end method


# virtual methods
.method public final handlerExcute(Ljava/lang/Runnable;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-wide/16 v1, 0x7d0

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final setBrightnessViewColor(I)V
    .locals 2

    .line 1
    const/16 v0, 0xd9

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const v1, 0x7f060071

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const v0, 0x7f060072

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultBrightnessView()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final setDefaultBrightnessView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f060499

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const v2, 0x7f0605d9

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const v1, 0x7f0605d7

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final setDefaultVolumeIcon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const v1, 0x7f080a6f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setVolumeIcon(I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f060499

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move/from16 v2, p1

    .line 13
    .line 14
    iput v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "BrightnessVolumeView setVolumeIcon mStreamType : "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, ", mGetRingerMode : "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 42
    .line 43
    const-string v4, "BrightnessVolumeView"

    .line 44
    .line 45
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 49
    .line 50
    const/16 v3, 0xa

    .line 51
    .line 52
    if-eq v2, v3, :cond_1f

    .line 53
    .line 54
    const/16 v3, 0x10

    .line 55
    .line 56
    if-eq v2, v3, :cond_1e

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    const v5, 0x7f080a6e

    .line 60
    .line 61
    .line 62
    const/16 v6, 0x64

    .line 63
    .line 64
    const/4 v7, 0x7

    .line 65
    const/4 v8, 0x4

    .line 66
    const/4 v9, 0x2

    .line 67
    const/4 v10, 0x3

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, -0x1

    .line 70
    packed-switch v2, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto/16 :goto_10

    .line 74
    .line 75
    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 76
    .line 77
    const/4 v2, 0x5

    .line 78
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    iget v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 85
    .line 86
    if-ne v1, v3, :cond_0

    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const v2, 0x7f080a29

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_10

    .line 103
    .line 104
    :cond_0
    if-nez v1, :cond_20

    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const v2, 0x7f080a26

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_10

    .line 121
    .line 122
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    const v2, 0x7f080a28

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_10

    .line 137
    .line 138
    :pswitch_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 139
    .line 140
    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_2

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_10

    .line 158
    .line 159
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    const v2, 0x7f080a6f

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_10

    .line 174
    .line 175
    :pswitch_2
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 176
    .line 177
    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_4

    .line 182
    .line 183
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_3

    .line 190
    .line 191
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eq v2, v9, :cond_4

    .line 198
    .line 199
    :cond_3
    move v2, v3

    .line 200
    goto :goto_0

    .line 201
    :cond_4
    move v2, v11

    .line 202
    :goto_0
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    const v13, 0x7f0605d9

    .line 205
    .line 206
    .line 207
    invoke-static {v13, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    iget-object v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    const v14, 0x7f0605d7

    .line 214
    .line 215
    .line 216
    invoke-static {v14, v13}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    if-eqz v2, :cond_6

    .line 221
    .line 222
    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 223
    .line 224
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    sub-int/2addr v14, v3

    .line 229
    mul-int/2addr v14, v6

    .line 230
    add-int/lit8 v14, v14, 0x9

    .line 231
    .line 232
    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    .line 234
    invoke-virtual {v15, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-lez v14, :cond_5

    .line 239
    .line 240
    mul-int/2addr v2, v6

    .line 241
    if-ge v14, v2, :cond_5

    .line 242
    .line 243
    move v2, v3

    .line 244
    goto :goto_1

    .line 245
    :cond_5
    move v2, v11

    .line 246
    :goto_1
    if-eqz v2, :cond_6

    .line 247
    .line 248
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    const v2, 0x7f060071

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    const v6, 0x7f060072

    .line 266
    .line 267
    .line 268
    invoke-static {v6, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    :cond_6
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 273
    .line 274
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 285
    .line 286
    .line 287
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 288
    .line 289
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 293
    .line 294
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 298
    .line 299
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 303
    .line 304
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 305
    .line 306
    .line 307
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 308
    .line 309
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 313
    .line 314
    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    const-string/jumbo v2, "setVolumeIcon currentDeviceType : "

    .line 324
    .line 325
    .line 326
    invoke-static {v2, v1, v4}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 330
    .line 331
    invoke-virtual {v2, v9}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    array-length v4, v2

    .line 336
    move v5, v11

    .line 337
    :goto_2
    const/16 v6, 0x8

    .line 338
    .line 339
    if-ge v5, v4, :cond_9

    .line 340
    .line 341
    aget-object v13, v2, v5

    .line 342
    .line 343
    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    if-eq v14, v6, :cond_8

    .line 348
    .line 349
    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    if-ne v13, v7, :cond_7

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_8
    :goto_3
    move v2, v3

    .line 360
    goto :goto_4

    .line 361
    :cond_9
    move v2, v11

    .line 362
    :goto_4
    if-eqz v2, :cond_b

    .line 363
    .line 364
    if-eq v1, v6, :cond_a

    .line 365
    .line 366
    if-ne v1, v7, :cond_b

    .line 367
    .line 368
    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 369
    .line 370
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    .line 374
    .line 375
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 379
    .line 380
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 381
    .line 382
    const v3, 0x7f0807fd

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    .line 391
    .line 392
    move v3, v12

    .line 393
    goto/16 :goto_9

    .line 394
    .line 395
    :cond_b
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    .line 396
    .line 397
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 401
    .line 402
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 406
    .line 407
    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_d

    .line 412
    .line 413
    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 414
    .line 415
    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 416
    .line 417
    iget-object v14, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 418
    .line 419
    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 420
    .line 421
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 426
    .line 427
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 428
    .line 429
    iget v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    .line 430
    .line 431
    if-nez v5, :cond_c

    .line 432
    .line 433
    move/from16 v20, v3

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_c
    move/from16 v20, v11

    .line 437
    .line 438
    :goto_5
    move-object/from16 v16, v1

    .line 439
    .line 440
    move-object/from16 v18, v2

    .line 441
    .line 442
    move-object/from16 v19, v4

    .line 443
    .line 444
    invoke-virtual/range {v12 .. v20}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 445
    .line 446
    .line 447
    move v3, v11

    .line 448
    goto/16 :goto_9

    .line 449
    .line 450
    :cond_d
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 451
    .line 452
    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-lez v1, :cond_f

    .line 457
    .line 458
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 459
    .line 460
    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-gt v1, v10, :cond_f

    .line 465
    .line 466
    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 467
    .line 468
    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 469
    .line 470
    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 471
    .line 472
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 473
    .line 474
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 475
    .line 476
    const/16 v18, 0x0

    .line 477
    .line 478
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 479
    .line 480
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 481
    .line 482
    iget v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    .line 483
    .line 484
    if-ne v6, v3, :cond_e

    .line 485
    .line 486
    move/from16 v21, v3

    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_e
    move/from16 v21, v11

    .line 490
    .line 491
    :goto_6
    const/4 v14, 0x1

    .line 492
    move-object/from16 v16, v1

    .line 493
    .line 494
    move-object/from16 v17, v2

    .line 495
    .line 496
    move-object/from16 v19, v4

    .line 497
    .line 498
    move-object/from16 v20, v5

    .line 499
    .line 500
    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_9

    .line 504
    .line 505
    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 506
    .line 507
    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-le v1, v10, :cond_11

    .line 512
    .line 513
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 514
    .line 515
    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-gt v1, v7, :cond_11

    .line 520
    .line 521
    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 522
    .line 523
    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 524
    .line 525
    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 526
    .line 527
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 528
    .line 529
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 530
    .line 531
    const/16 v18, 0x0

    .line 532
    .line 533
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 534
    .line 535
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 536
    .line 537
    iget v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    .line 538
    .line 539
    if-ne v6, v9, :cond_10

    .line 540
    .line 541
    move/from16 v21, v3

    .line 542
    .line 543
    goto :goto_7

    .line 544
    :cond_10
    move/from16 v21, v11

    .line 545
    .line 546
    :goto_7
    const/4 v14, 0x2

    .line 547
    move-object/from16 v16, v1

    .line 548
    .line 549
    move-object/from16 v17, v2

    .line 550
    .line 551
    move-object/from16 v19, v4

    .line 552
    .line 553
    move-object/from16 v20, v5

    .line 554
    .line 555
    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 556
    .line 557
    .line 558
    move v3, v9

    .line 559
    goto :goto_9

    .line 560
    :cond_11
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 561
    .line 562
    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 563
    .line 564
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 565
    .line 566
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 567
    .line 568
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 569
    .line 570
    const/16 v27, 0x0

    .line 571
    .line 572
    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 573
    .line 574
    iget-object v8, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 575
    .line 576
    iget v9, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    .line 577
    .line 578
    if-ne v9, v10, :cond_12

    .line 579
    .line 580
    move/from16 v30, v3

    .line 581
    .line 582
    goto :goto_8

    .line 583
    :cond_12
    move/from16 v30, v11

    .line 584
    .line 585
    :goto_8
    move-object/from16 v22, v1

    .line 586
    .line 587
    move/from16 v23, v2

    .line 588
    .line 589
    move-object/from16 v24, v4

    .line 590
    .line 591
    move-object/from16 v25, v5

    .line 592
    .line 593
    move-object/from16 v26, v6

    .line 594
    .line 595
    move-object/from16 v28, v7

    .line 596
    .line 597
    move-object/from16 v29, v8

    .line 598
    .line 599
    invoke-virtual/range {v22 .. v30}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 600
    .line 601
    .line 602
    move v3, v10

    .line 603
    :goto_9
    iput v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    .line 604
    .line 605
    goto/16 :goto_10

    .line 606
    .line 607
    :pswitch_3
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 608
    .line 609
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 610
    .line 611
    const v13, 0x7f080805

    .line 612
    .line 613
    .line 614
    invoke-virtual {v4, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    .line 620
    .line 621
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 622
    .line 623
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 624
    .line 625
    const v13, 0x7f080804

    .line 626
    .line 627
    .line 628
    invoke-virtual {v4, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    .line 634
    .line 635
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 636
    .line 637
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 638
    .line 639
    .line 640
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 641
    .line 642
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 643
    .line 644
    .line 645
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 646
    .line 647
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 648
    .line 649
    .line 650
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 651
    .line 652
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 653
    .line 654
    .line 655
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 656
    .line 657
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 658
    .line 659
    .line 660
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 661
    .line 662
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-nez v1, :cond_17

    .line 667
    .line 668
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 669
    .line 670
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    .line 672
    .line 673
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    .line 674
    .line 675
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    iget v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 679
    .line 680
    if-ne v1, v3, :cond_15

    .line 681
    .line 682
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 683
    .line 684
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 685
    .line 686
    const v4, 0x7f080a70

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    .line 695
    .line 696
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 697
    .line 698
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 699
    .line 700
    iget v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    .line 701
    .line 702
    iget v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 703
    .line 704
    if-eq v4, v5, :cond_13

    .line 705
    .line 706
    goto :goto_a

    .line 707
    :cond_13
    move v3, v11

    .line 708
    :goto_a
    if-eqz v3, :cond_14

    .line 709
    .line 710
    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 711
    .line 712
    const v3, 0x7f070373

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    int-to-float v3, v3

    .line 720
    const v4, 0x7f070374

    .line 721
    .line 722
    .line 723
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    int-to-float v1, v1

    .line 728
    neg-float v4, v3

    .line 729
    const/16 v5, 0x3c

    .line 730
    .line 731
    const/4 v7, 0x0

    .line 732
    invoke-static {v7, v4, v5, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    sub-float v8, v3, v1

    .line 737
    .line 738
    const/16 v9, 0x50

    .line 739
    .line 740
    invoke-static {v4, v8, v9, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    const/high16 v9, 0x40000000    # 2.0f

    .line 745
    .line 746
    mul-float/2addr v1, v9

    .line 747
    sub-float/2addr v3, v1

    .line 748
    neg-float v1, v3

    .line 749
    invoke-static {v8, v1, v6, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    const/16 v6, 0x78

    .line 754
    .line 755
    invoke-static {v1, v7, v6, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    new-instance v2, Ljava/util/ArrayList;

    .line 760
    .line 761
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 777
    .line 778
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 785
    .line 786
    .line 787
    goto :goto_b

    .line 788
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    goto :goto_b

    .line 792
    :cond_15
    if-nez v1, :cond_16

    .line 793
    .line 794
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 795
    .line 796
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 797
    .line 798
    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    .line 804
    .line 805
    :cond_16
    :goto_b
    move v3, v12

    .line 806
    goto/16 :goto_f

    .line 807
    .line 808
    :cond_17
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    .line 809
    .line 810
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 811
    .line 812
    .line 813
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 814
    .line 815
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    .line 817
    .line 818
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 819
    .line 820
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-lez v1, :cond_19

    .line 825
    .line 826
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 827
    .line 828
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    if-gt v1, v10, :cond_19

    .line 833
    .line 834
    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 835
    .line 836
    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 837
    .line 838
    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 839
    .line 840
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 841
    .line 842
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 843
    .line 844
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 845
    .line 846
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 847
    .line 848
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 849
    .line 850
    iget v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    .line 851
    .line 852
    if-ne v7, v3, :cond_18

    .line 853
    .line 854
    move/from16 v21, v3

    .line 855
    .line 856
    goto :goto_c

    .line 857
    :cond_18
    move/from16 v21, v11

    .line 858
    .line 859
    :goto_c
    const/4 v14, 0x1

    .line 860
    move-object/from16 v16, v1

    .line 861
    .line 862
    move-object/from16 v17, v2

    .line 863
    .line 864
    move-object/from16 v18, v4

    .line 865
    .line 866
    move-object/from16 v19, v5

    .line 867
    .line 868
    move-object/from16 v20, v6

    .line 869
    .line 870
    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 871
    .line 872
    .line 873
    goto/16 :goto_f

    .line 874
    .line 875
    :cond_19
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 876
    .line 877
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 878
    .line 879
    .line 880
    move-result v1

    .line 881
    if-le v1, v10, :cond_1b

    .line 882
    .line 883
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 884
    .line 885
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    if-gt v1, v7, :cond_1b

    .line 890
    .line 891
    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 892
    .line 893
    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 894
    .line 895
    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 896
    .line 897
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 898
    .line 899
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 900
    .line 901
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 902
    .line 903
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 904
    .line 905
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 906
    .line 907
    iget v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    .line 908
    .line 909
    if-ne v7, v9, :cond_1a

    .line 910
    .line 911
    move/from16 v21, v3

    .line 912
    .line 913
    goto :goto_d

    .line 914
    :cond_1a
    move/from16 v21, v11

    .line 915
    .line 916
    :goto_d
    const/4 v14, 0x2

    .line 917
    move-object/from16 v16, v1

    .line 918
    .line 919
    move-object/from16 v17, v2

    .line 920
    .line 921
    move-object/from16 v18, v4

    .line 922
    .line 923
    move-object/from16 v19, v5

    .line 924
    .line 925
    move-object/from16 v20, v6

    .line 926
    .line 927
    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 928
    .line 929
    .line 930
    move v3, v9

    .line 931
    goto :goto_f

    .line 932
    :cond_1b
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 933
    .line 934
    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 935
    .line 936
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    .line 937
    .line 938
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    .line 939
    .line 940
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    .line 941
    .line 942
    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 943
    .line 944
    iget-object v8, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    .line 945
    .line 946
    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    .line 947
    .line 948
    iget v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    .line 949
    .line 950
    if-ne v12, v10, :cond_1c

    .line 951
    .line 952
    move/from16 v30, v3

    .line 953
    .line 954
    goto :goto_e

    .line 955
    :cond_1c
    move/from16 v30, v11

    .line 956
    .line 957
    :goto_e
    move-object/from16 v22, v1

    .line 958
    .line 959
    move/from16 v23, v2

    .line 960
    .line 961
    move-object/from16 v24, v4

    .line 962
    .line 963
    move-object/from16 v25, v5

    .line 964
    .line 965
    move-object/from16 v26, v6

    .line 966
    .line 967
    move-object/from16 v27, v7

    .line 968
    .line 969
    move-object/from16 v28, v8

    .line 970
    .line 971
    move-object/from16 v29, v9

    .line 972
    .line 973
    invoke-virtual/range {v22 .. v30}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 974
    .line 975
    .line 976
    move v3, v10

    .line 977
    :goto_f
    iput v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    .line 978
    .line 979
    iget v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 980
    .line 981
    iput v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    .line 982
    .line 983
    goto :goto_10

    .line 984
    :pswitch_4
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 985
    .line 986
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 987
    .line 988
    .line 989
    move-result v1

    .line 990
    if-nez v1, :cond_1d

    .line 991
    .line 992
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 993
    .line 994
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 995
    .line 996
    const v2, 0x7f080ae5

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_10

    .line 1007
    :cond_1d
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 1008
    .line 1009
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 1010
    .line 1011
    const v2, 0x7f080ae4

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_10

    .line 1022
    :pswitch_5
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 1023
    .line 1024
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 1025
    .line 1026
    const v2, 0x7f0807fe

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_10

    .line 1037
    :cond_1e
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 1038
    .line 1039
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 1040
    .line 1041
    const v2, 0x7f0807fc

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    .line 1050
    .line 1051
    goto :goto_10

    .line 1052
    :cond_1f
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 1053
    .line 1054
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 1055
    .line 1056
    const v2, 0x7f0807fb

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_20
    :goto_10
    return-void

    .line 1067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final setVolumeSeekBar(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "setVolumeSeekBar mStreamType : "

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 28
    .line 29
    const-string v2, ", volumeValue : "

    .line 30
    .line 31
    const-string v3, ", mGetRingerMode : "

    .line 32
    .line 33
    invoke-static {p1, v1, v2, v0, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    .line 37
    .line 38
    const-string v2, "BrightnessVolumeView"

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x6

    .line 49
    if-ne p1, v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move v2, v1

    .line 55
    :goto_1
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 60
    .line 61
    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    mul-int/lit8 p1, p1, 0xa

    .line 66
    .line 67
    add-int/2addr p1, v1

    .line 68
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 72
    .line 73
    mul-int/lit8 v0, v0, 0xa

    .line 74
    .line 75
    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    .line 84
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    mul-int/lit8 p1, p1, 0xa

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 94
    .line 95
    mul-int/lit8 v0, v0, 0xa

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

    .line 103
    .line 104
    iput-object p0, p1, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 105
    .line 106
    return-void
.end method
