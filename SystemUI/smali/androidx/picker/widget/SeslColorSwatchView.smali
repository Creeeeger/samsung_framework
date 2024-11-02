.class Landroidx/picker/widget/SeslColorSwatchView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mColorBrightness:[[I

.field public final mColorSwatch:[[I

.field public final mColorSwatchDescription:[[Ljava/lang/StringBuilder;

.field public mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public final mCursorIndex:Landroid/graphics/Point;

.field public mCursorRect:Landroid/graphics/Rect;

.field public mFromUser:Z

.field public mIsColorInSwatch:Z

.field public mListener:Landroidx/picker/widget/SeslColorPicker$1;

.field public final mResources:Landroid/content/res/Resources;

.field public mSelectedVirtualViewId:I

.field public final mSwatchItemHeight:F

.field public final mSwatchItemWidth:F

.field public mTouchHelper:Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    .line 4
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    const/16 v3, 0xa

    new-array v4, v3, [I

    .line 8
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

    iput-object v4, v0, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    new-array v5, v3, [I

    .line 9
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

    iput-object v4, v0, Landroidx/picker/widget/SeslColorSwatchView;->mColorBrightness:[[I

    const/16 v4, 0xb

    .line 10
    filled-new-array {v4, v3}, [I

    move-result-object v3

    const-class v4, Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/StringBuilder;

    iput-object v3, v0, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080fee

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    iput-object v4, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 13
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 14
    new-instance v4, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    invoke-direct {v4, v0, v0}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;-><init>(Landroidx/picker/widget/SeslColorSwatchView;Landroid/view/View;)V

    iput-object v4, v0, Landroidx/picker/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 15
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v2, 0x7f070f8a

    .line 17
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v2, v4

    iput v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    const v2, 0x7f070f8b

    .line 18
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x41300000    # 11.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 19
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    return-void

    nop

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
        -0x100
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
        0x32
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
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

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
    iput-boolean v2, p0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

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
    iget-object v6, p0, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

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
    iput-boolean v5, p0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

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
    iput-boolean v5, p0, Landroidx/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 54
    .line 55
    iget-boolean p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

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
    iput-boolean v2, p0, Landroidx/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

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
    .locals 11

    .line 1
    new-instance v6, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    move v8, v7

    .line 8
    :goto_0
    const/16 v0, 0xb

    .line 9
    .line 10
    if-ge v8, v0, :cond_1

    .line 11
    .line 12
    move v0, v7

    .line 13
    :goto_1
    const/16 v1, 0xa

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 18
    .line 19
    aget-object v1, v1, v8

    .line 20
    .line 21
    aget v1, v1, v0

    .line 22
    .line 23
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 27
    .line 28
    int-to-float v2, v8

    .line 29
    mul-float/2addr v2, v1

    .line 30
    const/high16 v3, 0x3f000000    # 0.5f

    .line 31
    .line 32
    add-float/2addr v2, v3

    .line 33
    float-to-int v2, v2

    .line 34
    int-to-float v2, v2

    .line 35
    iget v4, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 36
    .line 37
    int-to-float v5, v0

    .line 38
    mul-float/2addr v5, v4

    .line 39
    add-float/2addr v5, v3

    .line 40
    float-to-int v5, v5

    .line 41
    int-to-float v5, v5

    .line 42
    add-int/lit8 v9, v8, 0x1

    .line 43
    .line 44
    int-to-float v9, v9

    .line 45
    mul-float/2addr v1, v9

    .line 46
    add-float/2addr v1, v3

    .line 47
    float-to-int v1, v1

    .line 48
    int-to-float v9, v1

    .line 49
    add-int/lit8 v10, v0, 0x1

    .line 50
    .line 51
    int-to-float v0, v10

    .line 52
    mul-float/2addr v4, v0

    .line 53
    add-float/2addr v4, v3

    .line 54
    float-to-int v0, v4

    .line 55
    int-to-float v4, v0

    .line 56
    move-object v0, p1

    .line 57
    move v1, v2

    .line 58
    move v2, v5

    .line 59
    move v3, v9

    .line 60
    move-object v5, v6

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    move v0, v10

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 74
    .line 75
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Point;->equals(II)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 82
    .line 83
    const v1, 0x7f080ff0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 91
    .line 92
    iput-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 96
    .line 97
    const v1, 0x7f080ff1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 105
    .line 106
    iput-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 107
    .line 108
    :goto_2
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 109
    .line 110
    iget-object v1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    .line 119
    .line 120
    :cond_3
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget v1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 31
    .line 32
    const/high16 v3, 0x41300000    # 11.0f

    .line 33
    .line 34
    mul-float/2addr v1, v3

    .line 35
    iget v3, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 36
    .line 37
    const/high16 v4, 0x41200000    # 10.0f

    .line 38
    .line 39
    mul-float/2addr v3, v4

    .line 40
    cmpl-float v4, v0, v1

    .line 41
    .line 42
    const/high16 v5, 0x3f800000    # 1.0f

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    if-ltz v4, :cond_1

    .line 46
    .line 47
    sub-float v0, v1, v5

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    cmpg-float v1, v0, v6

    .line 51
    .line 52
    if-gez v1, :cond_2

    .line 53
    .line 54
    move v0, v6

    .line 55
    :cond_2
    :goto_0
    cmpl-float v1, p1, v3

    .line 56
    .line 57
    if-ltz v1, :cond_3

    .line 58
    .line 59
    sub-float p1, v3, v5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    cmpg-float v1, p1, v6

    .line 63
    .line 64
    if-gez v1, :cond_4

    .line 65
    .line 66
    move p1, v6

    .line 67
    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Point;

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 70
    .line 71
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 72
    .line 73
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 74
    .line 75
    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 79
    .line 80
    iget v4, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 81
    .line 82
    div-float/2addr v0, v4

    .line 83
    float-to-int v0, v0

    .line 84
    iget v4, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 85
    .line 86
    div-float/2addr p1, v4

    .line 87
    float-to-int p1, p1

    .line 88
    invoke-virtual {v3, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    xor-int/2addr p1, v2

    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    iget-boolean p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 101
    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 110
    .line 111
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 112
    .line 113
    mul-int/lit8 v0, v0, 0xb

    .line 114
    .line 115
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 116
    .line 117
    add-int/2addr v0, p1

    .line 118
    iput v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Landroidx/picker/widget/SeslColorSwatchView;->mListener:Landroidx/picker/widget/SeslColorPicker$1;

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 128
    .line 129
    iget-object p0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 130
    .line 131
    iget v1, p0, Landroid/graphics/Point;->x:I

    .line 132
    .line 133
    aget-object v0, v0, v1

    .line 134
    .line 135
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 136
    .line 137
    aget p0, v0, p0

    .line 138
    .line 139
    sget v0, Landroidx/picker/widget/SeslColorPicker;->$r8$clinit:I

    .line 140
    .line 141
    iget-object p1, p1, Landroidx/picker/widget/SeslColorPicker$1;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v0, p1, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroidx/picker/widget/SeslColorPicker;->updateCurrentColor()V

    .line 152
    .line 153
    .line 154
    :cond_6
    return v2
.end method

.method public final setCursorRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    int-to-float v2, v1

    .line 6
    iget v3, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 7
    .line 8
    mul-float/2addr v2, v3

    .line 9
    const/high16 v4, 0x3f000000    # 0.5f

    .line 10
    .line 11
    add-float/2addr v2, v4

    .line 12
    float-to-int v2, v2

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 14
    .line 15
    int-to-float v5, v0

    .line 16
    iget p0, p0, Landroidx/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 17
    .line 18
    mul-float/2addr v5, p0

    .line 19
    add-float/2addr v5, v4

    .line 20
    float-to-int v5, v5

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr v1, v3

    .line 25
    add-float/2addr v1, v4

    .line 26
    float-to-int v1, v1

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    mul-float/2addr v0, p0

    .line 31
    add-float/2addr v0, v4

    .line 32
    float-to-int p0, v0

    .line 33
    invoke-virtual {p1, v2, v5, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
