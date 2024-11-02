.class public final Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BOTTOM:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;

.field public static final LEFT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RIGHT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

.field public static final TOP:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;


# instance fields
.field public final mAdditionalTouchArea:F

.field public mColorPrimary:I

.field public final mContainerRect:Landroid/graphics/Rect;

.field public mCurrentSection:I

.field public mDecorAnimation:Landroid/animation/AnimatorSet;

.field public final mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

.field public mEnabled:Z

.field public mImmersiveBottomPadding:I

.field public mLayoutFromRight:Z

.field public mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mLongList:Z

.field public final mMatchDragPosition:Z

.field public mOldChildCount:I

.field public mOldItemCount:I

.field public mOldThumbPosition:F

.field public final mOverlayPosition:I

.field public mPendingDrag:J

.field public mPreviewAnimation:Landroid/animation/AnimatorSet;

.field public final mPreviewImage:Landroid/view/View;

.field public final mPreviewMarginEnd:I

.field public final mPreviewResId:[I

.field public final mPrimaryText:Landroid/widget/TextView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mScaledTouchSlop:I

.field public final mScrollBarStyle:I

.field public mScrollCompleted:Z

.field public mScrollY:F

.field public mScrollbarPosition:I

.field public final mSecondaryText:Landroid/widget/TextView;

.field public mSectionIndexer:Landroid/widget/SectionIndexer;

.field public mSections:[Ljava/lang/Object;

.field public mShowingPreview:Z

.field public mShowingPrimary:Z

.field public mState:I

.field public final mSwitchPrimaryListener:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

.field public final mTempBounds:Landroid/graphics/Rect;

.field public final mTempMargins:Landroid/graphics/Rect;

.field public mThumbBackgroundColor:I

.field public final mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field public final mThumbImage:Landroid/widget/ImageView;

.field public final mThumbMarginEnd:I

.field public mThumbOffset:F

.field public final mThumbPosition:I

.field public mThumbRange:F

.field public final mTrackBottomPadding:I

.field public final mTrackImage:Landroid/widget/ImageView;

.field public final mTrackTopPadding:I

.field public mUpdatingLayout:Z

.field public final mVibrateIndex:I

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    .line 12
    .line 13
    const-string v1, "left"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    .line 19
    .line 20
    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    .line 21
    .line 22
    const-string/jumbo v1, "top"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    .line 29
    .line 30
    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    .line 31
    .line 32
    const-string/jumbo v1, "right"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    .line 39
    .line 40
    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;

    .line 41
    .line 42
    const-string v1, "bottom"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    new-instance v2, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v3, v2, [I

    .line 31
    .line 32
    iput-object v3, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 36
    .line 37
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 38
    .line 39
    const-wide/16 v5, -0x1

    .line 40
    .line 41
    iput-wide v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 42
    .line 43
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 44
    .line 45
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 49
    .line 50
    const/high16 v5, -0x40800000    # -1.0f

    .line 51
    .line 52
    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 53
    .line 54
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 55
    .line 56
    new-instance v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    .line 57
    .line 58
    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    .line 59
    .line 60
    .line 61
    iput-object v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    .line 62
    .line 63
    new-instance v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    .line 64
    .line 65
    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    .line 66
    .line 67
    .line 68
    iput-object v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    .line 69
    .line 70
    iput-object v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    if-nez v5, :cond_0

    .line 76
    .line 77
    move v5, v6

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    :goto_0
    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    iput v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    iput v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 110
    .line 111
    const/4 v7, 0x1

    .line 112
    iput-boolean v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 113
    .line 114
    iput v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 115
    .line 116
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 121
    .line 122
    const/16 v9, 0xb

    .line 123
    .line 124
    if-lt v8, v9, :cond_1

    .line 125
    .line 126
    move v8, v7

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    move v8, v6

    .line 129
    :goto_1
    iput-boolean v8, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    .line 130
    .line 131
    new-instance v8, Landroid/widget/ImageView;

    .line 132
    .line 133
    invoke-direct {v8, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    iput-object v8, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 137
    .line 138
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 139
    .line 140
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    .line 142
    .line 143
    new-instance v10, Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-direct {v10, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v10, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 149
    .line 150
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 151
    .line 152
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    .line 154
    .line 155
    new-instance v11, Landroid/view/View;

    .line 156
    .line 157
    invoke-direct {v11, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    iput-object v11, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {v11, v4}, Landroid/view/View;->setAlpha(F)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    iput-object v12, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    iput-object v13, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    sget-object v15, Landroidx/recyclerview/R$styleable;->FastScroll:[I

    .line 182
    .line 183
    const v4, 0x7f1407f6

    .line 184
    .line 185
    .line 186
    const/4 v9, 0x0

    .line 187
    invoke-virtual {v14, v9, v15, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    const/16 v9, 0x8

    .line 192
    .line 193
    :try_start_0
    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    iput v9, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    .line 198
    .line 199
    const/4 v9, 0x6

    .line 200
    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    aput v9, v3, v6

    .line 205
    .line 206
    const/4 v9, 0x7

    .line 207
    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    aput v9, v3, v7

    .line 212
    .line 213
    const/16 v3, 0x9

    .line 214
    .line 215
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    iput-object v3, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    .line 221
    const/16 v9, 0xd

    .line 222
    .line 223
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    int-to-float v2, v2

    .line 240
    const/4 v7, 0x4

    .line 241
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    const/4 v1, 0x5

    .line 246
    invoke-virtual {v4, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    move/from16 v17, v2

    .line 251
    .line 252
    const/16 v2, 0xb

    .line 253
    .line 254
    invoke-virtual {v4, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    move-object/from16 v16, v15

    .line 259
    .line 260
    const/16 v15, 0xa

    .line 261
    .line 262
    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    move-object/from16 v18, v13

    .line 267
    .line 268
    const/4 v13, 0x3

    .line 269
    invoke-virtual {v4, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 270
    .line 271
    .line 272
    move-result v13

    .line 273
    move/from16 v19, v13

    .line 274
    .line 275
    const/16 v13, 0xc

    .line 276
    .line 277
    invoke-virtual {v4, v13, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    iput v13, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .line 283
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    .line 285
    .line 286
    new-instance v4, Landroid/util/TypedValue;

    .line 287
    .line 288
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    const v6, 0x7f040131

    .line 296
    .line 297
    .line 298
    move-object/from16 v20, v12

    .line 299
    .line 300
    const/4 v12, 0x1

    .line 301
    invoke-virtual {v13, v6, v4, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 309
    .line 310
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    int-to-float v6, v6

    .line 319
    const v13, 0x3f666666    # 0.9f

    .line 320
    .line 321
    .line 322
    mul-float/2addr v6, v13

    .line 323
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    invoke-static {v6, v13, v12, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 344
    .line 345
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    const v6, 0x7f06065c

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    .line 357
    .line 358
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    .line 360
    .line 361
    if-eqz v9, :cond_2

    .line 362
    .line 363
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    const/4 v6, 0x0

    .line 368
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    goto :goto_2

    .line 373
    :cond_2
    const/4 v4, 0x0

    .line 374
    :goto_2
    if-eqz v3, :cond_3

    .line 375
    .line 376
    iget v6, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    .line 377
    .line 378
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 379
    .line 380
    .line 381
    :cond_3
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 388
    .line 389
    .line 390
    if-eqz v3, :cond_4

    .line 391
    .line 392
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    :cond_4
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    iput v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    .line 405
    .line 406
    invoke-virtual {v11, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v11, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 410
    .line 411
    .line 412
    if-eqz v14, :cond_5

    .line 413
    .line 414
    move-object/from16 v2, v20

    .line 415
    .line 416
    invoke-virtual {v2, v5, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 417
    .line 418
    .line 419
    move-object/from16 v3, v18

    .line 420
    .line 421
    invoke-virtual {v3, v5, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 422
    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_5
    move-object/from16 v3, v18

    .line 426
    .line 427
    move-object/from16 v2, v20

    .line 428
    .line 429
    :goto_3
    if-eqz v16, :cond_6

    .line 430
    .line 431
    move-object/from16 v4, v16

    .line 432
    .line 433
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 437
    .line 438
    .line 439
    :cond_6
    const/4 v4, 0x0

    .line 440
    cmpl-float v4, v17, v4

    .line 441
    .line 442
    if-lez v4, :cond_7

    .line 443
    .line 444
    move/from16 v4, v17

    .line 445
    .line 446
    const/4 v6, 0x0

    .line 447
    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 451
    .line 452
    .line 453
    goto :goto_4

    .line 454
    :cond_7
    const/4 v6, 0x0

    .line 455
    :goto_4
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 475
    .line 476
    .line 477
    iget v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 478
    .line 479
    const/4 v4, 0x2

    .line 480
    if-ne v1, v4, :cond_8

    .line 481
    .line 482
    const/4 v7, 0x1

    .line 483
    goto :goto_5

    .line 484
    :cond_8
    const/4 v7, 0x0

    .line 485
    :goto_5
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 489
    .line 490
    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v1, v8}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const v4, 0x7f071040

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 522
    .line 523
    const v4, 0x7f071041

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 531
    .line 532
    const v4, 0x7f07103f

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 540
    .line 541
    const v4, 0x7f071044

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackTopPadding:I

    .line 549
    .line 550
    const v4, 0x7f071043

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackBottomPadding:I

    .line 558
    .line 559
    const/4 v1, 0x0

    .line 560
    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    .line 561
    .line 562
    move/from16 v4, v19

    .line 563
    .line 564
    invoke-virtual {v2, v4, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3, v4, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 571
    .line 572
    .line 573
    iget v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 574
    .line 575
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 586
    .line 587
    .line 588
    const/16 v1, 0x1a

    .line 589
    .line 590
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVibrateIndex:I

    .line 595
    .line 596
    return-void

    .line 597
    :catchall_0
    move-exception v0

    .line 598
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    .line 600
    .line 601
    throw v0
.end method

.method public static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p2

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ltz v1, :cond_1

    .line 11
    .line 12
    aget-object v4, p2, v1

    .line 13
    .line 14
    new-array v5, v2, [F

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    aput p1, v5, v6

    .line 18
    .line 19
    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 6
    .line 7
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 10
    .line 11
    .line 12
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    sub-int/2addr p0, p1

    .line 21
    int-to-float p0, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotX(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final beginDrag()V
    .locals 10

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final canScrollList(I)Z
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-lez p1, :cond_4

    .line 19
    .line 20
    add-int/lit8 p1, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    add-int/2addr v2, v0

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    if-lt v2, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    sub-int/2addr p0, v0

    .line 50
    if-le p1, p0, :cond_3

    .line 51
    .line 52
    :cond_2
    move v1, v4

    .line 53
    :cond_3
    return v1

    .line 54
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-gtz v2, :cond_5

    .line 63
    .line 64
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    if-ge p0, p1, :cond_6

    .line 67
    .line 68
    :cond_5
    move v1, v4

    .line 69
    :cond_6
    return v1
.end method

.method public final createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x11

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public final getPosFromItemCount(III)F
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 10
    .line 11
    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    if-eqz p2, :cond_18

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    goto/16 :goto_b

    .line 18
    .line 19
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    .line 29
    if-lez v3, :cond_4

    .line 30
    .line 31
    instance-of v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    move-object v5, v4

    .line 36
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    :goto_0
    if-lez p1, :cond_4

    .line 39
    .line 40
    add-int/lit8 v6, p1, -0x1

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move p1, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    sub-int v6, p1, v6

    .line 61
    .line 62
    if-gez v6, :cond_5

    .line 63
    .line 64
    move v6, v5

    .line 65
    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-eqz v6, :cond_8

    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_6

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    if-nez p1, :cond_7

    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    sub-int v7, v3, v7

    .line 85
    .line 86
    int-to-float v7, v7

    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    add-int/2addr v8, v3

    .line 92
    int-to-float v3, v8

    .line 93
    div-float/2addr v7, v3

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    neg-int v3, v3

    .line 100
    int-to-float v3, v3

    .line 101
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    int-to-float v7, v7

    .line 106
    div-float v7, v3, v7

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    :goto_2
    move v7, v0

    .line 110
    :goto_3
    const/4 v3, 0x1

    .line 111
    if-eqz v1, :cond_9

    .line 112
    .line 113
    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz v8, :cond_9

    .line 116
    .line 117
    array-length v8, v8

    .line 118
    if-lez v8, :cond_9

    .line 119
    .line 120
    move v8, v3

    .line 121
    goto :goto_4

    .line 122
    :cond_9
    move v8, v5

    .line 123
    :goto_4
    if-eqz v8, :cond_f

    .line 124
    .line 125
    iget-boolean v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    .line 126
    .line 127
    if-nez v8, :cond_a

    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_a
    if-gez p1, :cond_b

    .line 131
    .line 132
    return v0

    .line 133
    :cond_b
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 142
    .line 143
    array-length p0, p0

    .line 144
    add-int/lit8 v8, p0, -0x1

    .line 145
    .line 146
    if-ge v4, v8, :cond_d

    .line 147
    .line 148
    add-int/lit8 v8, v4, 0x1

    .line 149
    .line 150
    if-ge v8, p0, :cond_c

    .line 151
    .line 152
    invoke-interface {v1, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    goto :goto_5

    .line 157
    :cond_c
    add-int/lit8 v1, p3, -0x1

    .line 158
    .line 159
    :goto_5
    sub-int/2addr v1, v6

    .line 160
    goto :goto_6

    .line 161
    :cond_d
    sub-int v1, p3, v6

    .line 162
    .line 163
    :goto_6
    if-nez v1, :cond_e

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_e
    int-to-float v0, p1

    .line 167
    add-float/2addr v0, v7

    .line 168
    int-to-float v6, v6

    .line 169
    sub-float/2addr v0, v6

    .line 170
    int-to-float v1, v1

    .line 171
    div-float/2addr v0, v1

    .line 172
    :goto_7
    int-to-float v1, v4

    .line 173
    add-float/2addr v1, v0

    .line 174
    int-to-float p0, p0

    .line 175
    div-float/2addr v1, p0

    .line 176
    goto :goto_a

    .line 177
    :cond_f
    :goto_8
    if-ne p2, p3, :cond_12

    .line 178
    .line 179
    if-eqz p1, :cond_10

    .line 180
    .line 181
    instance-of p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 182
    .line 183
    if-eqz p0, :cond_12

    .line 184
    .line 185
    :cond_10
    instance-of p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 186
    .line 187
    if-eqz p0, :cond_11

    .line 188
    .line 189
    if-eqz p1, :cond_11

    .line 190
    .line 191
    if-eqz v6, :cond_11

    .line 192
    .line 193
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    :cond_11
    return v0

    .line 203
    :cond_12
    instance-of p0, v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 204
    .line 205
    if-eqz p0, :cond_13

    .line 206
    .line 207
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 208
    .line 209
    iget p0, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 210
    .line 211
    iget-object v0, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    div-int/2addr p0, v0

    .line 218
    goto :goto_9

    .line 219
    :cond_13
    instance-of p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 220
    .line 221
    if-eqz p0, :cond_14

    .line 222
    .line 223
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 224
    .line 225
    iget p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_14
    move p0, v3

    .line 229
    :goto_9
    int-to-float v0, p1

    .line 230
    int-to-float p0, p0

    .line 231
    mul-float/2addr v7, p0

    .line 232
    add-float/2addr v7, v0

    .line 233
    int-to-float p0, p3

    .line 234
    div-float v1, v7, p0

    .line 235
    .line 236
    :goto_a
    add-int p0, p1, p2

    .line 237
    .line 238
    if-ne p0, p3, :cond_17

    .line 239
    .line 240
    sub-int/2addr p2, v3

    .line 241
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 250
    .line 251
    .line 252
    move-result p3

    .line 253
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    sub-int/2addr p3, v0

    .line 258
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    add-int/2addr v0, p3

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    sub-int/2addr p2, p3

    .line 272
    sub-int p2, v0, p2

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    if-gt p2, p3, :cond_15

    .line 279
    .line 280
    if-lez p1, :cond_16

    .line 281
    .line 282
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    :cond_16
    sub-int p0, p2, v0

    .line 287
    .line 288
    if-lez p0, :cond_17

    .line 289
    .line 290
    if-lez p2, :cond_17

    .line 291
    .line 292
    const/high16 p1, 0x3f800000    # 1.0f

    .line 293
    .line 294
    sub-float/2addr p1, v1

    .line 295
    int-to-float p0, p0

    .line 296
    int-to-float p2, p2

    .line 297
    div-float/2addr p0, p2

    .line 298
    mul-float/2addr p0, p1

    .line 299
    add-float/2addr v1, p0

    .line 300
    :cond_17
    return v1

    .line 301
    :cond_18
    :goto_b
    return v0
.end method

.method public final getPosFromMotionEvent(F)F
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v2, v0, v1

    .line 5
    .line 6
    if-gtz v2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    .line 10
    .line 11
    sub-float/2addr p1, p0

    .line 12
    div-float/2addr p1, v0

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-static {p1, v1, p0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final getSectionsFromIndexer()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 17
    .line 18
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v0, v2

    .line 28
    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 29
    .line 30
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 35
    .line 36
    if-nez p0, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move v1, v2

    .line 40
    :cond_4
    :goto_2
    return v1
.end method

.method public final isPointInside(FF)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    sub-float/2addr v0, v4

    .line 17
    cmpl-float p1, p1, v0

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    :goto_0
    move p1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move p1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    add-float/2addr v0, v4

    .line 31
    cmpg-float p1, p1, v0

    .line 32
    .line 33
    if-gtz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    add-float/2addr v0, p1

    .line 48
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    add-float/2addr v1, p1

    .line 54
    cmpl-float p1, p2, v0

    .line 55
    .line 56
    if-ltz p1, :cond_2

    .line 57
    .line 58
    cmpg-float p1, p2, v1

    .line 59
    .line 60
    if-gtz p1, :cond_2

    .line 61
    .line 62
    move p1, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move p1, v2

    .line 65
    :goto_2
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    move v2, v3

    .line 72
    :cond_3
    return v2
.end method

.method public final measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 8
    .line 9
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sub-int v0, v3, v0

    .line 55
    .line 56
    sub-int/2addr v0, v2

    .line 57
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/high16 v2, -0x80000000

    .line 62
    .line 63
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    div-int/lit8 v0, v0, 0xa

    .line 87
    .line 88
    add-int/2addr v0, v1

    .line 89
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    add-int/2addr v0, v1

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    add-int/2addr p2, v0

    .line 97
    sub-int/2addr v3, v2

    .line 98
    div-int/lit8 v3, v3, 0x2

    .line 99
    .line 100
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    add-int/2addr v3, p0

    .line 103
    add-int/2addr v2, v3

    .line 104
    invoke-virtual {p1, v3, v0, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {p0, p2, v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method

.method public final measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    move v0, v1

    .line 15
    move v1, v3

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    if-nez p2, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    move v1, v2

    .line 21
    :goto_1
    move v0, v3

    .line 22
    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_3
    iget-boolean v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 32
    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    goto :goto_3

    .line 40
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    sub-int/2addr v4, v5

    .line 45
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-int/2addr v4, v1

    .line 54
    sub-int/2addr v4, v0

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/high16 v6, -0x80000000

    .line 60
    .line 61
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {p1, v6, v5}, Landroid/view/View;->measure(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 85
    .line 86
    if-eqz p0, :cond_6

    .line 87
    .line 88
    if-nez p2, :cond_5

    .line 89
    .line 90
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    :goto_4
    sub-int/2addr p0, v0

    .line 98
    sub-int p2, p0, v4

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    if-nez p2, :cond_7

    .line 102
    .line 103
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    :goto_5
    add-int p2, p0, v1

    .line 111
    .line 112
    add-int p0, p2, v4

    .line 113
    .line 114
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    add-int/2addr p1, v3

    .line 119
    invoke-virtual {p3, p2, v3, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onScroll(III)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 28
    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 32
    .line 33
    const/high16 v3, -0x40800000    # -1.0f

    .line 34
    .line 35
    cmpl-float v4, v1, v3

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 40
    .line 41
    .line 42
    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 53
    .line 54
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 55
    .line 56
    if-eq p1, v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public final onStateDependencyChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-float v3, v3

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iput v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    return v5

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v4, :cond_b

    .line 39
    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x2

    .line 44
    if-eq v4, v6, :cond_9

    .line 45
    .line 46
    if-eq v4, v10, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    if-eq v4, p1, :cond_1

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    const-wide/16 v0, -0x1

    .line 54
    .line 55
    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 56
    .line 57
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 58
    .line 59
    if-ne p1, v10, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iput v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_3
    iget-wide v11, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 69
    .line 70
    cmp-long v4, v11, v7

    .line 71
    .line 72
    if-ltz v4, :cond_5

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    sub-float/2addr v4, v9

    .line 79
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iget v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    .line 84
    .line 85
    int-to-float v7, v7

    .line 86
    cmpl-float v4, v4, v7

    .line 87
    .line 88
    if-lez v4, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 91
    .line 92
    .line 93
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 94
    .line 95
    int-to-float v7, v1

    .line 96
    cmpl-float v8, v4, v7

    .line 97
    .line 98
    if-lez v8, :cond_5

    .line 99
    .line 100
    int-to-float v8, v0

    .line 101
    cmpg-float v8, v4, v8

    .line 102
    .line 103
    if-gez v8, :cond_5

    .line 104
    .line 105
    add-float/2addr v7, v3

    .line 106
    cmpg-float v8, v4, v7

    .line 107
    .line 108
    if-gez v8, :cond_4

    .line 109
    .line 110
    iput v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    cmpl-float v4, v4, v2

    .line 114
    .line 115
    if-lez v4, :cond_5

    .line 116
    .line 117
    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 118
    .line 119
    :cond_5
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 120
    .line 121
    if-ne v4, v10, :cond_c

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 134
    .line 135
    .line 136
    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 137
    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 141
    .line 142
    .line 143
    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 144
    .line 145
    int-to-float v1, v1

    .line 146
    cmpl-float v4, p1, v1

    .line 147
    .line 148
    if-lez v4, :cond_8

    .line 149
    .line 150
    int-to-float v0, v0

    .line 151
    cmpg-float v0, p1, v0

    .line 152
    .line 153
    if-gez v0, :cond_8

    .line 154
    .line 155
    add-float/2addr v1, v3

    .line 156
    cmpg-float v0, p1, v1

    .line 157
    .line 158
    if-gez v0, :cond_7

    .line 159
    .line 160
    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    cmpl-float p1, p1, v2

    .line 164
    .line 165
    if-lez p1, :cond_8

    .line 166
    .line 167
    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 168
    .line 169
    :cond_8
    :goto_1
    return v6

    .line 170
    :cond_9
    iget-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 171
    .line 172
    cmp-long v0, v0, v7

    .line 173
    .line 174
    if-ltz v0, :cond_a

    .line 175
    .line 176
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 193
    .line 194
    .line 195
    :cond_a
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 196
    .line 197
    if-ne p1, v10, :cond_c

    .line 198
    .line 199
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 208
    .line 209
    .line 210
    iput v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 211
    .line 212
    return v6

    .line 213
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_c

    .line 226
    .line 227
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 228
    .line 229
    .line 230
    return v6

    .line 231
    :cond_c
    :goto_2
    return v5
.end method

.method public final postAutoHide()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x5dc

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final scrollTo(F)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    move v2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    move v4, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    array-length v4, v3

    .line 23
    :goto_1
    const/4 v5, 0x1

    .line 24
    if-eqz v3, :cond_a

    .line 25
    .line 26
    if-lez v4, :cond_a

    .line 27
    .line 28
    int-to-float v3, v4

    .line 29
    mul-float v6, p1, v3

    .line 30
    .line 31
    float-to-int v6, v6

    .line 32
    add-int/lit8 v7, v4, -0x1

    .line 33
    .line 34
    invoke-static {v6, v0, v7}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 39
    .line 40
    invoke-interface {v8, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    add-int/lit8 v9, v6, 0x1

    .line 45
    .line 46
    if-ge v6, v7, :cond_2

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 49
    .line 50
    invoke-interface {v7, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v7, v2

    .line 56
    :goto_2
    move v10, v6

    .line 57
    if-ne v7, v8, :cond_6

    .line 58
    .line 59
    move v11, v8

    .line 60
    :cond_3
    if-lez v10, :cond_5

    .line 61
    .line 62
    add-int/lit8 v10, v10, -0x1

    .line 63
    .line 64
    iget-object v11, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 65
    .line 66
    invoke-interface {v11, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eq v11, v8, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    if-nez v10, :cond_3

    .line 74
    .line 75
    move v8, v0

    .line 76
    move v10, v6

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    move v10, v6

    .line 79
    :goto_3
    move v8, v11

    .line 80
    :cond_6
    move v11, v8

    .line 81
    move v8, v10

    .line 82
    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 83
    .line 84
    :goto_5
    if-ge v12, v4, :cond_7

    .line 85
    .line 86
    iget-object v13, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 87
    .line 88
    invoke-interface {v13, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-ne v13, v7, :cond_7

    .line 93
    .line 94
    add-int/lit8 v12, v12, 0x1

    .line 95
    .line 96
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    int-to-float v4, v10

    .line 100
    div-float/2addr v4, v3

    .line 101
    int-to-float v9, v9

    .line 102
    div-float/2addr v9, v3

    .line 103
    if-nez v2, :cond_8

    .line 104
    .line 105
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    const/high16 v3, 0x3e000000    # 0.125f

    .line 110
    .line 111
    int-to-float v12, v2

    .line 112
    div-float/2addr v3, v12

    .line 113
    :goto_6
    if-ne v10, v6, :cond_9

    .line 114
    .line 115
    sub-float v6, p1, v4

    .line 116
    .line 117
    cmpg-float v3, v6, v3

    .line 118
    .line 119
    if-gez v3, :cond_9

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_9
    sub-int/2addr v7, v11

    .line 123
    int-to-float v3, v7

    .line 124
    sub-float v6, p1, v4

    .line 125
    .line 126
    mul-float/2addr v6, v3

    .line 127
    sub-float/2addr v9, v4

    .line 128
    div-float/2addr v6, v9

    .line 129
    float-to-int v3, v6

    .line 130
    add-int/2addr v11, v3

    .line 131
    :goto_7
    sub-int/2addr v2, v5

    .line 132
    invoke-static {v11, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    goto :goto_8

    .line 137
    :cond_a
    int-to-float v3, v2

    .line 138
    mul-float/2addr v3, p1

    .line 139
    float-to-int v3, v3

    .line 140
    sub-int/2addr v2, v5

    .line 141
    invoke-static {v3, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    const/4 v8, -0x1

    .line 146
    :goto_8
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 147
    .line 148
    instance-of v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 149
    .line 150
    if-eqz v4, :cond_b

    .line 151
    .line 152
    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 153
    .line 154
    invoke-virtual {v3, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_b
    instance-of v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 159
    .line 160
    if-eqz v4, :cond_c

    .line 161
    .line 162
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 163
    .line 164
    invoke-virtual {v3, v2, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(IZ)V

    .line 165
    .line 166
    .line 167
    :cond_c
    :goto_9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 176
    .line 177
    if-nez v1, :cond_d

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    :goto_a
    invoke-virtual {p0, v2, v3, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 185
    .line 186
    .line 187
    iput v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 188
    .line 189
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string/jumbo v2, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v2, ", position = "

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v1, "SeslFastScroller"

    .line 217
    .line 218
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    iget-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 222
    .line 223
    if-nez p1, :cond_f

    .line 224
    .line 225
    if-eqz v0, :cond_f

    .line 226
    .line 227
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 228
    .line 229
    if-eqz p1, :cond_e

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 232
    .line 233
    .line 234
    :cond_e
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 235
    .line 236
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 237
    .line 238
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 239
    .line 240
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 241
    .line 242
    filled-new-array {v0, v1, v2}, [Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const/high16 v1, 0x3f800000    # 1.0f

    .line 247
    .line 248
    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    const-wide/16 v0, 0xa7

    .line 253
    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 259
    .line 260
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 264
    .line 265
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 273
    .line 274
    sget-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 282
    .line 283
    .line 284
    iput-boolean v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_f
    if-eqz p1, :cond_10

    .line 288
    .line 289
    if-nez v0, :cond_10

    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    .line 292
    .line 293
    .line 294
    :cond_10
    :goto_b
    return-void
.end method

.method public final setScrollbarPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x2

    .line 19
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 20
    .line 21
    if-eq v0, p1, :cond_3

    .line 22
    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 24
    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    .line 32
    .line 33
    aget p1, p1, v1

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final setState(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    if-eq p1, v3, :cond_3

    .line 25
    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-eqz v5, :cond_2

    .line 30
    .line 31
    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 37
    .line 38
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    if-eqz v5, :cond_4

    .line 43
    .line 44
    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    iput-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 54
    .line 55
    const/4 v5, -0x1

    .line 56
    iput v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 59
    .line 60
    if-eqz v5, :cond_6

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 63
    .line 64
    .line 65
    const/16 v5, 0x96

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    move v5, v4

    .line 69
    :goto_0
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 70
    .line 71
    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 72
    .line 73
    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 74
    .line 75
    iget-object v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 76
    .line 77
    filled-new-array {v1, v2, v7, v8, v9}, [Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-static {v6, v8, v7}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    int-to-long v7, v5

    .line 87
    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 92
    .line 93
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 97
    .line 98
    filled-new-array {v5}, [Landroid/animation/Animator;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 106
    .line 107
    sget-object v6, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    .line 111
    .line 112
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 115
    .line 116
    .line 117
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 118
    .line 119
    if-ne p1, v0, :cond_7

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    move v3, v4

    .line 123
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final setThumbPos(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v3, p1, v2

    .line 10
    .line 11
    if-lez v3, :cond_0

    .line 12
    .line 13
    :goto_0
    move p1, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    cmpg-float v3, p1, v2

    .line 17
    .line 18
    if-gez v3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 22
    .line 23
    mul-float/2addr p1, v2

    .line 24
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    .line 25
    .line 26
    add-float/2addr p1, v2

    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    const/high16 v4, 0x40000000    # 2.0f

    .line 35
    .line 36
    div-float/2addr v3, v4

    .line 37
    sub-float v3, p1, v3

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    div-float/2addr v3, v4

    .line 50
    int-to-float v1, v1

    .line 51
    add-float/2addr v1, v3

    .line 52
    int-to-float v0, v0

    .line 53
    sub-float/2addr v0, v3

    .line 54
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sub-float/2addr p1, v3

    .line 59
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final transitionPreviewLayout(I)Z
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v13, v2

    .line 29
    move-object v2, v1

    .line 30
    move-object v1, v13

    .line 31
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    const-string v6, ""

    .line 47
    .line 48
    if-ne v3, v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v7, 0x2

    .line 55
    if-ne v3, v7, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    cmpl-float v3, v3, v5

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    :goto_1
    xor-int/2addr p0, v4

    .line 80
    return p0

    .line 81
    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 82
    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_5

    .line 97
    .line 98
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVibrateIndex:I

    .line 101
    .line 102
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 103
    .line 104
    .line 105
    :cond_5
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 106
    .line 107
    new-array v6, v4, [F

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    const/high16 v8, 0x3f800000    # 1.0f

    .line 111
    .line 112
    aput v8, v6, v7

    .line 113
    .line 114
    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-wide/16 v9, 0x0

    .line 119
    .line 120
    invoke-virtual {v3, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 125
    .line 126
    new-array v11, v4, [F

    .line 127
    .line 128
    aput v5, v11, v7

    .line 129
    .line 130
    invoke-static {v2, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    .line 139
    .line 140
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    .line 142
    .line 143
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 144
    .line 145
    iget-object v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    sub-int/2addr v6, v10

    .line 152
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 155
    .line 156
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    sub-int/2addr v6, v10

    .line 161
    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 162
    .line 163
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    add-int/2addr v10, v6

    .line 170
    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 171
    .line 172
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 173
    .line 174
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    add-int/2addr v10, v6

    .line 179
    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 180
    .line 181
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 182
    .line 183
    filled-new-array {v6}, [I

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    sget-object v10, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    .line 188
    .line 189
    invoke-static {v10, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 194
    .line 195
    filled-new-array {v10}, [I

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    sget-object v11, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    .line 200
    .line 201
    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 206
    .line 207
    filled-new-array {v11}, [I

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    sget-object v12, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    .line 212
    .line 213
    invoke-static {v12, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 218
    .line 219
    filled-new-array {v0}, [I

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sget-object v12, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;

    .line 224
    .line 225
    invoke-static {v12, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    filled-new-array {v6, v10, v11, v0}, [Landroid/animation/PropertyValuesHolder;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-wide/16 v10, 0x64

    .line 238
    .line 239
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 240
    .line 241
    .line 242
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 243
    .line 244
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    .line 246
    .line 247
    iput-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 248
    .line 249
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    sub-int/2addr v0, v5

    .line 269
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    sub-int/2addr v0, v5

    .line 274
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-le v5, v0, :cond_6

    .line 279
    .line 280
    int-to-float v0, v0

    .line 281
    int-to-float v6, v5

    .line 282
    div-float/2addr v0, v6

    .line 283
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 284
    .line 285
    .line 286
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 287
    .line 288
    new-array v6, v4, [F

    .line 289
    .line 290
    aput v8, v6, v7

    .line 291
    .line 292
    invoke-static {v1, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_6
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 305
    .line 306
    .line 307
    :goto_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-le v0, v5, :cond_7

    .line 312
    .line 313
    int-to-float v1, v5

    .line 314
    int-to-float v0, v0

    .line 315
    div-float/2addr v1, v0

    .line 316
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 317
    .line 318
    new-array v5, v4, [F

    .line 319
    .line 320
    aput v1, v5, v7

    .line 321
    .line 322
    invoke-static {v2, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 331
    .line 332
    .line 333
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 334
    .line 335
    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    .line 339
    .line 340
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 341
    .line 342
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 343
    .line 344
    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    goto/16 :goto_1
.end method

.method public final transitionToVisible()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 13
    .line 14
    filled-new-array {v1, v2}, [Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-wide/16 v1, 0xa7

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 37
    .line 38
    filled-new-array {v4, v2, v3}, [Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-wide/16 v2, 0x96

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 59
    .line 60
    filled-new-array {v0, v1}, [Landroid/animation/Animator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 68
    .line 69
    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 76
    .line 77
    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final updateLayout()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 32
    .line 33
    const/high16 v6, 0x1000000

    .line 34
    .line 35
    if-eq v5, v6, :cond_1

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    :cond_1
    iget v7, v1, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    add-int/2addr v8, v7

    .line 46
    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    add-int/2addr v8, v7

    .line 55
    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    sub-int/2addr v7, v8

    .line 64
    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sub-int/2addr v7, v3

    .line 73
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    if-ne v5, v6, :cond_3

    .line 76
    .line 77
    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    .line 78
    .line 79
    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 80
    .line 81
    if-ne v5, v4, :cond_2

    .line 82
    .line 83
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    add-int/2addr v5, v3

    .line 86
    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    sub-int/2addr v5, v3

    .line 92
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 93
    .line 94
    :cond_3
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p0, v3, v5, v6}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v6, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const/high16 v8, -0x80000000

    .line 122
    .line 123
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 136
    .line 137
    invoke-virtual {v8, v5, v7}, Landroid/view/View;->measure(II)V

    .line 138
    .line 139
    .line 140
    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    .line 141
    .line 142
    iget v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackBottomPadding:I

    .line 143
    .line 144
    iget v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackTopPadding:I

    .line 145
    .line 146
    if-ne v5, v0, :cond_4

    .line 147
    .line 148
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    add-int/2addr v0, v9

    .line 151
    add-int/2addr v0, v2

    .line 152
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 153
    .line 154
    sub-int/2addr v1, v7

    .line 155
    sub-int/2addr v1, v2

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    div-int/2addr v0, v4

    .line 162
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    add-int/2addr v5, v0

    .line 165
    add-int/2addr v5, v9

    .line 166
    add-int/2addr v5, v2

    .line 167
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    sub-int/2addr v1, v0

    .line 170
    sub-int/2addr v1, v7

    .line 171
    sub-int/2addr v1, v2

    .line 172
    move v0, v5

    .line 173
    :goto_1
    if-ge v1, v0, :cond_5

    .line 174
    .line 175
    const-string v5, "Error occured during layoutTrack() because bottom["

    .line 176
    .line 177
    const-string v7, "] is less than top["

    .line 178
    .line 179
    const-string v9, "]."

    .line 180
    .line 181
    invoke-static {v5, v1, v7, v1, v9}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    const-string v5, "SeslFastScroller"

    .line 186
    .line 187
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move v1, v0

    .line 191
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    sub-int/2addr v3, v5

    .line 204
    div-int/2addr v3, v4

    .line 205
    add-int/2addr v3, v7

    .line 206
    add-int/2addr v5, v3

    .line 207
    invoke-virtual {v8, v3, v0, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    .line 211
    .line 212
    .line 213
    iput-boolean v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 214
    .line 215
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {p0, v6, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v6, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-virtual {p0, v6, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v6, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 229
    .line 230
    .line 231
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 232
    .line 233
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 234
    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    sub-int/2addr v0, v2

    .line 240
    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 241
    .line 242
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    sub-int/2addr v0, v2

    .line 249
    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 250
    .line 251
    iget v0, v6, Landroid/graphics/Rect;->right:I

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    add-int/2addr v2, v0

    .line 258
    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 259
    .line 260
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    add-int/2addr v2, v0

    .line 267
    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 268
    .line 269
    invoke-virtual {p0, v6, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public final updateLongList(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 20
    .line 21
    if-eq v0, p1, :cond_2

    .line 22
    .line 23
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public final updateOffsetAndRange()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    add-float/2addr v1, v0

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    int-to-float v2, v2

    .line 29
    sub-float/2addr v2, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-float v1, v0

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v2, v0

    .line 41
    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    .line 42
    .line 43
    sub-float/2addr v2, v1

    .line 44
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    .line 45
    .line 46
    int-to-float v0, v0

    .line 47
    sub-float/2addr v2, v0

    .line 48
    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    cmpg-float v1, v2, v0

    .line 52
    .line 53
    if-gez v1, :cond_1

    .line 54
    .line 55
    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 56
    .line 57
    :cond_1
    return-void
.end method
