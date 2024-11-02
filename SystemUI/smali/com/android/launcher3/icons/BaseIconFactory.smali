.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCanvas:Landroid/graphics/Canvas;

.field public final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

.field public final mContext:Landroid/content/Context;

.field public final mFillResIconDpi:I

.field public final mIconBitmapSize:I

.field public final mIsUserBadged:Landroid/util/SparseBooleanArray;

.field public mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

.field public final mOldBounds:Landroid/graphics/Rect;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

.field public final mShapeDetection:Z

.field public mWrapperBackgroundColor:I

.field public mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xf5

    .line 2
    .line 3
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 6
    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 7
    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    .line 8
    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 10
    new-instance p1, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 11
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 12
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x4

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 13
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 3
    .line 4
    return-void
.end method

.method public final createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move v2, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v4

    .line 14
    :goto_0
    new-array v5, v3, [F

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-object/from16 v7, p1

    .line 18
    .line 19
    invoke-virtual {v0, v7, v2, v6, v5}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aget v7, v5, v4

    .line 24
    .line 25
    iget v8, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    .line 26
    .line 27
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    iget-object v7, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 32
    .line 33
    invoke-virtual {v7, v10}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    new-instance v7, Lcom/android/launcher3/icons/BitmapInfo;

    .line 38
    .line 39
    invoke-direct {v7, v10, v11}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    .line 40
    .line 41
    .line 42
    instance-of v8, v2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 43
    .line 44
    const/4 v15, 0x4

    .line 45
    if-eqz v8, :cond_1

    .line 46
    .line 47
    check-cast v2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 48
    .line 49
    aget v12, v5, v4

    .line 50
    .line 51
    check-cast v2, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-direct {v5, v7, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v15, v5}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    const/4 v5, 0x0

    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    new-instance v7, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    .line 81
    .line 82
    iget-object v13, v2, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 83
    .line 84
    move-object v9, v7

    .line 85
    move v2, v15

    .line 86
    move-object v15, v5

    .line 87
    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move v2, v15

    .line 92
    sget v5, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    .line 93
    .line 94
    :goto_1
    sget-object v5, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    iget-object v6, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 97
    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    invoke-virtual {v6}, Landroid/os/UserHandle;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    iget-object v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 105
    .line 106
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-ltz v8, :cond_2

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 113
    .line 114
    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    goto :goto_3

    .line 119
    :cond_2
    new-instance v8, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;

    .line 120
    .line 121
    invoke-direct {v8, v4}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>(I)V

    .line 122
    .line 123
    .line 124
    iget-object v9, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 125
    .line 126
    iget-object v10, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 127
    .line 128
    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    if-eq v8, v9, :cond_3

    .line 133
    .line 134
    move v8, v3

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move v8, v4

    .line 137
    :goto_2
    iget-object v0, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 138
    .line 139
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 140
    .line 141
    .line 142
    move v0, v8

    .line 143
    :goto_3
    if-eqz v0, :cond_4

    .line 144
    .line 145
    iget-boolean v6, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    .line 146
    .line 147
    if-eqz v6, :cond_4

    .line 148
    .line 149
    move v6, v3

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    move v6, v4

    .line 152
    :goto_4
    if-eqz v6, :cond_5

    .line 153
    .line 154
    new-instance v6, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 155
    .line 156
    invoke-direct {v6, v5, v2, v4}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    new-instance v6, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 161
    .line 162
    invoke-direct {v6, v5, v2, v3}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 163
    .line 164
    .line 165
    :goto_5
    if-eqz v0, :cond_6

    .line 166
    .line 167
    iget-boolean v0, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    .line 168
    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    move v0, v3

    .line 172
    goto :goto_6

    .line 173
    :cond_6
    move v0, v4

    .line 174
    :goto_6
    if-eqz v0, :cond_7

    .line 175
    .line 176
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    invoke-direct {v0, v6, v3, v4}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_7
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 183
    .line 184
    invoke-direct {v0, v6, v3, v3}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_8
    move-object v0, v5

    .line 189
    :goto_7
    if-ne v0, v5, :cond_9

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_9
    invoke-virtual {v7}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    iget v1, v7, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 197
    .line 198
    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iput v0, v7, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 203
    .line 204
    :goto_8
    return-object v7
.end method

.method public final createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 8

    .line 6
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    .line 7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    .line 9
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 10
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 13
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    .line 17
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 5
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public final createScaledBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [F

    .line 8
    .line 9
    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v1, 0x0

    .line 14
    aget v1, v2, v1

    .line 15
    .line 16
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 17
    .line 18
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v3, 0x3d0f5c29    # 0.035f

    .line 31
    .line 32
    .line 33
    cmpg-float v3, v2, v3

    .line 34
    .line 35
    const/high16 v4, 0x3f000000    # 0.5f

    .line 36
    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    const v3, 0x3eee147b    # 0.465f

    .line 40
    .line 41
    .line 42
    sub-float v2, v4, v2

    .line 43
    .line 44
    div-float/2addr v3, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    .line 48
    :goto_0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 49
    .line 50
    const v2, 0x3d64b17e

    .line 51
    .line 52
    .line 53
    cmpg-float v2, v0, v2

    .line 54
    .line 55
    if-gez v2, :cond_1

    .line 56
    .line 57
    const v2, 0x3ee369d0

    .line 58
    .line 59
    .line 60
    sub-float/2addr v4, v0

    .line 61
    div-float/2addr v2, v4

    .line 62
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public final drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 13
    .line 14
    const v2, 0x3caaaaab

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x7

    .line 18
    const/16 v4, 0x19

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x2

    .line 22
    if-eqz v1, :cond_7

    .line 23
    .line 24
    int-to-float p5, v0

    .line 25
    const v1, 0x3d0f5c29    # 0.035f

    .line 26
    .line 27
    .line 28
    mul-float/2addr v1, p5

    .line 29
    float-to-double v7, v1

    .line 30
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    double-to-int v1, v7

    .line 35
    const/high16 v7, 0x3f800000    # 1.0f

    .line 36
    .line 37
    sub-float/2addr v7, p3

    .line 38
    mul-float/2addr v7, p5

    .line 39
    const/high16 p3, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v7, p3

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    sub-int/2addr v0, p3

    .line 51
    sub-int/2addr v0, p3

    .line 52
    invoke-virtual {p2, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    .line 57
    .line 58
    move-result p5

    .line 59
    int-to-float p3, p3

    .line 60
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    .line 62
    .line 63
    if-eq p4, v6, :cond_0

    .line 64
    .line 65
    const/4 p3, 0x4

    .line 66
    if-ne p4, p3, :cond_2

    .line 67
    .line 68
    :cond_0
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 69
    .line 70
    if-nez p3, :cond_1

    .line 71
    .line 72
    new-instance p3, Lcom/android/launcher3/icons/ShadowGenerator;

    .line 73
    .line 74
    iget p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 75
    .line 76
    invoke-direct {p3, p4}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 80
    .line 81
    :cond_1
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 82
    .line 83
    move-object p4, p2

    .line 84
    check-cast p4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 85
    .line 86
    invoke-virtual {p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    iget-object v0, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 91
    .line 92
    iget-object v1, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    .line 109
    .line 110
    iget p3, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    .line 111
    .line 112
    int-to-float p3, p3

    .line 113
    mul-float/2addr p3, v2

    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    .line 123
    .line 124
    const/4 p3, 0x0

    .line 125
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 126
    .line 127
    .line 128
    :cond_2
    instance-of p3, p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 129
    .line 130
    if-eqz p3, :cond_6

    .line 131
    .line 132
    move-object p3, p2

    .line 133
    check-cast p3, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 134
    .line 135
    check-cast p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    check-cast p4, Landroid/graphics/drawable/LayerDrawable;

    .line 142
    .line 143
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 144
    .line 145
    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    .line 146
    .line 147
    const/4 v1, -0x1

    .line 148
    if-eq v0, v1, :cond_3

    .line 149
    .line 150
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 158
    .line 159
    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    .line 160
    .line 161
    if-eq v0, v1, :cond_4

    .line 162
    .line 163
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 168
    .line 169
    .line 170
    :cond_4
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 171
    .line 172
    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    .line 173
    .line 174
    if-eq v0, v1, :cond_5

    .line 175
    .line 176
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 177
    .line 178
    .line 179
    move-result-object p4

    .line 180
    invoke-virtual {p4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 181
    .line 182
    .line 183
    :cond_5
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    .line 185
    .line 186
    iget-object p4, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 187
    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 197
    .line 198
    invoke-virtual {p4, v0, p3}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    .line 204
    .line 205
    :goto_0
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_7
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 211
    .line 212
    if-eqz v1, :cond_8

    .line 213
    .line 214
    move-object v1, p2

    .line 215
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-eqz v7, :cond_8

    .line 222
    .line 223
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-nez v7, :cond_8

    .line 228
    .line 229
    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-lez v1, :cond_a

    .line 251
    .line 252
    if-lez v7, :cond_a

    .line 253
    .line 254
    int-to-float v8, v1

    .line 255
    int-to-float v9, v7

    .line 256
    div-float/2addr v8, v9

    .line 257
    if-le v1, v7, :cond_9

    .line 258
    .line 259
    int-to-float v1, v0

    .line 260
    div-float/2addr v1, v8

    .line 261
    float-to-int v1, v1

    .line 262
    move v7, v1

    .line 263
    move v1, v0

    .line 264
    goto :goto_1

    .line 265
    :cond_9
    if-le v7, v1, :cond_a

    .line 266
    .line 267
    int-to-float v1, v0

    .line 268
    mul-float/2addr v1, v8

    .line 269
    float-to-int v1, v1

    .line 270
    move v7, v0

    .line 271
    goto :goto_1

    .line 272
    :cond_a
    move v1, v0

    .line 273
    move v7, v1

    .line 274
    :goto_1
    sub-int v8, v0, v1

    .line 275
    .line 276
    div-int/2addr v8, v6

    .line 277
    sub-int v9, v0, v7

    .line 278
    .line 279
    div-int/2addr v9, v6

    .line 280
    add-int/2addr v1, v8

    .line 281
    add-int/2addr v7, v9

    .line 282
    invoke-virtual {p2, v8, v9, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 286
    .line 287
    .line 288
    div-int/2addr v0, v6

    .line 289
    int-to-float v0, v0

    .line 290
    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 297
    .line 298
    .line 299
    if-ne p4, v6, :cond_c

    .line 300
    .line 301
    if-eqz p5, :cond_c

    .line 302
    .line 303
    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 304
    .line 305
    if-nez p4, :cond_b

    .line 306
    .line 307
    new-instance p4, Lcom/android/launcher3/icons/ShadowGenerator;

    .line 308
    .line 309
    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 310
    .line 311
    invoke-direct {p4, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    .line 312
    .line 313
    .line 314
    iput-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 315
    .line 316
    :cond_b
    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 317
    .line 318
    monitor-enter p4

    .line 319
    :try_start_0
    new-array v1, v6, [I

    .line 320
    .line 321
    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 322
    .line 323
    iget-object v7, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 324
    .line 325
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 326
    .line 327
    .line 328
    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 329
    .line 330
    invoke-virtual {p5, v6, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    .line 331
    .line 332
    .line 333
    move-result-object p5

    .line 334
    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 335
    .line 336
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    .line 338
    .line 339
    aget v4, v1, v5

    .line 340
    .line 341
    int-to-float v4, v4

    .line 342
    const/4 v6, 0x1

    .line 343
    aget v7, v1, v6

    .line 344
    .line 345
    int-to-float v7, v7

    .line 346
    iget-object v8, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 347
    .line 348
    invoke-virtual {p1, p5, v4, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    .line 350
    .line 351
    iget-object v4, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 352
    .line 353
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    .line 355
    .line 356
    aget v3, v1, v5

    .line 357
    .line 358
    int-to-float v3, v3

    .line 359
    aget v1, v1, v6

    .line 360
    .line 361
    int-to-float v1, v1

    .line 362
    iget v4, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    .line 363
    .line 364
    int-to-float v4, v4

    .line 365
    mul-float/2addr v4, v2

    .line 366
    add-float/2addr v4, v1

    .line 367
    iget-object v1, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 368
    .line 369
    invoke-virtual {p1, p5, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .line 371
    .line 372
    monitor-exit p4

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 383
    .line 384
    .line 385
    goto :goto_2

    .line 386
    :catchall_0
    move-exception p0

    .line 387
    monitor-exit p4

    .line 388
    throw p0

    .line 389
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 390
    .line 391
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 392
    .line 393
    .line 394
    return-void
.end method

.method public final getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 10
    .line 11
    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 19
    .line 20
    return-object p0
.end method

.method public final normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    instance-of p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 9
    .line 10
    if-nez p2, :cond_4

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const v2, 0x7f08066f

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p2, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 37
    .line 38
    .line 39
    new-array v2, v2, [Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, p1, p3, v4, v2}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    aget-boolean v2, v2, v1

    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/android/launcher3/icons/FixedScaleDrawable;

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    int-to-float p1, p1

    .line 71
    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    int-to-float v4, v4

    .line 76
    const v5, 0x3eeef1fe    # 0.46669f

    .line 77
    .line 78
    .line 79
    mul-float/2addr v3, v5

    .line 80
    iput v3, v2, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 81
    .line 82
    iput v3, v2, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 83
    .line 84
    cmpl-float v5, p1, v4

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    if-lez v5, :cond_2

    .line 88
    .line 89
    cmpl-float v5, v4, v6

    .line 90
    .line 91
    if-lez v5, :cond_2

    .line 92
    .line 93
    div-float/2addr v4, p1

    .line 94
    mul-float/2addr v4, v3

    .line 95
    iput v4, v2, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    cmpl-float v5, v4, p1

    .line 99
    .line 100
    if-lez v5, :cond_3

    .line 101
    .line 102
    cmpl-float v5, p1, v6

    .line 103
    .line 104
    if-lez v5, :cond_3

    .line 105
    .line 106
    div-float/2addr p1, v4

    .line 107
    mul-float/2addr p1, v3

    .line 108
    iput p1, v2, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 109
    .line 110
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 123
    .line 124
    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 127
    .line 128
    .line 129
    move-object p1, p2

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    :cond_5
    :goto_1
    aput v3, p4, v1

    .line 140
    .line 141
    return-object p1
.end method
