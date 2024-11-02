.class public Landroidx/picker3/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static RECENT_COLOR_SLOT_COUNT:I = 0x6


# instance fields
.field public beforeValue:Ljava/lang/String;

.field public final editTexts:Ljava/util/ArrayList;

.field public mColorDescription:[Ljava/lang/String;

.field public mColorPickerBlueEditText:Landroid/widget/EditText;

.field public mColorPickerGreenEditText:Landroid/widget/EditText;

.field public mColorPickerHexEditText:Landroid/widget/EditText;

.field public mColorPickerOpacityEditText:Landroid/widget/EditText;

.field public mColorPickerRedEditText:Landroid/widget/EditText;

.field public mColorPickerSaturationEditText:Landroid/widget/EditText;

.field public mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

.field public mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

.field public final mContext:Landroid/content/Context;

.field public mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field public mCurrentColorView:Landroid/widget/ImageView;

.field public mFlagVar:Z

.field public mFromRecentLayoutTouch:Z

.field public mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

.field public mGradientSeekBarContainer:Landroid/widget/LinearLayout;

.field public final mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field public final mImageButtonClickListener:Landroidx/picker3/widget/SeslColorPicker$17;

.field public mIsInputFromUser:Z

.field public final mIsLightTheme:Z

.field public mLastFocussedEditText:Landroid/widget/EditText;

.field public mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

.field public final mOnTabSelectListener:Landroidx/picker3/widget/SeslColorPicker$4;

.field public mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

.field public mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field public final mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

.field public mPickedColorView:Landroid/widget/ImageView;

.field public final mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

.field public mRecentColorListLayout:Landroid/widget/LinearLayout;

.field public final mRecentColorValues:Ljava/util/ArrayList;

.field public final mResources:Landroid/content/res/Resources;

.field public mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field public mSpectrumViewContainer:Landroid/widget/FrameLayout;

.field public mSwatchViewContainer:Landroid/widget/FrameLayout;

.field public final mTabLayoutContainer:Lcom/google/android/material/tabs/TabLayout;

.field public mTextFromRGB:Z

.field public mfromEditText:Z

.field public mfromRGB:Z

.field public mfromSaturationSeekbar:Z

.field public mfromSpectrumTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x19b

    .line 5
    .line 6
    const/16 v0, 0x140

    .line 7
    .line 8
    const/16 v1, 0x168

    .line 9
    .line 10
    filled-new-array {v0, v1, p2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    .line 38
    .line 39
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$4;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$4;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnTabSelectListener:Landroidx/picker3/widget/SeslColorPicker$4;

    .line 45
    .line 46
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$17;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$17;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker3/widget/SeslColorPicker$17;

    .line 52
    .line 53
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 60
    .line 61
    new-instance v2, Landroid/util/TypedValue;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const v4, 0x7f0402fa

    .line 71
    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    .line 76
    .line 77
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    move v2, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v2, v0

    .line 84
    :goto_0
    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 85
    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const v2, 0x7f0d03b7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    const p1, 0x7f0a049d

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 104
    .line 105
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 106
    .line 107
    new-instance p1, Landroidx/picker3/widget/SeslRecentColorInfo;

    .line 108
    .line 109
    invoke-direct {p1}, Landroidx/picker3/widget/SeslRecentColorInfo;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    .line 113
    .line 114
    iget-object p1, p1, Landroidx/picker3/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    .line 115
    .line 116
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 117
    .line 118
    const p1, 0x7f0a09fc

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 126
    .line 127
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mTabLayoutContainer:Lcom/google/android/material/tabs/TabLayout;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_1

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 139
    .line 140
    .line 141
    :cond_1
    new-instance p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 142
    .line 143
    invoke-direct {p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 153
    .line 154
    const/4 v2, 0x3

    .line 155
    const/4 v3, 0x2

    .line 156
    if-ne p1, v5, :cond_4

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 163
    .line 164
    const/high16 v4, 0x3f800000    # 1.0f

    .line 165
    .line 166
    rem-float v4, v1, v4

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    cmpl-float v4, v4, v6

    .line 170
    .line 171
    if-eqz v4, :cond_4

    .line 172
    .line 173
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 174
    .line 175
    int-to-float p1, p1

    .line 176
    div-float v1, p1, v1

    .line 177
    .line 178
    float-to-int v1, v1

    .line 179
    move v4, v0

    .line 180
    :goto_1
    if-ge v4, v2, :cond_3

    .line 181
    .line 182
    aget v6, p2, v4

    .line 183
    .line 184
    if-ne v6, v1, :cond_2

    .line 185
    .line 186
    move p2, v5

    .line 187
    goto :goto_2

    .line 188
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    move p2, v0

    .line 192
    :goto_2
    if-eqz p2, :cond_4

    .line 193
    .line 194
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 195
    .line 196
    const v1, 0x7f070fd4

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 204
    .line 205
    const v4, 0x7f070fac

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    mul-int/2addr v1, v3

    .line 213
    add-int/2addr v1, p2

    .line 214
    int-to-float v1, v1

    .line 215
    cmpg-float v1, p1, v1

    .line 216
    .line 217
    if-gez v1, :cond_4

    .line 218
    .line 219
    int-to-float p2, p2

    .line 220
    sub-float/2addr p1, p2

    .line 221
    const/high16 p2, 0x40000000    # 2.0f

    .line 222
    .line 223
    div-float/2addr p1, p2

    .line 224
    float-to-int p1, p1

    .line 225
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 226
    .line 227
    const v1, 0x7f070fae

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 235
    .line 236
    const v4, 0x7f070fab

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    const v4, 0x7f0a09ee

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Landroid/widget/LinearLayout;

    .line 251
    .line 252
    invoke-virtual {v4, p1, p2, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 253
    .line 254
    .line 255
    :cond_4
    const p1, 0x7f0a09ed

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Landroid/widget/ImageView;

    .line 263
    .line 264
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 265
    .line 266
    const p1, 0x7f0a09f5

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Landroid/widget/ImageView;

    .line 274
    .line 275
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 276
    .line 277
    const p1, 0x7f0a0a01

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Landroid/widget/EditText;

    .line 285
    .line 286
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 287
    .line 288
    const p1, 0x7f0a0a02

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Landroid/widget/EditText;

    .line 296
    .line 297
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 298
    .line 299
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 300
    .line 301
    const-string p2, "disableDirectWriting=true;"

    .line 302
    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 307
    .line 308
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 312
    .line 313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iput-boolean v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    .line 321
    .line 322
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 323
    .line 324
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 329
    .line 330
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 331
    .line 332
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 333
    .line 334
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 335
    .line 336
    if-eqz v1, :cond_5

    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 343
    .line 344
    .line 345
    :cond_5
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 346
    .line 347
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 352
    .line 353
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 354
    .line 355
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mTabLayoutContainer:Lcom/google/android/material/tabs/TabLayout;

    .line 356
    .line 357
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnTabSelectListener:Landroidx/picker3/widget/SeslColorPicker$4;

    .line 358
    .line 359
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 363
    .line 364
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$1;

    .line 365
    .line 366
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$1;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 370
    .line 371
    .line 372
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 373
    .line 374
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$2;

    .line 375
    .line 376
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$2;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 383
    .line 384
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$3;

    .line 385
    .line 386
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$3;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 390
    .line 391
    .line 392
    const p1, 0x7f0a09e8

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    check-cast p1, Landroidx/picker3/widget/SeslColorSwatchView;

    .line 400
    .line 401
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 402
    .line 403
    const p1, 0x7f0a09e9

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    check-cast p1, Landroid/widget/FrameLayout;

    .line 411
    .line 412
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSwatchViewContainer:Landroid/widget/FrameLayout;

    .line 413
    .line 414
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 415
    .line 416
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$5;

    .line 417
    .line 418
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$5;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 419
    .line 420
    .line 421
    iput-object v1, p1, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorPicker$5;

    .line 422
    .line 423
    const p1, 0x7f0a09f8

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    check-cast p1, Landroid/widget/LinearLayout;

    .line 431
    .line 432
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientSeekBarContainer:Landroid/widget/LinearLayout;

    .line 433
    .line 434
    const p1, 0x7f0a09f9

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    check-cast p1, Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 442
    .line 443
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 444
    .line 445
    const p1, 0x7f0a09fa

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Landroid/widget/FrameLayout;

    .line 453
    .line 454
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 455
    .line 456
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 457
    .line 458
    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 459
    .line 460
    const/16 v6, 0x64

    .line 461
    .line 462
    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 463
    .line 464
    .line 465
    if-eqz v4, :cond_6

    .line 466
    .line 467
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    invoke-virtual {v1, v4}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initColor(I)V

    .line 472
    .line 473
    .line 474
    :cond_6
    iget-object v4, v1, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 475
    .line 476
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    const v6, 0x7f080fe7

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 494
    .line 495
    .line 496
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 497
    .line 498
    new-instance v4, Landroidx/picker3/widget/SeslColorPicker$9;

    .line 499
    .line 500
    invoke-direct {v4, p0}, Landroidx/picker3/widget/SeslColorPicker$9;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 507
    .line 508
    new-instance v4, Landroidx/picker3/widget/SeslColorPicker$10;

    .line 509
    .line 510
    invoke-direct {v4, p0}, Landroidx/picker3/widget/SeslColorPicker$10;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    .line 515
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 522
    .line 523
    const v6, 0x7f131005

    .line 524
    .line 525
    .line 526
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v4, ", "

    .line 534
    .line 535
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 539
    .line 540
    const v7, 0x7f13101d

    .line 541
    .line 542
    .line 543
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 554
    .line 555
    const v6, 0x7f130ffe

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->initColorSpectrumView()V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->initOpacitySeekBar(Z)V

    .line 576
    .line 577
    .line 578
    const p1, 0x7f0a09fe

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    check-cast p1, Landroid/widget/LinearLayout;

    .line 586
    .line 587
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 588
    .line 589
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 590
    .line 591
    const v1, 0x7f130fe9

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 599
    .line 600
    const v1, 0x7f130fed

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 608
    .line 609
    const v1, 0x7f130fec

    .line 610
    .line 611
    .line 612
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 617
    .line 618
    const v1, 0x7f130fe8

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v9

    .line 625
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 626
    .line 627
    const v1, 0x7f130fe7

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 635
    .line 636
    const v1, 0x7f130feb

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v11

    .line 643
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 644
    .line 645
    const v1, 0x7f130fea

    .line 646
    .line 647
    .line 648
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v12

    .line 652
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 657
    .line 658
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 659
    .line 660
    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 661
    .line 662
    if-eqz v1, :cond_7

    .line 663
    .line 664
    const v1, 0x7f060629

    .line 665
    .line 666
    .line 667
    goto :goto_3

    .line 668
    :cond_7
    const v1, 0x7f060628

    .line 669
    .line 670
    .line 671
    :goto_3
    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 672
    .line 673
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 678
    .line 679
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 684
    .line 685
    if-ne v1, v3, :cond_9

    .line 686
    .line 687
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 698
    .line 699
    and-int/lit8 v1, v1, 0xf

    .line 700
    .line 701
    if-lt v1, v2, :cond_8

    .line 702
    .line 703
    goto :goto_4

    .line 704
    :cond_8
    move v5, v0

    .line 705
    :goto_4
    if-nez v5, :cond_9

    .line 706
    .line 707
    const/4 v1, 0x7

    .line 708
    sput v1, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 709
    .line 710
    goto :goto_5

    .line 711
    :cond_9
    const/4 v1, 0x6

    .line 712
    sput v1, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 713
    .line 714
    :goto_5
    move v1, v0

    .line 715
    :goto_6
    sget v2, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 716
    .line 717
    if-ge v1, v2, :cond_a

    .line 718
    .line 719
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 720
    .line 721
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {p0, v2, v3}, Landroidx/picker3/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 736
    .line 737
    .line 738
    add-int/lit8 v1, v1, 0x1

    .line 739
    .line 740
    goto :goto_6

    .line 741
    :cond_a
    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    .line 742
    .line 743
    .line 744
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 745
    .line 746
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 747
    .line 748
    if-eqz p1, :cond_b

    .line 749
    .line 750
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 751
    .line 752
    .line 753
    move-result p1

    .line 754
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 755
    .line 756
    .line 757
    :cond_b
    const p1, 0x7f0a09e4

    .line 758
    .line 759
    .line 760
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    check-cast p1, Landroid/widget/EditText;

    .line 765
    .line 766
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 767
    .line 768
    const p1, 0x7f0a09ff

    .line 769
    .line 770
    .line 771
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    check-cast p1, Landroid/widget/EditText;

    .line 776
    .line 777
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 778
    .line 779
    const p1, 0x7f0a09e0

    .line 780
    .line 781
    .line 782
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    check-cast p1, Landroid/widget/EditText;

    .line 787
    .line 788
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 789
    .line 790
    const p1, 0x7f0a09e2

    .line 791
    .line 792
    .line 793
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    check-cast p1, Landroid/widget/EditText;

    .line 798
    .line 799
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 800
    .line 801
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 802
    .line 803
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 807
    .line 808
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 812
    .line 813
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 817
    .line 818
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 819
    .line 820
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 824
    .line 825
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 826
    .line 827
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 831
    .line 832
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 833
    .line 834
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 838
    .line 839
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 840
    .line 841
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 845
    .line 846
    new-instance p2, Landroidx/picker3/widget/SeslColorPicker$15;

    .line 847
    .line 848
    invoke-direct {p2, p0}, Landroidx/picker3/widget/SeslColorPicker$15;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 852
    .line 853
    .line 854
    const-string p1, ""

    .line 855
    .line 856
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    .line 857
    .line 858
    :goto_7
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 859
    .line 860
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 861
    .line 862
    .line 863
    move-result p1

    .line 864
    add-int/lit8 p1, p1, -0x1

    .line 865
    .line 866
    if-ge v0, p1, :cond_c

    .line 867
    .line 868
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 869
    .line 870
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object p1

    .line 874
    check-cast p1, Landroid/widget/EditText;

    .line 875
    .line 876
    new-instance p2, Landroidx/picker3/widget/SeslColorPicker$16;

    .line 877
    .line 878
    invoke-direct {p2, p0, p1}, Landroidx/picker3/widget/SeslColorPicker$16;-><init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 882
    .line 883
    .line 884
    add-int/lit8 v0, v0, 0x1

    .line 885
    .line 886
    goto :goto_7

    .line 887
    :cond_c
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 890
    .line 891
    .line 892
    move-result-object p1

    .line 893
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 894
    .line 895
    .line 896
    move-result p2

    .line 897
    if-eqz p2, :cond_d

    .line 898
    .line 899
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object p2

    .line 903
    check-cast p2, Landroid/widget/EditText;

    .line 904
    .line 905
    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$13;

    .line 906
    .line 907
    invoke-direct {v0, p0, p2}, Landroidx/picker3/widget/SeslColorPicker$13;-><init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 911
    .line 912
    .line 913
    goto :goto_8

    .line 914
    :cond_d
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 915
    .line 916
    new-instance p2, Landroidx/picker3/widget/SeslColorPicker$14;

    .line 917
    .line 918
    invoke-direct {p2, p0}, Landroidx/picker3/widget/SeslColorPicker$14;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 922
    .line 923
    .line 924
    return-void
.end method


# virtual methods
.method public final initColorSpectrumView()V
    .locals 5

    .line 1
    const v0, 0x7f0a09e6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 11
    .line 12
    const v0, 0x7f0a09e7

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSpectrumViewContainer:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "%d"

    .line 51
    .line 52
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 67
    .line 68
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$6;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$6;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorPicker$6;

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 76
    .line 77
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$7;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$7;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 86
    .line 87
    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$8;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$8;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final initOpacitySeekBar(Z)V
    .locals 4

    .line 1
    const v0, 0x7f0a09f0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 11
    .line 12
    const v0, 0x7f0a09f1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    const v0, 0x7f0a09ef

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 59
    .line 60
    const/16 v2, 0xff

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, v0}, Landroidx/picker3/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v2, 0x7f080fe5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 86
    .line 87
    iput-object v0, p1, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const v2, 0x7f080fe7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 114
    .line 115
    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$11;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$11;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 124
    .line 125
    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$12;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$12;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 141
    .line 142
    const v2, 0x7f131015

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", "

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 158
    .line 159
    const v3, 0x7f13101d

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 173
    .line 174
    const v1, 0x7f130ffe

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final mapColorOnColorWheel(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 31
    .line 32
    const/16 v1, 0xff

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-boolean v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 45
    .line 46
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 47
    .line 48
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 49
    .line 50
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Point;->set(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-boolean v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->currentCursorColor:I

    .line 62
    .line 63
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mShadowRect:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroidx/picker3/widget/SeslColorSwatchView;->setShadowRect(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 77
    .line 78
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 79
    .line 80
    mul-int/lit8 v3, v3, 0xb

    .line 81
    .line 82
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 83
    .line 84
    add-int/2addr v3, v2

    .line 85
    iput v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 v2, -0x1

    .line 89
    iput v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 90
    .line 91
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView;->setColor(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v2, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 110
    .line 111
    iget-object v3, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, v0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 129
    .line 130
    iget-object v3, v0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, p1, v0}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 149
    .line 150
    .line 151
    :cond_6
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 152
    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 156
    .line 157
    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 158
    .line 159
    const/4 v2, 0x2

    .line 160
    aget v0, v0, v2

    .line 161
    .line 162
    iget v2, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 163
    .line 164
    const/high16 v3, 0x3f800000    # 1.0f

    .line 165
    .line 166
    invoke-virtual {p1, v3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 170
    .line 171
    iput v1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 172
    .line 173
    iget-object v3, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 174
    .line 175
    invoke-static {v1, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 184
    .line 185
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 186
    .line 187
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 188
    .line 189
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 204
    .line 205
    iput v2, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 206
    .line 207
    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 208
    .line 209
    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 218
    .line 219
    :cond_7
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 220
    .line 221
    if-eqz p1, :cond_8

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    mul-int/lit8 p1, p1, 0x64

    .line 228
    .line 229
    int-to-float p1, p1

    .line 230
    const/high16 v0, 0x437f0000    # 255.0f

    .line 231
    .line 232
    div-float/2addr p1, v0

    .line 233
    float-to-double v0, p1

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    double-to-int p1, v0

    .line 239
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 240
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v2, ""

    .line 244
    .line 245
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    const-string v4, "%d"

    .line 261
    .line 262
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 277
    .line 278
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 287
    .line 288
    .line 289
    :cond_8
    return-void
.end method

.method public final setCurrentColorViewDescription(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string p1, ", "

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-eq p2, v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 37
    .line 38
    const p2, 0x7f131014    # 1.9548E38f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 50
    .line 51
    const p2, 0x7f130ff0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const v1, 0x7f080fed

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const v1, 0x7f080fec

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/16 p2, 0x3d

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    new-array v1, v1, [I

    .line 39
    .line 40
    filled-new-array {v1}, [[I

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    filled-new-array {p2}, [I

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {v2, v1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {p2, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker3/widget/SeslColorPicker$17;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final updateCurrentColor()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 8
    .line 9
    const-string v2, "%d"

    .line 10
    .line 11
    const-string v3, ""

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 20
    .line 21
    iget v5, v5, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 22
    .line 23
    invoke-virtual {v1, v4, v5}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 33
    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p0, v1, v4}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v1, v5}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v1, v5}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {v1, v5}, Landroidx/picker3/widget/SeslColorSpectrumView;->setColor(I)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object v6, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 143
    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    const/16 v6, 0xff

    .line 147
    .line 148
    invoke-static {v0, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    and-int/lit8 v6, v0, -0x1

    .line 153
    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const-string v7, "%08x"

    .line 163
    .line 164
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const/4 v7, 0x2

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    const v9, 0x7f130fdd

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_4

    .line 189
    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v8, "#"

    .line 193
    .line 194
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    const v9, 0x7f131027

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    iget-object v8, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 220
    .line 221
    aput v6, v8, v4

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_4
    iget-object v6, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 225
    .line 226
    aput v0, v6, v4

    .line 227
    .line 228
    :goto_0
    iget-object v6, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 229
    .line 230
    iget-object v8, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 231
    .line 232
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 233
    .line 234
    .line 235
    iget-object v6, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 236
    .line 237
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    .line 239
    .line 240
    const/4 v6, 0x3

    .line 241
    new-array v6, v6, [F

    .line 242
    .line 243
    invoke-static {v0, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 244
    .line 245
    .line 246
    aget v0, v6, v7

    .line 247
    .line 248
    const/high16 v8, 0x3f800000    # 1.0f

    .line 249
    .line 250
    aput v8, v6, v7

    .line 251
    .line 252
    iget-object v7, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 253
    .line 254
    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    aput v6, v7, v4

    .line 259
    .line 260
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    int-to-float v6, v6

    .line 265
    mul-float/2addr v0, v6

    .line 266
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 271
    .line 272
    .line 273
    :cond_5
    iput-boolean v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    .line 274
    .line 275
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 276
    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 309
    .line 310
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 319
    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    .line 323
    .line 324
    :cond_6
    return-void
.end method

.method public final updateHexAndRGBValues(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    and-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "%08x"

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "#"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    return-void
.end method

.method public final updateRecentColorLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, ", "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 20
    .line 21
    const v5, 0x7f131016

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    const/4 v4, 0x7

    .line 47
    sput v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v4, 0x6

    .line 51
    sput v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 52
    .line 53
    :goto_1
    move v4, v1

    .line 54
    :goto_2
    sget v5, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 55
    .line 56
    if-ge v4, v5, :cond_3

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-ge v4, v0, :cond_2

    .line 65
    .line 66
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {p0, v5, v7}, Landroidx/picker3/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 83
    .line 84
    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v8, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 91
    .line 92
    invoke-virtual {v8, v6}, Landroidx/picker3/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v8, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 105
    .line 106
    aget-object v8, v8, v4

    .line 107
    .line 108
    invoke-static {v6, v8, v2, v3}, Landroidx/fragment/app/FragmentTransaction$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v7, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    .line 129
    .line 130
    iget-object v2, v2, Landroidx/picker3/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    .line 131
    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 139
    .line 140
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    if-eqz v0, :cond_5

    .line 169
    .line 170
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 209
    .line 210
    .line 211
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    .line 212
    .line 213
    iget-object v0, v0, Landroidx/picker3/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    .line 214
    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 240
    .line 241
    .line 242
    :cond_6
    return-void
.end method
