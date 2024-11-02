.class Landroidx/picker3/widget/SeslColorSwatchView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final ROUNDED_CORNER_RADIUS_IN_Px:I

.field public corners:[F

.field public currentCursorColor:I

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public final mColorBrightness:[[I

.field public final mColorSwatch:[[I

.field public final mColorSwatchDescription:[[Ljava/lang/StringBuilder;

.field public mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public final mCursorIndex:Landroid/graphics/Point;

.field public mCursorRect:Landroid/graphics/Rect;

.field public mFromUser:Z

.field public mIsColorInSwatch:Z

.field public mListener:Landroidx/picker3/widget/SeslColorPicker$5;

.field public final mResources:Landroid/content/res/Resources;

.field public mSelectedVirtualViewId:I

.field public mShadowRect:Landroid/graphics/Rect;

.field public final mStartMargin:I

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mSwatchItemHeight:F

.field public final mSwatchItemWidth:F

.field public final mSwatchRect:Landroid/graphics/RectF;

.field public final mSwatchRectBackground:Landroid/graphics/RectF;

.field public final mTopMargin:I

.field public mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

.field public shadow:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/picker3/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker3/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker3/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    .line 4
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    const/4 v2, -0x1

    .line 6
    iput v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 7
    iput-boolean v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    const/16 v3, 0xa

    new-array v4, v3, [I

    .line 9
    fill-array-data v4, :array_0

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    new-array v6, v3, [I

    fill-array-data v6, :array_2

    new-array v7, v3, [I

    fill-array-data v7, :array_3

    new-array v8, v3, [I

    fill-array-data v8, :array_4

    new-array v9, v3, [I

    fill-array-data v9, :array_5

    new-array v10, v3, [I

    fill-array-data v10, :array_6

    new-array v11, v3, [I

    fill-array-data v11, :array_7

    new-array v12, v3, [I

    fill-array-data v12, :array_8

    new-array v13, v3, [I

    fill-array-data v13, :array_9

    new-array v14, v3, [I

    fill-array-data v14, :array_a

    filled-new-array/range {v4 .. v14}, [[I

    move-result-object v4

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    new-array v5, v3, [I

    .line 10
    fill-array-data v5, :array_b

    new-array v6, v3, [I

    fill-array-data v6, :array_c

    new-array v7, v3, [I

    fill-array-data v7, :array_d

    new-array v8, v3, [I

    fill-array-data v8, :array_e

    new-array v9, v3, [I

    fill-array-data v9, :array_f

    new-array v10, v3, [I

    fill-array-data v10, :array_10

    new-array v11, v3, [I

    fill-array-data v11, :array_11

    new-array v12, v3, [I

    fill-array-data v12, :array_12

    new-array v13, v3, [I

    fill-array-data v13, :array_13

    new-array v14, v3, [I

    fill-array-data v14, :array_14

    new-array v15, v3, [I

    fill-array-data v15, :array_15

    filled-new-array/range {v5 .. v15}, [[I

    move-result-object v4

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    const/16 v4, 0xb

    .line 11
    filled-new-array {v4, v3}, [I

    move-result-object v3

    const-class v4, Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/StringBuilder;

    iput-object v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080fee

    .line 13
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 14
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 15
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mShadowRect:Landroid/graphics/Rect;

    .line 16
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->shadow:Landroid/graphics/Paint;

    .line 17
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->shadow:Landroid/graphics/Paint;

    const v5, 0x7f06061f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->shadow:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {v5, v7, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 20
    new-instance v4, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    invoke-direct {v4, v0, v0}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;-><init>(Landroidx/picker3/widget/SeslColorSwatchView;Landroid/view/View;)V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 21
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v1, 0x7f070f9c

    .line 23
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v7

    iput v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    const v4, 0x7f070fa1

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/high16 v6, 0x41300000    # 11.0f

    div-float/2addr v5, v6

    iput v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    const v5, 0x7f071110

    .line 25
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    const v6, 0x7f071111

    .line 26
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 27
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v5

    const/high16 v9, 0x40900000    # 4.5f

    add-float/2addr v8, v9

    int-to-float v10, v6

    add-float/2addr v10, v9

    .line 28
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v9

    .line 29
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v6

    int-to-float v1, v1

    add-float/2addr v1, v9

    invoke-direct {v7, v8, v10, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchRect:Landroid/graphics/RectF;

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    const v4, 0x7f070fa2

    .line 31
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f070f9d

    .line 32
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchRectBackground:Landroid/graphics/RectF;

    .line 33
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    const/4 v1, 0x4

    int-to-float v1, v1

    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 35
    iput v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStrokePaint:Landroid/graphics/Paint;

    .line 37
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, 0x7f060623

    .line 38
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x3e800000    # 0.25f

    .line 39
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 41
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f060627

    .line 42
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x333334
        -0x4c4c4d
        -0x666667
        -0x7d7d7e
        -0x99999a
        -0xb2b2b3
        -0xcccccd
        -0xe5e5e6
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        -0x5758
        -0x9495
        -0xc2c3
        -0xebec
        -0x10000
        -0x60000
        -0x250000
        -0x580000
        -0xa40000
        -0xcd0000
    .end array-data

    :array_2
    .array-data 4
        -0x2b58
        -0x4a95
        -0x63c8
        -0x77f1
        -0x8000
        -0x58300
        -0x249200
        -0x57ac00
        -0xa3d200
        -0xcce600
    .end array-data

    :array_3
    .array-data 4
        -0x58
        -0x9a
        -0xc8
        -0x100
        -0x50400
        -0x50600
        -0x242500
        -0x5c5d00
        -0xa3a400
        -0xcccd00
    .end array-data

    :array_4
    .array-data 4
        -0x570058
        -0x99009a
        -0xc700c8
        -0xf500f6
        -0xff0100
        -0xff0600
        -0xff2500
        -0xff5d00
        -0xffa400
        -0xffcd00
    .end array-data

    :array_5
    .array-data 4
        -0x570035
        -0x99005d
        -0xc70078
        -0xf00091
        -0xff009a
        -0xff0a9e
        -0xff24a8
        -0xff5cbf
        -0xffa3db
        -0xffccec
    .end array-data

    :array_6
    .array-data 4
        -0x570001
        -0x990001
        -0xc20001
        -0xf50001
        -0xff0001
        -0xff0a0b
        -0xff2425
        -0xff5c5d
        -0xffa3a4
        -0xffcccd
    .end array-data

    :array_7
    .array-data 4
        -0x572b01
        -0x944a01
        -0xc76301
        -0xeb7501
        -0xff7f01
        -0xff8206
        -0xff9125
        -0xffab58
        -0xffce9f
        -0xffe5cd
    .end array-data

    :array_8
    .array-data 4
        -0x575701
        -0x949401
        -0xc7c701
        -0xf5f501
        -0xffff01
        -0xffff06
        -0xffff25
        -0xffff58
        -0xffff9f
        -0xffffcd
    .end array-data

    :array_9
    .array-data 4
        -0x345701
        -0x599401
        -0x77c701
        -0x90f001
        -0x99ff01
        -0x9bff06
        -0xa7ff25
        -0xbcff58
        -0xdaffa4
        -0xebffcd
    .end array-data

    :array_a
    .array-data 4
        -0x5701
        -0x9901
        -0xc701
        -0xf001
        -0xff01
        -0x5ff06
        -0x24ff25
        -0x57ff58
        -0x9eff9f
        -0xccffcd
    .end array-data

    :array_b
    .array-data 4
        0x64
        0x50
        0x46
        0x3c
        0x33
        0x28
        0x1e
        0x14
        0xa
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x53
        0x47
        0x3e
        0x36
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_d
    .array-data 4
        0x53
        0x47
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x53
        0x46
        0x3d
        0x32
        0x33
        0x31
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_f
    .array-data 4
        0x53
        0x46
        0x3d
        0x34
        0x32
        0x31
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_10
    .array-data 4
        0x53
        0x46
        0x3d
        0x35
        0x32
        0x30
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_11
    .array-data 4
        0x53
        0x46
        0x3e
        0x34
        0x32
        0x30
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_12
    .array-data 4
        0x53
        0x47
        0x3d
        0x36
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_13
    .array-data 4
        0x53
        0x47
        0x3d
        0x34
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_14
    .array-data 4
        0x53
        0x47
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_15
    .array-data 4
        0x53
        0x46
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 10
    .line 11
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 16
    .line 17
    aget-object v0, v0, p1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 22
    .line 23
    mul-int/lit8 p1, p1, 0xb

    .line 24
    .line 25
    add-int/2addr p1, v1

    .line 26
    sget v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->$r8$clinit:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    return-object v0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final getCursorIndexAt(I)Landroid/graphics/Point;
    .locals 7

    .line 1
    shr-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    shr-int/lit8 v2, p1, 0x8

    .line 7
    .line 8
    and-int/2addr v2, v1

    .line 9
    and-int/2addr p1, v1

    .line 10
    invoke-static {v1, v0, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-instance v0, Landroid/graphics/Point;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    .line 22
    .line 23
    move v3, v2

    .line 24
    :goto_0
    const/16 v4, 0xb

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-ge v3, v4, :cond_2

    .line 28
    .line 29
    move v4, v2

    .line 30
    :goto_1
    const/16 v6, 0xa

    .line 31
    .line 32
    if-ge v4, v6, :cond_1

    .line 33
    .line 34
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 35
    .line 36
    aget-object v6, v6, v3

    .line 37
    .line 38
    aget v6, v6, v4

    .line 39
    .line 40
    if-ne v6, p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 43
    .line 44
    .line 45
    iput-boolean v5, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iput-boolean v5, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 54
    .line 55
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 60
    .line 61
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    new-instance v8, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchRectBackground:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 13
    .line 14
    int-to-float v3, v2

    .line 15
    int-to-float v2, v2

    .line 16
    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    move v10, v9

    .line 23
    :goto_0
    const/16 v1, 0xb

    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ge v10, v1, :cond_5

    .line 28
    .line 29
    move v11, v9

    .line 30
    :goto_1
    const/16 v1, 0xa

    .line 31
    .line 32
    if-ge v11, v1, :cond_4

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 35
    .line 36
    aget-object v3, v3, v10

    .line 37
    .line 38
    aget v3, v3, v11

    .line 39
    .line 40
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    const/4 v4, 0x6

    .line 45
    const/4 v5, 0x5

    .line 46
    const/4 v6, 0x4

    .line 47
    const/4 v12, 0x3

    .line 48
    const/4 v13, 0x2

    .line 49
    const/4 v14, 0x1

    .line 50
    const/16 v16, 0x0

    .line 51
    .line 52
    if-nez v10, :cond_0

    .line 53
    .line 54
    if-nez v11, :cond_0

    .line 55
    .line 56
    new-array v1, v2, [F

    .line 57
    .line 58
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 59
    .line 60
    int-to-float v15, v2

    .line 61
    aput v15, v1, v9

    .line 62
    .line 63
    int-to-float v2, v2

    .line 64
    aput v2, v1, v14

    .line 65
    .line 66
    aput v16, v1, v13

    .line 67
    .line 68
    aput v16, v1, v12

    .line 69
    .line 70
    aput v16, v1, v6

    .line 71
    .line 72
    aput v16, v1, v5

    .line 73
    .line 74
    aput v16, v1, v4

    .line 75
    .line 76
    aput v16, v1, v3

    .line 77
    .line 78
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 79
    .line 80
    new-instance v1, Landroid/graphics/Path;

    .line 81
    .line 82
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 83
    .line 84
    .line 85
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 86
    .line 87
    int-to-float v3, v2

    .line 88
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 89
    .line 90
    int-to-float v5, v10

    .line 91
    const/high16 v6, 0x40900000    # 4.5f

    .line 92
    .line 93
    invoke-static {v5, v4, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    float-to-int v3, v3

    .line 98
    int-to-float v3, v3

    .line 99
    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 100
    .line 101
    int-to-float v12, v5

    .line 102
    iget v13, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 103
    .line 104
    int-to-float v14, v11

    .line 105
    invoke-static {v14, v13, v12, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    float-to-int v12, v12

    .line 110
    int-to-float v12, v12

    .line 111
    int-to-float v2, v2

    .line 112
    add-int/lit8 v14, v10, 0x1

    .line 113
    .line 114
    int-to-float v14, v14

    .line 115
    invoke-static {v4, v14, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    float-to-int v2, v2

    .line 120
    int-to-float v2, v2

    .line 121
    int-to-float v4, v5

    .line 122
    add-int/lit8 v5, v11, 0x1

    .line 123
    .line 124
    int-to-float v5, v5

    .line 125
    invoke-static {v13, v5, v4, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    float-to-int v4, v4

    .line 130
    int-to-float v4, v4

    .line 131
    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 132
    .line 133
    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 134
    .line 135
    move-object/from16 v17, v1

    .line 136
    .line 137
    move/from16 v18, v3

    .line 138
    .line 139
    move/from16 v19, v12

    .line 140
    .line 141
    move/from16 v20, v2

    .line 142
    .line 143
    move/from16 v21, v4

    .line 144
    .line 145
    move-object/from16 v22, v5

    .line 146
    .line 147
    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_0
    if-nez v10, :cond_1

    .line 156
    .line 157
    const/16 v2, 0x9

    .line 158
    .line 159
    if-ne v11, v2, :cond_1

    .line 160
    .line 161
    const/16 v1, 0x8

    .line 162
    .line 163
    new-array v1, v1, [F

    .line 164
    .line 165
    aput v16, v1, v9

    .line 166
    .line 167
    aput v16, v1, v14

    .line 168
    .line 169
    aput v16, v1, v13

    .line 170
    .line 171
    aput v16, v1, v12

    .line 172
    .line 173
    aput v16, v1, v6

    .line 174
    .line 175
    aput v16, v1, v5

    .line 176
    .line 177
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 178
    .line 179
    int-to-float v5, v2

    .line 180
    aput v5, v1, v4

    .line 181
    .line 182
    int-to-float v2, v2

    .line 183
    aput v2, v1, v3

    .line 184
    .line 185
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 186
    .line 187
    new-instance v1, Landroid/graphics/Path;

    .line 188
    .line 189
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 190
    .line 191
    .line 192
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 193
    .line 194
    int-to-float v3, v2

    .line 195
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 196
    .line 197
    int-to-float v5, v10

    .line 198
    const/high16 v6, 0x40900000    # 4.5f

    .line 199
    .line 200
    invoke-static {v5, v4, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    float-to-int v3, v3

    .line 205
    int-to-float v3, v3

    .line 206
    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 207
    .line 208
    int-to-float v12, v5

    .line 209
    iget v13, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 210
    .line 211
    int-to-float v14, v11

    .line 212
    invoke-static {v14, v13, v12, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    float-to-int v12, v12

    .line 217
    int-to-float v12, v12

    .line 218
    int-to-float v2, v2

    .line 219
    add-int/lit8 v14, v10, 0x1

    .line 220
    .line 221
    int-to-float v14, v14

    .line 222
    invoke-static {v4, v14, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    float-to-int v2, v2

    .line 227
    int-to-float v2, v2

    .line 228
    int-to-float v4, v5

    .line 229
    add-int/lit8 v5, v11, 0x1

    .line 230
    .line 231
    int-to-float v5, v5

    .line 232
    invoke-static {v13, v5, v4, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    float-to-int v4, v4

    .line 237
    int-to-float v4, v4

    .line 238
    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 239
    .line 240
    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 241
    .line 242
    move-object/from16 v17, v1

    .line 243
    .line 244
    move/from16 v18, v3

    .line 245
    .line 246
    move/from16 v19, v12

    .line 247
    .line 248
    move/from16 v20, v2

    .line 249
    .line 250
    move/from16 v21, v4

    .line 251
    .line 252
    move-object/from16 v22, v5

    .line 253
    .line 254
    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_1
    if-ne v10, v1, :cond_2

    .line 263
    .line 264
    if-nez v11, :cond_2

    .line 265
    .line 266
    const/16 v1, 0x8

    .line 267
    .line 268
    new-array v1, v1, [F

    .line 269
    .line 270
    aput v16, v1, v9

    .line 271
    .line 272
    aput v16, v1, v14

    .line 273
    .line 274
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 275
    .line 276
    int-to-float v14, v2

    .line 277
    aput v14, v1, v13

    .line 278
    .line 279
    int-to-float v2, v2

    .line 280
    aput v2, v1, v12

    .line 281
    .line 282
    aput v16, v1, v6

    .line 283
    .line 284
    aput v16, v1, v5

    .line 285
    .line 286
    aput v16, v1, v4

    .line 287
    .line 288
    aput v16, v1, v3

    .line 289
    .line 290
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 291
    .line 292
    new-instance v1, Landroid/graphics/Path;

    .line 293
    .line 294
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 295
    .line 296
    .line 297
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 298
    .line 299
    int-to-float v3, v2

    .line 300
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 301
    .line 302
    int-to-float v5, v10

    .line 303
    const/high16 v6, 0x40900000    # 4.5f

    .line 304
    .line 305
    invoke-static {v5, v4, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    float-to-int v3, v3

    .line 310
    int-to-float v3, v3

    .line 311
    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 312
    .line 313
    int-to-float v12, v5

    .line 314
    iget v13, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 315
    .line 316
    int-to-float v14, v11

    .line 317
    invoke-static {v14, v13, v12, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    float-to-int v12, v12

    .line 322
    int-to-float v12, v12

    .line 323
    int-to-float v2, v2

    .line 324
    add-int/lit8 v14, v10, 0x1

    .line 325
    .line 326
    int-to-float v14, v14

    .line 327
    invoke-static {v4, v14, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    float-to-int v2, v2

    .line 332
    int-to-float v2, v2

    .line 333
    int-to-float v4, v5

    .line 334
    add-int/lit8 v5, v11, 0x1

    .line 335
    .line 336
    int-to-float v5, v5

    .line 337
    invoke-static {v13, v5, v4, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    float-to-int v4, v4

    .line 342
    int-to-float v4, v4

    .line 343
    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 344
    .line 345
    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 346
    .line 347
    move-object/from16 v17, v1

    .line 348
    .line 349
    move/from16 v18, v3

    .line 350
    .line 351
    move/from16 v19, v12

    .line 352
    .line 353
    move/from16 v20, v2

    .line 354
    .line 355
    move/from16 v21, v4

    .line 356
    .line 357
    move-object/from16 v22, v5

    .line 358
    .line 359
    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :cond_2
    if-ne v10, v1, :cond_3

    .line 368
    .line 369
    const/16 v1, 0x9

    .line 370
    .line 371
    if-ne v11, v1, :cond_3

    .line 372
    .line 373
    const/16 v1, 0x8

    .line 374
    .line 375
    new-array v1, v1, [F

    .line 376
    .line 377
    aput v16, v1, v9

    .line 378
    .line 379
    aput v16, v1, v14

    .line 380
    .line 381
    aput v16, v1, v13

    .line 382
    .line 383
    aput v16, v1, v12

    .line 384
    .line 385
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 386
    .line 387
    int-to-float v12, v2

    .line 388
    aput v12, v1, v6

    .line 389
    .line 390
    int-to-float v2, v2

    .line 391
    aput v2, v1, v5

    .line 392
    .line 393
    aput v16, v1, v4

    .line 394
    .line 395
    aput v16, v1, v3

    .line 396
    .line 397
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 398
    .line 399
    new-instance v1, Landroid/graphics/Path;

    .line 400
    .line 401
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 402
    .line 403
    .line 404
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 405
    .line 406
    int-to-float v3, v2

    .line 407
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 408
    .line 409
    int-to-float v5, v10

    .line 410
    const/high16 v6, 0x40900000    # 4.5f

    .line 411
    .line 412
    invoke-static {v5, v4, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    float-to-int v3, v3

    .line 417
    int-to-float v3, v3

    .line 418
    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 419
    .line 420
    int-to-float v12, v5

    .line 421
    iget v13, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 422
    .line 423
    int-to-float v14, v11

    .line 424
    invoke-static {v14, v13, v12, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    float-to-int v12, v12

    .line 429
    int-to-float v12, v12

    .line 430
    int-to-float v2, v2

    .line 431
    add-int/lit8 v14, v10, 0x1

    .line 432
    .line 433
    int-to-float v14, v14

    .line 434
    invoke-static {v4, v14, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    float-to-int v2, v2

    .line 439
    int-to-float v2, v2

    .line 440
    int-to-float v4, v5

    .line 441
    add-int/lit8 v5, v11, 0x1

    .line 442
    .line 443
    int-to-float v5, v5

    .line 444
    invoke-static {v13, v5, v4, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    float-to-int v4, v4

    .line 449
    int-to-float v4, v4

    .line 450
    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 451
    .line 452
    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 453
    .line 454
    move-object/from16 v17, v1

    .line 455
    .line 456
    move/from16 v18, v3

    .line 457
    .line 458
    move/from16 v19, v12

    .line 459
    .line 460
    move/from16 v20, v2

    .line 461
    .line 462
    move/from16 v21, v4

    .line 463
    .line 464
    move-object/from16 v22, v5

    .line 465
    .line 466
    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 470
    .line 471
    .line 472
    goto :goto_2

    .line 473
    :cond_3
    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 474
    .line 475
    int-to-float v2, v1

    .line 476
    iget v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 477
    .line 478
    int-to-float v4, v10

    .line 479
    const/high16 v5, 0x40900000    # 4.5f

    .line 480
    .line 481
    invoke-static {v4, v3, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    float-to-int v2, v2

    .line 486
    int-to-float v2, v2

    .line 487
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 488
    .line 489
    int-to-float v6, v4

    .line 490
    iget v12, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 491
    .line 492
    int-to-float v13, v11

    .line 493
    invoke-static {v13, v12, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    float-to-int v6, v6

    .line 498
    int-to-float v6, v6

    .line 499
    int-to-float v1, v1

    .line 500
    add-int/lit8 v13, v10, 0x1

    .line 501
    .line 502
    int-to-float v13, v13

    .line 503
    invoke-static {v3, v13, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    float-to-int v1, v1

    .line 508
    int-to-float v13, v1

    .line 509
    int-to-float v1, v4

    .line 510
    add-int/lit8 v3, v11, 0x1

    .line 511
    .line 512
    int-to-float v3, v3

    .line 513
    invoke-static {v12, v3, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    float-to-int v1, v1

    .line 518
    int-to-float v5, v1

    .line 519
    move-object/from16 v1, p1

    .line 520
    .line 521
    move v3, v6

    .line 522
    move v4, v13

    .line 523
    move-object v6, v8

    .line 524
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    .line 526
    .line 527
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 528
    .line 529
    const/16 v2, 0x8

    .line 530
    .line 531
    goto/16 :goto_1

    .line 532
    .line 533
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 534
    .line 535
    goto/16 :goto_0

    .line 536
    .line 537
    :cond_5
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchRect:Landroid/graphics/RectF;

    .line 538
    .line 539
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 540
    .line 541
    int-to-float v3, v2

    .line 542
    int-to-float v2, v2

    .line 543
    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStrokePaint:Landroid/graphics/Paint;

    .line 544
    .line 545
    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 546
    .line 547
    .line 548
    iget-boolean v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 549
    .line 550
    if-eqz v1, :cond_8

    .line 551
    .line 552
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mShadowRect:Landroid/graphics/Rect;

    .line 553
    .line 554
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->shadow:Landroid/graphics/Paint;

    .line 555
    .line 556
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 557
    .line 558
    .line 559
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 560
    .line 561
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 562
    .line 563
    const/16 v2, 0x8

    .line 564
    .line 565
    if-eq v1, v2, :cond_7

    .line 566
    .line 567
    const/16 v2, 0x9

    .line 568
    .line 569
    if-ne v1, v2, :cond_6

    .line 570
    .line 571
    goto :goto_3

    .line 572
    :cond_6
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 573
    .line 574
    const v2, 0x7f080fef

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 582
    .line 583
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 584
    .line 585
    goto :goto_4

    .line 586
    :cond_7
    :goto_3
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 587
    .line 588
    const v2, 0x7f080fee

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 596
    .line 597
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 598
    .line 599
    :goto_4
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 600
    .line 601
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->currentCursorColor:I

    .line 602
    .line 603
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 604
    .line 605
    .line 606
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 607
    .line 608
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 609
    .line 610
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 611
    .line 612
    .line 613
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 614
    .line 615
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 616
    .line 617
    .line 618
    :cond_8
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    sub-float/2addr v0, v1

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    sub-float/2addr p1, v1

    .line 38
    iget v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 39
    .line 40
    const/high16 v3, 0x41300000    # 11.0f

    .line 41
    .line 42
    mul-float/2addr v1, v3

    .line 43
    iget v3, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 44
    .line 45
    const/high16 v4, 0x41200000    # 10.0f

    .line 46
    .line 47
    mul-float/2addr v3, v4

    .line 48
    cmpl-float v4, v0, v1

    .line 49
    .line 50
    const/high16 v5, 0x3f800000    # 1.0f

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    if-ltz v4, :cond_1

    .line 54
    .line 55
    sub-float v0, v1, v5

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    cmpg-float v1, v0, v6

    .line 59
    .line 60
    if-gez v1, :cond_2

    .line 61
    .line 62
    move v0, v6

    .line 63
    :cond_2
    :goto_0
    cmpl-float v1, p1, v3

    .line 64
    .line 65
    if-ltz v1, :cond_3

    .line 66
    .line 67
    sub-float p1, v3, v5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    cmpg-float v1, p1, v6

    .line 71
    .line 72
    if-gez v1, :cond_4

    .line 73
    .line 74
    move p1, v6

    .line 75
    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Point;

    .line 76
    .line 77
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 78
    .line 79
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 82
    .line 83
    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 87
    .line 88
    iget v4, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 89
    .line 90
    div-float/2addr v0, v4

    .line 91
    float-to-int v0, v0

    .line 92
    iget v4, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 93
    .line 94
    div-float/2addr p1, v4

    .line 95
    float-to-int p1, p1

    .line 96
    invoke-virtual {v3, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    xor-int/2addr p1, v2

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 109
    .line 110
    if-nez p1, :cond_6

    .line 111
    .line 112
    :cond_5
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 115
    .line 116
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 117
    .line 118
    aget-object p1, p1, v1

    .line 119
    .line 120
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 121
    .line 122
    aget p1, p1, v0

    .line 123
    .line 124
    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->currentCursorColor:I

    .line 125
    .line 126
    const/16 v0, 0xff

    .line 127
    .line 128
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->currentCursorColor:I

    .line 133
    .line 134
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mShadowRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->setShadowRect(Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 145
    .line 146
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 147
    .line 148
    mul-int/lit8 v0, v0, 0xb

    .line 149
    .line 150
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 151
    .line 152
    add-int/2addr v0, p1

    .line 153
    iput v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorPicker$5;

    .line 159
    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 163
    .line 164
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 165
    .line 166
    iget v1, p0, Landroid/graphics/Point;->x:I

    .line 167
    .line 168
    aget-object v0, v0, v1

    .line 169
    .line 170
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 171
    .line 172
    aget p0, v0, p0

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Landroidx/picker3/widget/SeslColorPicker$5;->onColorSwatchChanged(I)V

    .line 175
    .line 176
    .line 177
    :cond_6
    return v2
.end method

.method public final setCursorRect(Landroid/graphics/Rect;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 4
    .line 5
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    int-to-double v3, v2

    .line 8
    const-wide v5, 0x3fa999999999999aL    # 0.05

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    sub-double/2addr v3, v5

    .line 14
    iget v7, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 15
    .line 16
    float-to-double v8, v7

    .line 17
    mul-double/2addr v3, v8

    .line 18
    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    .line 19
    .line 20
    add-double/2addr v3, v8

    .line 21
    iget v10, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 22
    .line 23
    int-to-double v11, v10

    .line 24
    add-double/2addr v3, v11

    .line 25
    double-to-int v3, v3

    .line 26
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 27
    .line 28
    int-to-double v11, v1

    .line 29
    sub-double/2addr v11, v5

    .line 30
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 31
    .line 32
    float-to-double v13, v4

    .line 33
    mul-double/2addr v11, v13

    .line 34
    add-double/2addr v11, v8

    .line 35
    iget v0, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 36
    .line 37
    int-to-double v13, v0

    .line 38
    add-double/2addr v11, v13

    .line 39
    double-to-int v11, v11

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    int-to-double v12, v2

    .line 43
    add-double/2addr v12, v5

    .line 44
    float-to-double v14, v7

    .line 45
    mul-double/2addr v12, v14

    .line 46
    add-double/2addr v12, v8

    .line 47
    int-to-double v14, v10

    .line 48
    add-double/2addr v12, v14

    .line 49
    double-to-int v2, v12

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    int-to-double v12, v1

    .line 53
    add-double/2addr v12, v5

    .line 54
    float-to-double v4, v4

    .line 55
    mul-double/2addr v12, v4

    .line 56
    add-double/2addr v12, v8

    .line 57
    int-to-double v0, v0

    .line 58
    add-double/2addr v12, v0

    .line 59
    double-to-int v0, v12

    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    invoke-virtual {v1, v3, v11, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final setShadowRect(Landroid/graphics/Rect;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    int-to-float v2, v1

    .line 6
    iget v3, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 7
    .line 8
    mul-float/2addr v2, v3

    .line 9
    const/high16 v4, 0x40900000    # 4.5f

    .line 10
    .line 11
    add-float/2addr v2, v4

    .line 12
    iget v5, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 13
    .line 14
    int-to-float v6, v5

    .line 15
    add-float/2addr v2, v6

    .line 16
    float-to-int v2, v2

    .line 17
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 18
    .line 19
    int-to-float v6, v0

    .line 20
    iget v7, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 21
    .line 22
    mul-float/2addr v6, v7

    .line 23
    add-float/2addr v6, v4

    .line 24
    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 25
    .line 26
    int-to-float v4, p0

    .line 27
    add-float/2addr v6, v4

    .line 28
    float-to-int v4, v6

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    int-to-double v8, v1

    .line 32
    const-wide v10, 0x3fa999999999999aL    # 0.05

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    add-double/2addr v8, v10

    .line 38
    float-to-double v10, v3

    .line 39
    mul-double/2addr v8, v10

    .line 40
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 41
    .line 42
    add-double/2addr v8, v10

    .line 43
    int-to-double v5, v5

    .line 44
    add-double/2addr v8, v5

    .line 45
    double-to-int v1, v8

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    int-to-double v5, v0

    .line 49
    const-wide v8, 0x3fb999999999999aL    # 0.1

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    add-double/2addr v5, v8

    .line 55
    float-to-double v7, v7

    .line 56
    mul-double/2addr v5, v7

    .line 57
    add-double/2addr v5, v10

    .line 58
    int-to-double v7, p0

    .line 59
    add-double/2addr v5, v7

    .line 60
    double-to-int p0, v5

    .line 61
    invoke-virtual {p1, v2, v4, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
