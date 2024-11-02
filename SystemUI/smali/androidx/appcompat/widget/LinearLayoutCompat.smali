.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    }
.end annotation


# instance fields
.field public mBaselineAligned:Z

.field public final mBaselineAlignedChildIndex:I

.field public mBaselineChildTop:I

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public final mDividerPadding:I

.field public mDividerWidth:I

.field public mGravity:I

.field public mMaxAscent:[I

.field public mMaxDescent:[I

.field public mOrientation:I

.field public final mShowDividers:I

.field public mTotalLength:I

.field public mUseLargestChild:Z

.field public final mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 7
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 8
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v6, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 9
    iget-object v8, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v10, 0x0

    .line 10
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 11
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 12
    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 13
    iget p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq p2, p1, :cond_0

    .line 14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 16
    :cond_0
    invoke-virtual {v3, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 17
    iget p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq p2, p1, :cond_3

    const p2, 0x800007

    and-int/2addr p2, p1

    if-nez p2, :cond_1

    const p2, 0x800003

    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x70

    if-nez p2, :cond_2

    or-int/lit8 p1, p1, 0x30

    .line 18
    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    const/4 p1, 0x2

    .line 20
    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    :cond_4
    const/4 p1, 0x4

    const/high16 p2, -0x40800000    # -1.0f

    .line 22
    iget-object p3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {p3, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 23
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 p1, 0x3

    .line 24
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 p1, 0x7

    .line 25
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/4 p1, 0x5

    .line 26
    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 27
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, p2, :cond_5

    goto :goto_2

    .line 28
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 30
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_0

    .line 31
    :cond_6
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 32
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v0, v2

    .line 33
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_2
    const/16 p1, 0x8

    .line 35
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 p1, 0x6

    .line 36
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 37
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method final drawHorizontalDivider(ILandroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 23
    .line 24
    add-int/2addr v3, p1

    .line 25
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method final drawVerticalDivider(ILandroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 11
    .line 12
    add-int/2addr v2, p1

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 2
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, -0x2

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 4
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 4
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 15
    .line 16
    if-le v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 43
    .line 44
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-ne v3, v4, :cond_5

    .line 48
    .line 49
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 50
    .line 51
    and-int/lit8 v3, v3, 0x70

    .line 52
    .line 53
    const/16 v4, 0x30

    .line 54
    .line 55
    if-eq v3, v4, :cond_5

    .line 56
    .line 57
    const/16 v4, 0x10

    .line 58
    .line 59
    if-eq v3, v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x50

    .line 62
    .line 63
    if-eq v3, v4, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 81
    .line 82
    sub-int/2addr v2, p0

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sub-int/2addr v3, v4

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    sub-int/2addr v3, v4

    .line 98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    sub-int/2addr v3, v4

    .line 103
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 104
    .line 105
    const/4 v4, 0x2

    .line 106
    invoke-static {v3, p0, v4, v2}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 115
    .line 116
    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 117
    .line 118
    add-int/2addr v2, p0

    .line 119
    add-int/2addr v2, v1

    .line 120
    return v2

    .line 121
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    .line 124
    .line 125
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final hasDividerBeforeChildAt(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 6
    .line 7
    and-int/2addr p0, v1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne p1, v2, :cond_3

    .line 17
    .line 18
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 19
    .line 20
    and-int/lit8 p0, p0, 0x4

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    move v0, v1

    .line 25
    :cond_2
    return v0

    .line 26
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    :goto_0
    if-ltz p1, :cond_5

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    if-eq v2, v3, :cond_4

    .line 46
    .line 47
    move v0, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    :goto_1
    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v3, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eq v4, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 49
    .line 50
    sub-int/2addr v3, v4

    .line 51
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 52
    .line 53
    sub-int/2addr v3, v4

    .line 54
    invoke-virtual {p0, v3, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(ILandroid/graphics/Canvas;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_b

    .line 65
    .line 66
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sub-int/2addr v0, v1

    .line 83
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 84
    .line 85
    sub-int/2addr v0, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    add-int/2addr v0, v1

    .line 100
    :goto_1
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(ILandroid/graphics/Canvas;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    :goto_2
    if-ge v2, v0, :cond_7

    .line 114
    .line 115
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eq v5, v1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 146
    .line 147
    add-int/2addr v4, v5

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 154
    .line 155
    sub-int/2addr v4, v5

    .line 156
    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 157
    .line 158
    sub-int/2addr v4, v5

    .line 159
    :goto_3
    invoke-virtual {p0, v4, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(ILandroid/graphics/Canvas;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    add-int/lit8 v0, v0, -0x1

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    sub-int/2addr v0, v1

    .line 195
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 203
    .line 204
    if-eqz v3, :cond_a

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 211
    .line 212
    sub-int/2addr v0, v1

    .line 213
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 214
    .line 215
    :goto_4
    sub-int/2addr v0, v1

    .line 216
    goto :goto_5

    .line 217
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 222
    .line 223
    add-int/2addr v0, v1

    .line 224
    :goto_5
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(ILandroid/graphics/Canvas;)V

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_6
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 4
    .line 5
    const/16 v2, 0x50

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    const v6, 0x800007

    .line 13
    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    const/4 v8, 0x1

    .line 17
    if-ne v1, v8, :cond_8

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int v9, p4, p2

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    sub-int v10, v9, v10

    .line 30
    .line 31
    sub-int/2addr v9, v1

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    sub-int/2addr v9, v11

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    iget v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 42
    .line 43
    and-int/lit8 v13, v12, 0x70

    .line 44
    .line 45
    and-int/2addr v6, v12

    .line 46
    if-eq v13, v3, :cond_1

    .line 47
    .line 48
    if-eq v13, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int v2, v2, p5

    .line 60
    .line 61
    sub-int v2, v2, p3

    .line 62
    .line 63
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 64
    .line 65
    sub-int/2addr v2, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    sub-int v3, p5, p3

    .line 72
    .line 73
    iget v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 74
    .line 75
    invoke-static {v3, v12, v7, v2}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :goto_0
    const/4 v3, 0x0

    .line 80
    :goto_1
    if-ge v3, v11, :cond_17

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-nez v7, :cond_2

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x0

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-eq v12, v4, :cond_7

    .line 96
    .line 97
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 110
    .line 111
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    .line 113
    if-gez v14, :cond_3

    .line 114
    .line 115
    move v14, v6

    .line 116
    :cond_3
    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 117
    .line 118
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    invoke-static {v14, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    and-int/lit8 v14, v14, 0x7

    .line 127
    .line 128
    if-eq v14, v8, :cond_5

    .line 129
    .line 130
    if-eq v14, v5, :cond_4

    .line 131
    .line 132
    iget v5, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 133
    .line 134
    add-int/2addr v5, v1

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    sub-int v5, v10, v4

    .line 137
    .line 138
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    const/4 v5, 0x2

    .line 142
    invoke-static {v9, v4, v5, v1}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 147
    .line 148
    add-int/2addr v5, v14

    .line 149
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 150
    .line 151
    :goto_2
    sub-int/2addr v5, v14

    .line 152
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-eqz v14, :cond_6

    .line 157
    .line 158
    iget v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 159
    .line 160
    add-int/2addr v2, v14

    .line 161
    :cond_6
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 162
    .line 163
    add-int/2addr v2, v14

    .line 164
    add-int/lit8 v14, v2, 0x0

    .line 165
    .line 166
    add-int/2addr v4, v5

    .line 167
    add-int v15, v12, v14

    .line 168
    .line 169
    invoke-virtual {v7, v5, v14, v4, v15}, Landroid/view/View;->layout(IIII)V

    .line 170
    .line 171
    .line 172
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 173
    .line 174
    add-int/2addr v12, v4

    .line 175
    add-int/lit8 v12, v12, 0x0

    .line 176
    .line 177
    add-int/2addr v12, v2

    .line 178
    add-int/lit8 v3, v3, 0x0

    .line 179
    .line 180
    move v2, v12

    .line 181
    :cond_7
    :goto_4
    add-int/2addr v3, v8

    .line 182
    const/16 v4, 0x8

    .line 183
    .line 184
    const/4 v5, 0x5

    .line 185
    goto :goto_1

    .line 186
    :cond_8
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    sub-int v3, p5, p3

    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    sub-int v4, v3, v4

    .line 201
    .line 202
    sub-int/2addr v3, v2

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    sub-int/2addr v3, v5

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 213
    .line 214
    and-int/2addr v6, v7

    .line 215
    and-int/lit8 v7, v7, 0x70

    .line 216
    .line 217
    iget-boolean v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 218
    .line 219
    iget-object v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 220
    .line 221
    iget-object v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 222
    .line 223
    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 224
    .line 225
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    invoke-static {v6, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eq v6, v8, :cond_a

    .line 234
    .line 235
    const/4 v12, 0x5

    .line 236
    if-eq v6, v12, :cond_9

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    goto :goto_5

    .line 243
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    add-int v6, v6, p4

    .line 248
    .line 249
    sub-int v6, v6, p2

    .line 250
    .line 251
    iget v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 252
    .line 253
    sub-int/2addr v6, v12

    .line 254
    goto :goto_5

    .line 255
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    sub-int v12, p4, p2

    .line 260
    .line 261
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 262
    .line 263
    const/4 v14, 0x2

    .line 264
    invoke-static {v12, v13, v14, v6}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    :goto_5
    if-eqz v1, :cond_b

    .line 269
    .line 270
    add-int/lit8 v1, v5, -0x1

    .line 271
    .line 272
    const/4 v8, -0x1

    .line 273
    goto :goto_6

    .line 274
    :cond_b
    const/4 v1, 0x0

    .line 275
    :goto_6
    const/4 v12, 0x0

    .line 276
    :goto_7
    if-ge v12, v5, :cond_17

    .line 277
    .line 278
    mul-int v13, v8, v12

    .line 279
    .line 280
    add-int/2addr v13, v1

    .line 281
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    if-nez v14, :cond_c

    .line 286
    .line 287
    add-int/lit8 v6, v6, 0x0

    .line 288
    .line 289
    move/from16 p1, v1

    .line 290
    .line 291
    goto/16 :goto_a

    .line 292
    .line 293
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 294
    .line 295
    .line 296
    move-result v15

    .line 297
    move/from16 p1, v1

    .line 298
    .line 299
    const/16 v1, 0x8

    .line 300
    .line 301
    if-eq v15, v1, :cond_16

    .line 302
    .line 303
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 308
    .line 309
    .line 310
    move-result v15

    .line 311
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    .line 313
    .line 314
    move-result-object v16

    .line 315
    move/from16 p3, v5

    .line 316
    .line 317
    move-object/from16 v5, v16

    .line 318
    .line 319
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 320
    .line 321
    if-eqz v9, :cond_d

    .line 322
    .line 323
    move/from16 p5, v7

    .line 324
    .line 325
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 326
    .line 327
    move/from16 p2, v8

    .line 328
    .line 329
    const/4 v8, -0x1

    .line 330
    if-eq v7, v8, :cond_e

    .line 331
    .line 332
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    goto :goto_8

    .line 337
    :cond_d
    move/from16 p5, v7

    .line 338
    .line 339
    move/from16 p2, v8

    .line 340
    .line 341
    :cond_e
    const/4 v7, -0x1

    .line 342
    :goto_8
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 343
    .line 344
    if-gez v8, :cond_f

    .line 345
    .line 346
    move/from16 v8, p5

    .line 347
    .line 348
    :cond_f
    and-int/lit8 v8, v8, 0x70

    .line 349
    .line 350
    move/from16 v16, v9

    .line 351
    .line 352
    const/16 v9, 0x10

    .line 353
    .line 354
    if-eq v8, v9, :cond_13

    .line 355
    .line 356
    const/16 v9, 0x30

    .line 357
    .line 358
    if-eq v8, v9, :cond_11

    .line 359
    .line 360
    const/16 v9, 0x50

    .line 361
    .line 362
    if-eq v8, v9, :cond_10

    .line 363
    .line 364
    move v8, v2

    .line 365
    goto :goto_9

    .line 366
    :cond_10
    sub-int v8, v4, v15

    .line 367
    .line 368
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 369
    .line 370
    sub-int/2addr v8, v9

    .line 371
    const/4 v9, -0x1

    .line 372
    if-eq v7, v9, :cond_14

    .line 373
    .line 374
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 375
    .line 376
    .line 377
    move-result v9

    .line 378
    sub-int/2addr v9, v7

    .line 379
    const/4 v7, 0x2

    .line 380
    aget v7, v11, v7

    .line 381
    .line 382
    sub-int/2addr v7, v9

    .line 383
    sub-int/2addr v8, v7

    .line 384
    goto :goto_9

    .line 385
    :cond_11
    const/4 v8, -0x1

    .line 386
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 387
    .line 388
    add-int/2addr v9, v2

    .line 389
    if-eq v7, v8, :cond_12

    .line 390
    .line 391
    const/4 v8, 0x1

    .line 392
    aget v8, v10, v8

    .line 393
    .line 394
    sub-int/2addr v8, v7

    .line 395
    add-int/2addr v8, v9

    .line 396
    goto :goto_9

    .line 397
    :cond_12
    move v8, v9

    .line 398
    goto :goto_9

    .line 399
    :cond_13
    const/4 v7, 0x2

    .line 400
    invoke-static {v3, v15, v7, v2}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 405
    .line 406
    add-int/2addr v7, v8

    .line 407
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 408
    .line 409
    sub-int v8, v7, v8

    .line 410
    .line 411
    :cond_14
    :goto_9
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    if-eqz v7, :cond_15

    .line 416
    .line 417
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 418
    .line 419
    add-int/2addr v6, v7

    .line 420
    :cond_15
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 421
    .line 422
    add-int/2addr v6, v7

    .line 423
    add-int/lit8 v7, v6, 0x0

    .line 424
    .line 425
    add-int v9, v1, v7

    .line 426
    .line 427
    add-int/2addr v15, v8

    .line 428
    invoke-virtual {v14, v7, v8, v9, v15}, Landroid/view/View;->layout(IIII)V

    .line 429
    .line 430
    .line 431
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 432
    .line 433
    add-int/2addr v1, v5

    .line 434
    add-int/lit8 v1, v1, 0x0

    .line 435
    .line 436
    add-int/2addr v1, v6

    .line 437
    add-int/lit8 v12, v12, 0x0

    .line 438
    .line 439
    move v6, v1

    .line 440
    goto :goto_b

    .line 441
    :cond_16
    :goto_a
    move/from16 p3, v5

    .line 442
    .line 443
    move/from16 p5, v7

    .line 444
    .line 445
    move/from16 p2, v8

    .line 446
    .line 447
    move/from16 v16, v9

    .line 448
    .line 449
    :goto_b
    add-int/lit8 v12, v12, 0x1

    .line 450
    .line 451
    move/from16 v1, p1

    .line 452
    .line 453
    move/from16 v8, p2

    .line 454
    .line 455
    move/from16 v5, p3

    .line 456
    .line 457
    move/from16 v7, p5

    .line 458
    .line 459
    move/from16 v9, v16

    .line 460
    .line 461
    goto/16 :goto_7

    .line 462
    .line 463
    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .locals 38

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 8
    .line 9
    const/4 v10, -0x2

    .line 10
    const/high16 v11, -0x80000000

    .line 11
    .line 12
    const/16 v12, 0x8

    .line 13
    .line 14
    const/high16 v14, 0x40000000    # 2.0f

    .line 15
    .line 16
    const/4 v15, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v4, :cond_29

    .line 20
    .line 21
    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 36
    .line 37
    iget-boolean v9, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 38
    .line 39
    move/from16 v24, v4

    .line 40
    .line 41
    move v13, v5

    .line 42
    move/from16 v17, v13

    .line 43
    .line 44
    move/from16 v18, v17

    .line 45
    .line 46
    move/from16 v19, v18

    .line 47
    .line 48
    move/from16 v20, v19

    .line 49
    .line 50
    move/from16 v21, v20

    .line 51
    .line 52
    move/from16 v23, v21

    .line 53
    .line 54
    move/from16 v25, v23

    .line 55
    .line 56
    move/from16 v22, v15

    .line 57
    .line 58
    :goto_0
    if-ge v13, v3, :cond_10

    .line 59
    .line 60
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v26

    .line 64
    if-nez v26, :cond_0

    .line 65
    .line 66
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 67
    .line 68
    add-int/2addr v4, v5

    .line 69
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-ne v4, v12, :cond_1

    .line 77
    .line 78
    add-int/lit8 v13, v13, 0x0

    .line 79
    .line 80
    :goto_1
    move v10, v0

    .line 81
    move/from16 v29, v1

    .line 82
    .line 83
    move v0, v2

    .line 84
    move/from16 v31, v3

    .line 85
    .line 86
    move/from16 v12, v18

    .line 87
    .line 88
    const/16 v27, 0x1

    .line 89
    .line 90
    goto/16 :goto_c

    .line 91
    .line 92
    :cond_1
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_2

    .line 97
    .line 98
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 99
    .line 100
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 101
    .line 102
    add-int/2addr v4, v5

    .line 103
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 104
    .line 105
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move-object v5, v4

    .line 110
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 111
    .line 112
    iget v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    .line 114
    add-float v22, v22, v4

    .line 115
    .line 116
    if-ne v1, v14, :cond_3

    .line 117
    .line 118
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    .line 120
    if-nez v12, :cond_3

    .line 121
    .line 122
    cmpl-float v12, v4, v15

    .line 123
    .line 124
    if-lez v12, :cond_3

    .line 125
    .line 126
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 127
    .line 128
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 129
    .line 130
    add-int/2addr v12, v4

    .line 131
    iget v14, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 132
    .line 133
    add-int/2addr v12, v14

    .line 134
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 139
    .line 140
    move v10, v0

    .line 141
    move/from16 v29, v1

    .line 142
    .line 143
    move/from16 v30, v2

    .line 144
    .line 145
    move/from16 v31, v3

    .line 146
    .line 147
    move-object v15, v5

    .line 148
    const/4 v4, 0x1

    .line 149
    const/16 v27, 0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_3
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 153
    .line 154
    if-nez v12, :cond_4

    .line 155
    .line 156
    cmpl-float v4, v4, v15

    .line 157
    .line 158
    if-lez v4, :cond_4

    .line 159
    .line 160
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move v12, v11

    .line 165
    :goto_2
    const/4 v4, 0x0

    .line 166
    cmpl-float v14, v22, v15

    .line 167
    .line 168
    if-nez v14, :cond_5

    .line 169
    .line 170
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    const/4 v14, 0x0

    .line 174
    :goto_3
    move v10, v0

    .line 175
    move-object/from16 v0, p0

    .line 176
    .line 177
    move/from16 v29, v1

    .line 178
    .line 179
    move-object/from16 v1, v26

    .line 180
    .line 181
    move/from16 v30, v2

    .line 182
    .line 183
    move/from16 v2, p1

    .line 184
    .line 185
    move/from16 v31, v3

    .line 186
    .line 187
    move v3, v4

    .line 188
    const/16 v27, 0x1

    .line 189
    .line 190
    move/from16 v4, p2

    .line 191
    .line 192
    move-object v15, v5

    .line 193
    move v5, v14

    .line 194
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    .line 196
    .line 197
    if-eq v12, v11, :cond_6

    .line 198
    .line 199
    iput v12, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 200
    .line 201
    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 206
    .line 207
    add-int v2, v1, v0

    .line 208
    .line 209
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 210
    .line 211
    add-int/2addr v2, v3

    .line 212
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 213
    .line 214
    add-int/2addr v2, v3

    .line 215
    const/4 v3, 0x0

    .line 216
    add-int/2addr v2, v3

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 222
    .line 223
    if-eqz v9, :cond_7

    .line 224
    .line 225
    move/from16 v5, v19

    .line 226
    .line 227
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 228
    .line 229
    .line 230
    move-result v19

    .line 231
    goto :goto_4

    .line 232
    :cond_7
    move/from16 v5, v19

    .line 233
    .line 234
    :goto_4
    move/from16 v4, v23

    .line 235
    .line 236
    :goto_5
    if-ltz v10, :cond_8

    .line 237
    .line 238
    add-int/lit8 v0, v13, 0x1

    .line 239
    .line 240
    if-ne v10, v0, :cond_8

    .line 241
    .line 242
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 243
    .line 244
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 245
    .line 246
    :cond_8
    if-ge v13, v10, :cond_a

    .line 247
    .line 248
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 249
    .line 250
    const/4 v1, 0x0

    .line 251
    cmpl-float v0, v0, v1

    .line 252
    .line 253
    if-gtz v0, :cond_9

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 257
    .line 258
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .line 259
    .line 260
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v0

    .line 264
    :cond_a
    :goto_6
    move/from16 v0, v30

    .line 265
    .line 266
    const/high16 v1, 0x40000000    # 2.0f

    .line 267
    .line 268
    if-eq v0, v1, :cond_b

    .line 269
    .line 270
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 271
    .line 272
    const/4 v2, -0x1

    .line 273
    if-ne v1, v2, :cond_b

    .line 274
    .line 275
    move/from16 v5, v27

    .line 276
    .line 277
    move/from16 v25, v5

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_b
    const/4 v5, 0x0

    .line 281
    :goto_7
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 282
    .line 283
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 284
    .line 285
    add-int/2addr v1, v2

    .line 286
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    add-int/2addr v2, v1

    .line 291
    move/from16 v3, v21

    .line 292
    .line 293
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredState()I

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    move/from16 v14, v18

    .line 302
    .line 303
    invoke-static {v14, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    if-eqz v24, :cond_c

    .line 308
    .line 309
    iget v14, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 310
    .line 311
    const/4 v11, -0x1

    .line 312
    if-ne v14, v11, :cond_c

    .line 313
    .line 314
    move/from16 v11, v27

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_c
    const/4 v11, 0x0

    .line 318
    :goto_8
    iget v14, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 319
    .line 320
    const/4 v15, 0x0

    .line 321
    cmpl-float v14, v14, v15

    .line 322
    .line 323
    if-lez v14, :cond_e

    .line 324
    .line 325
    if-eqz v5, :cond_d

    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_d
    move v1, v2

    .line 329
    :goto_9
    move/from16 v15, v20

    .line 330
    .line 331
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 332
    .line 333
    .line 334
    move-result v20

    .line 335
    goto :goto_b

    .line 336
    :cond_e
    move/from16 v15, v20

    .line 337
    .line 338
    if-eqz v5, :cond_f

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_f
    move v1, v2

    .line 342
    :goto_a
    move/from16 v2, v17

    .line 343
    .line 344
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 345
    .line 346
    .line 347
    move-result v17

    .line 348
    move/from16 v20, v15

    .line 349
    .line 350
    :goto_b
    add-int/lit8 v13, v13, 0x0

    .line 351
    .line 352
    move/from16 v21, v3

    .line 353
    .line 354
    move/from16 v23, v4

    .line 355
    .line 356
    move/from16 v24, v11

    .line 357
    .line 358
    :goto_c
    add-int/lit8 v13, v13, 0x1

    .line 359
    .line 360
    move v2, v0

    .line 361
    move v0, v10

    .line 362
    move/from16 v18, v12

    .line 363
    .line 364
    move/from16 v4, v27

    .line 365
    .line 366
    move/from16 v1, v29

    .line 367
    .line 368
    move/from16 v3, v31

    .line 369
    .line 370
    const/4 v5, 0x0

    .line 371
    const/4 v10, -0x2

    .line 372
    const/high16 v11, -0x80000000

    .line 373
    .line 374
    const/16 v12, 0x8

    .line 375
    .line 376
    const/high16 v14, 0x40000000    # 2.0f

    .line 377
    .line 378
    const/4 v15, 0x0

    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_10
    move/from16 v29, v1

    .line 382
    .line 383
    move v0, v2

    .line 384
    move/from16 v31, v3

    .line 385
    .line 386
    move/from16 v27, v4

    .line 387
    .line 388
    move/from16 v2, v17

    .line 389
    .line 390
    move/from16 v14, v18

    .line 391
    .line 392
    move/from16 v5, v19

    .line 393
    .line 394
    move/from16 v15, v20

    .line 395
    .line 396
    move/from16 v3, v21

    .line 397
    .line 398
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 399
    .line 400
    move/from16 v10, v31

    .line 401
    .line 402
    if-lez v1, :cond_11

    .line 403
    .line 404
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_11

    .line 409
    .line 410
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 411
    .line 412
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 413
    .line 414
    add-int/2addr v1, v4

    .line 415
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 416
    .line 417
    :cond_11
    move/from16 v1, v29

    .line 418
    .line 419
    if-eqz v9, :cond_15

    .line 420
    .line 421
    const/high16 v4, -0x80000000

    .line 422
    .line 423
    if-eq v1, v4, :cond_12

    .line 424
    .line 425
    if-nez v1, :cond_15

    .line 426
    .line 427
    :cond_12
    const/4 v4, 0x0

    .line 428
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 429
    .line 430
    move v11, v4

    .line 431
    :goto_d
    if-ge v11, v10, :cond_15

    .line 432
    .line 433
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    if-nez v12, :cond_13

    .line 438
    .line 439
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 440
    .line 441
    add-int/2addr v12, v4

    .line 442
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    const/16 v13, 0x8

    .line 450
    .line 451
    if-ne v4, v13, :cond_14

    .line 452
    .line 453
    add-int/lit8 v11, v11, 0x0

    .line 454
    .line 455
    goto :goto_e

    .line 456
    :cond_14
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 461
    .line 462
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 463
    .line 464
    add-int v19, v12, v5

    .line 465
    .line 466
    iget v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 467
    .line 468
    add-int v19, v19, v13

    .line 469
    .line 470
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 471
    .line 472
    add-int v19, v19, v4

    .line 473
    .line 474
    const/4 v4, 0x0

    .line 475
    add-int/lit8 v13, v19, 0x0

    .line 476
    .line 477
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 482
    .line 483
    :goto_e
    add-int/lit8 v11, v11, 0x1

    .line 484
    .line 485
    const/4 v4, 0x0

    .line 486
    goto :goto_d

    .line 487
    :cond_15
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 488
    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 494
    .line 495
    .line 496
    move-result v12

    .line 497
    add-int/2addr v12, v11

    .line 498
    add-int/2addr v12, v4

    .line 499
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 500
    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 502
    .line 503
    .line 504
    move-result v4

    .line 505
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    const/4 v11, 0x0

    .line 510
    invoke-static {v4, v8, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 511
    .line 512
    .line 513
    move-result v4

    .line 514
    const v11, 0xffffff

    .line 515
    .line 516
    .line 517
    and-int/2addr v11, v4

    .line 518
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 519
    .line 520
    sub-int/2addr v11, v12

    .line 521
    if-nez v23, :cond_1a

    .line 522
    .line 523
    if-eqz v11, :cond_16

    .line 524
    .line 525
    const/4 v12, 0x0

    .line 526
    cmpl-float v13, v22, v12

    .line 527
    .line 528
    if-lez v13, :cond_16

    .line 529
    .line 530
    goto :goto_12

    .line 531
    :cond_16
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-eqz v9, :cond_19

    .line 536
    .line 537
    const/high16 v9, 0x40000000    # 2.0f

    .line 538
    .line 539
    if-eq v1, v9, :cond_19

    .line 540
    .line 541
    const/4 v1, 0x0

    .line 542
    :goto_f
    if-ge v1, v10, :cond_19

    .line 543
    .line 544
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    if-eqz v9, :cond_18

    .line 549
    .line 550
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 551
    .line 552
    .line 553
    move-result v11

    .line 554
    const/16 v12, 0x8

    .line 555
    .line 556
    if-ne v11, v12, :cond_17

    .line 557
    .line 558
    goto :goto_10

    .line 559
    :cond_17
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 560
    .line 561
    .line 562
    move-result-object v11

    .line 563
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 564
    .line 565
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 566
    .line 567
    const/4 v12, 0x0

    .line 568
    cmpl-float v11, v11, v12

    .line 569
    .line 570
    if-lez v11, :cond_18

    .line 571
    .line 572
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    const/high16 v12, 0x40000000    # 2.0f

    .line 577
    .line 578
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 579
    .line 580
    .line 581
    move-result v11

    .line 582
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 583
    .line 584
    .line 585
    move-result v13

    .line 586
    invoke-virtual {v9, v11, v13}, Landroid/view/View;->measure(II)V

    .line 587
    .line 588
    .line 589
    :cond_18
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 590
    .line 591
    goto :goto_f

    .line 592
    :cond_19
    :goto_11
    move/from16 v21, v3

    .line 593
    .line 594
    goto/16 :goto_1b

    .line 595
    .line 596
    :cond_1a
    :goto_12
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 597
    .line 598
    const/4 v9, 0x0

    .line 599
    cmpl-float v12, v5, v9

    .line 600
    .line 601
    if-lez v12, :cond_1b

    .line 602
    .line 603
    move/from16 v22, v5

    .line 604
    .line 605
    :cond_1b
    const/4 v5, 0x0

    .line 606
    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 607
    .line 608
    const/4 v5, 0x0

    .line 609
    :goto_13
    if-ge v5, v10, :cond_26

    .line 610
    .line 611
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 616
    .line 617
    .line 618
    move-result v12

    .line 619
    const/16 v13, 0x8

    .line 620
    .line 621
    if-ne v12, v13, :cond_1c

    .line 622
    .line 623
    move/from16 v29, v1

    .line 624
    .line 625
    goto/16 :goto_1a

    .line 626
    .line 627
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 628
    .line 629
    .line 630
    move-result-object v12

    .line 631
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 632
    .line 633
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 634
    .line 635
    const/4 v15, 0x0

    .line 636
    cmpl-float v16, v13, v15

    .line 637
    .line 638
    if-lez v16, :cond_21

    .line 639
    .line 640
    int-to-float v15, v11

    .line 641
    mul-float/2addr v15, v13

    .line 642
    div-float v15, v15, v22

    .line 643
    .line 644
    float-to-int v15, v15

    .line 645
    sub-float v22, v22, v13

    .line 646
    .line 647
    sub-int/2addr v11, v15

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 649
    .line 650
    .line 651
    move-result v13

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 653
    .line 654
    .line 655
    move-result v16

    .line 656
    add-int v16, v16, v13

    .line 657
    .line 658
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 659
    .line 660
    add-int v16, v16, v13

    .line 661
    .line 662
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 663
    .line 664
    add-int v13, v16, v13

    .line 665
    .line 666
    move/from16 v16, v11

    .line 667
    .line 668
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 669
    .line 670
    invoke-static {v7, v13, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 671
    .line 672
    .line 673
    move-result v11

    .line 674
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 675
    .line 676
    if-nez v13, :cond_1f

    .line 677
    .line 678
    const/high16 v13, 0x40000000    # 2.0f

    .line 679
    .line 680
    if-eq v1, v13, :cond_1d

    .line 681
    .line 682
    goto :goto_15

    .line 683
    :cond_1d
    if-lez v15, :cond_1e

    .line 684
    .line 685
    goto :goto_14

    .line 686
    :cond_1e
    const/4 v15, 0x0

    .line 687
    :goto_14
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 688
    .line 689
    .line 690
    move-result v15

    .line 691
    invoke-virtual {v9, v11, v15}, Landroid/view/View;->measure(II)V

    .line 692
    .line 693
    .line 694
    goto :goto_16

    .line 695
    :cond_1f
    const/high16 v13, 0x40000000    # 2.0f

    .line 696
    .line 697
    :goto_15
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 698
    .line 699
    .line 700
    move-result v17

    .line 701
    add-int v15, v17, v15

    .line 702
    .line 703
    if-gez v15, :cond_20

    .line 704
    .line 705
    const/4 v15, 0x0

    .line 706
    :cond_20
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 707
    .line 708
    .line 709
    move-result v15

    .line 710
    invoke-virtual {v9, v11, v15}, Landroid/view/View;->measure(II)V

    .line 711
    .line 712
    .line 713
    :goto_16
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    .line 714
    .line 715
    .line 716
    move-result v11

    .line 717
    and-int/lit16 v11, v11, -0x100

    .line 718
    .line 719
    invoke-static {v14, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 720
    .line 721
    .line 722
    move-result v14

    .line 723
    move/from16 v11, v16

    .line 724
    .line 725
    :cond_21
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 726
    .line 727
    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 728
    .line 729
    add-int/2addr v13, v15

    .line 730
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 731
    .line 732
    .line 733
    move-result v15

    .line 734
    add-int/2addr v15, v13

    .line 735
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    move/from16 v29, v1

    .line 740
    .line 741
    const/high16 v1, 0x40000000    # 2.0f

    .line 742
    .line 743
    if-eq v0, v1, :cond_22

    .line 744
    .line 745
    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 746
    .line 747
    move/from16 v16, v3

    .line 748
    .line 749
    const/4 v3, -0x1

    .line 750
    if-ne v1, v3, :cond_23

    .line 751
    .line 752
    move/from16 v1, v27

    .line 753
    .line 754
    goto :goto_17

    .line 755
    :cond_22
    move/from16 v16, v3

    .line 756
    .line 757
    const/4 v3, -0x1

    .line 758
    :cond_23
    const/4 v1, 0x0

    .line 759
    :goto_17
    if-eqz v1, :cond_24

    .line 760
    .line 761
    goto :goto_18

    .line 762
    :cond_24
    move v13, v15

    .line 763
    :goto_18
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-eqz v24, :cond_25

    .line 768
    .line 769
    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 770
    .line 771
    if-ne v2, v3, :cond_25

    .line 772
    .line 773
    move/from16 v2, v27

    .line 774
    .line 775
    goto :goto_19

    .line 776
    :cond_25
    const/4 v2, 0x0

    .line 777
    :goto_19
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 778
    .line 779
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 780
    .line 781
    .line 782
    move-result v9

    .line 783
    add-int/2addr v9, v3

    .line 784
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 785
    .line 786
    add-int/2addr v9, v13

    .line 787
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 788
    .line 789
    add-int/2addr v9, v12

    .line 790
    const/4 v12, 0x0

    .line 791
    add-int/2addr v9, v12

    .line 792
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 797
    .line 798
    move/from16 v24, v2

    .line 799
    .line 800
    move/from16 v3, v16

    .line 801
    .line 802
    move v2, v1

    .line 803
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    .line 804
    .line 805
    move/from16 v1, v29

    .line 806
    .line 807
    goto/16 :goto_13

    .line 808
    .line 809
    :cond_26
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 810
    .line 811
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 812
    .line 813
    .line 814
    move-result v5

    .line 815
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 816
    .line 817
    .line 818
    move-result v9

    .line 819
    add-int/2addr v9, v5

    .line 820
    add-int/2addr v9, v1

    .line 821
    iput v9, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 822
    .line 823
    goto/16 :goto_11

    .line 824
    .line 825
    :goto_1b
    if-nez v24, :cond_27

    .line 826
    .line 827
    const/high16 v1, 0x40000000    # 2.0f

    .line 828
    .line 829
    if-eq v0, v1, :cond_27

    .line 830
    .line 831
    goto :goto_1c

    .line 832
    :cond_27
    move/from16 v2, v21

    .line 833
    .line 834
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    add-int/2addr v1, v0

    .line 843
    add-int/2addr v1, v2

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    invoke-static {v0, v7, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 853
    .line 854
    .line 855
    move-result v0

    .line 856
    invoke-virtual {v6, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 857
    .line 858
    .line 859
    if-eqz v25, :cond_63

    .line 860
    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    const/high16 v1, 0x40000000    # 2.0f

    .line 866
    .line 867
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 868
    .line 869
    .line 870
    move-result v7

    .line 871
    const/4 v9, 0x0

    .line 872
    :goto_1d
    if-ge v9, v10, :cond_63

    .line 873
    .line 874
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    const/16 v2, 0x8

    .line 883
    .line 884
    if-eq v0, v2, :cond_28

    .line 885
    .line 886
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    move-object v11, v0

    .line 891
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 892
    .line 893
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 894
    .line 895
    const/4 v2, -0x1

    .line 896
    if-ne v0, v2, :cond_28

    .line 897
    .line 898
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 899
    .line 900
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 901
    .line 902
    .line 903
    move-result v0

    .line 904
    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 905
    .line 906
    const/4 v3, 0x0

    .line 907
    const/4 v5, 0x0

    .line 908
    move-object/from16 v0, p0

    .line 909
    .line 910
    move v2, v7

    .line 911
    move/from16 v4, p2

    .line 912
    .line 913
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    .line 915
    .line 916
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 917
    .line 918
    :cond_28
    add-int/lit8 v9, v9, 0x1

    .line 919
    .line 920
    goto :goto_1d

    .line 921
    :cond_29
    move/from16 v27, v4

    .line 922
    .line 923
    move v0, v5

    .line 924
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 925
    .line 926
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 927
    .line 928
    .line 929
    move-result v9

    .line 930
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 931
    .line 932
    .line 933
    move-result v10

    .line 934
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 935
    .line 936
    .line 937
    move-result v11

    .line 938
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 939
    .line 940
    const/4 v12, 0x4

    .line 941
    if-eqz v0, :cond_2a

    .line 942
    .line 943
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 944
    .line 945
    if-nez v0, :cond_2b

    .line 946
    .line 947
    :cond_2a
    new-array v0, v12, [I

    .line 948
    .line 949
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    .line 951
    new-array v0, v12, [I

    .line 952
    .line 953
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 954
    .line 955
    :cond_2b
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 956
    .line 957
    iget-object v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 958
    .line 959
    const/4 v15, 0x3

    .line 960
    const/4 v0, -0x1

    .line 961
    aput v0, v13, v15

    .line 962
    .line 963
    const/16 v17, 0x2

    .line 964
    .line 965
    aput v0, v13, v17

    .line 966
    .line 967
    aput v0, v13, v27

    .line 968
    .line 969
    const/4 v1, 0x0

    .line 970
    aput v0, v13, v1

    .line 971
    .line 972
    aput v0, v14, v15

    .line 973
    .line 974
    aput v0, v14, v17

    .line 975
    .line 976
    aput v0, v14, v27

    .line 977
    .line 978
    aput v0, v14, v1

    .line 979
    .line 980
    iget-boolean v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 981
    .line 982
    iget-boolean v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 983
    .line 984
    const/high16 v0, 0x40000000    # 2.0f

    .line 985
    .line 986
    if-ne v10, v0, :cond_2c

    .line 987
    .line 988
    move/from16 v19, v27

    .line 989
    .line 990
    goto :goto_1e

    .line 991
    :cond_2c
    const/16 v19, 0x0

    .line 992
    .line 993
    :goto_1e
    move/from16 v20, v27

    .line 994
    .line 995
    const/4 v0, 0x0

    .line 996
    const/4 v1, 0x0

    .line 997
    const/4 v2, 0x0

    .line 998
    const/4 v3, 0x0

    .line 999
    const/4 v12, 0x0

    .line 1000
    const/4 v15, 0x0

    .line 1001
    const/16 v22, 0x0

    .line 1002
    .line 1003
    const/16 v23, 0x0

    .line 1004
    .line 1005
    const/16 v32, 0x0

    .line 1006
    .line 1007
    :goto_1f
    if-ge v3, v9, :cond_40

    .line 1008
    .line 1009
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v8

    .line 1013
    if-nez v8, :cond_2d

    .line 1014
    .line 1015
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1016
    .line 1017
    const/16 v25, 0x0

    .line 1018
    .line 1019
    add-int/lit8 v8, v8, 0x0

    .line 1020
    .line 1021
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1022
    .line 1023
    move/from16 v25, v0

    .line 1024
    .line 1025
    move/from16 v26, v2

    .line 1026
    .line 1027
    goto :goto_20

    .line 1028
    :cond_2d
    move/from16 v25, v0

    .line 1029
    .line 1030
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    move/from16 v26, v2

    .line 1035
    .line 1036
    const/16 v2, 0x8

    .line 1037
    .line 1038
    if-ne v0, v2, :cond_2e

    .line 1039
    .line 1040
    add-int/lit8 v3, v3, 0x0

    .line 1041
    .line 1042
    :goto_20
    move/from16 v30, v5

    .line 1043
    .line 1044
    move/from16 v0, v25

    .line 1045
    .line 1046
    move/from16 v2, v26

    .line 1047
    .line 1048
    move/from16 v26, v4

    .line 1049
    .line 1050
    goto/16 :goto_2c

    .line 1051
    .line 1052
    :cond_2e
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v0

    .line 1056
    if-eqz v0, :cond_2f

    .line 1057
    .line 1058
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1059
    .line 1060
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 1061
    .line 1062
    add-int/2addr v0, v2

    .line 1063
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1064
    .line 1065
    :cond_2f
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    move-object v2, v0

    .line 1070
    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1071
    .line 1072
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1073
    .line 1074
    add-float v29, v1, v0

    .line 1075
    .line 1076
    const/high16 v1, 0x40000000    # 2.0f

    .line 1077
    .line 1078
    if-ne v10, v1, :cond_32

    .line 1079
    .line 1080
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1081
    .line 1082
    if-nez v1, :cond_32

    .line 1083
    .line 1084
    const/4 v1, 0x0

    .line 1085
    cmpl-float v30, v0, v1

    .line 1086
    .line 1087
    if-lez v30, :cond_32

    .line 1088
    .line 1089
    if-eqz v19, :cond_30

    .line 1090
    .line 1091
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1092
    .line 1093
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1094
    .line 1095
    move/from16 v30, v3

    .line 1096
    .line 1097
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1098
    .line 1099
    add-int/2addr v1, v3

    .line 1100
    add-int/2addr v1, v0

    .line 1101
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1102
    .line 1103
    goto :goto_21

    .line 1104
    :cond_30
    move/from16 v30, v3

    .line 1105
    .line 1106
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1107
    .line 1108
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1109
    .line 1110
    add-int/2addr v1, v0

    .line 1111
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1112
    .line 1113
    add-int/2addr v1, v3

    .line 1114
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1119
    .line 1120
    :goto_21
    if-eqz v5, :cond_31

    .line 1121
    .line 1122
    const/4 v0, 0x0

    .line 1123
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    invoke-virtual {v8, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1128
    .line 1129
    .line 1130
    move-object v1, v2

    .line 1131
    move/from16 v34, v25

    .line 1132
    .line 1133
    move/from16 v35, v26

    .line 1134
    .line 1135
    move/from16 v25, v30

    .line 1136
    .line 1137
    move/from16 v26, v4

    .line 1138
    .line 1139
    move/from16 v30, v5

    .line 1140
    .line 1141
    goto/16 :goto_26

    .line 1142
    .line 1143
    :cond_31
    move-object v1, v2

    .line 1144
    move/from16 v34, v25

    .line 1145
    .line 1146
    move/from16 v35, v26

    .line 1147
    .line 1148
    move/from16 v25, v30

    .line 1149
    .line 1150
    const/high16 v0, 0x40000000    # 2.0f

    .line 1151
    .line 1152
    move/from16 v26, v4

    .line 1153
    .line 1154
    move/from16 v30, v5

    .line 1155
    .line 1156
    move/from16 v4, v27

    .line 1157
    .line 1158
    goto/16 :goto_27

    .line 1159
    .line 1160
    :cond_32
    move/from16 v30, v3

    .line 1161
    .line 1162
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1163
    .line 1164
    if-nez v1, :cond_33

    .line 1165
    .line 1166
    const/4 v1, 0x0

    .line 1167
    cmpl-float v0, v0, v1

    .line 1168
    .line 1169
    if-lez v0, :cond_34

    .line 1170
    .line 1171
    const/4 v0, -0x2

    .line 1172
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1173
    .line 1174
    const/4 v3, 0x0

    .line 1175
    goto :goto_22

    .line 1176
    :cond_33
    const/4 v1, 0x0

    .line 1177
    :cond_34
    const/high16 v3, -0x80000000

    .line 1178
    .line 1179
    :goto_22
    cmpl-float v0, v29, v1

    .line 1180
    .line 1181
    if-nez v0, :cond_35

    .line 1182
    .line 1183
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1184
    .line 1185
    move/from16 v31, v0

    .line 1186
    .line 1187
    goto :goto_23

    .line 1188
    :cond_35
    const/16 v31, 0x0

    .line 1189
    .line 1190
    :goto_23
    const/16 v33, 0x0

    .line 1191
    .line 1192
    move/from16 v1, v25

    .line 1193
    .line 1194
    move-object/from16 v0, p0

    .line 1195
    .line 1196
    move/from16 v34, v1

    .line 1197
    .line 1198
    move-object v1, v8

    .line 1199
    move-object/from16 v36, v2

    .line 1200
    .line 1201
    move/from16 v35, v26

    .line 1202
    .line 1203
    move/from16 v2, p1

    .line 1204
    .line 1205
    move/from16 v37, v3

    .line 1206
    .line 1207
    move/from16 v25, v30

    .line 1208
    .line 1209
    move/from16 v3, v31

    .line 1210
    .line 1211
    move/from16 v26, v4

    .line 1212
    .line 1213
    move/from16 v4, p2

    .line 1214
    .line 1215
    move/from16 v30, v5

    .line 1216
    .line 1217
    move/from16 v5, v33

    .line 1218
    .line 1219
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1220
    .line 1221
    .line 1222
    move/from16 v0, v37

    .line 1223
    .line 1224
    const/high16 v1, -0x80000000

    .line 1225
    .line 1226
    if-eq v0, v1, :cond_36

    .line 1227
    .line 1228
    move-object/from16 v1, v36

    .line 1229
    .line 1230
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1231
    .line 1232
    goto :goto_24

    .line 1233
    :cond_36
    move-object/from16 v1, v36

    .line 1234
    .line 1235
    :goto_24
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 1236
    .line 1237
    .line 1238
    move-result v0

    .line 1239
    if-eqz v19, :cond_37

    .line 1240
    .line 1241
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1242
    .line 1243
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1244
    .line 1245
    add-int/2addr v3, v0

    .line 1246
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1247
    .line 1248
    add-int/2addr v3, v4

    .line 1249
    const/4 v4, 0x0

    .line 1250
    add-int/2addr v3, v4

    .line 1251
    add-int/2addr v3, v2

    .line 1252
    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1253
    .line 1254
    goto :goto_25

    .line 1255
    :cond_37
    const/4 v4, 0x0

    .line 1256
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1257
    .line 1258
    add-int v3, v2, v0

    .line 1259
    .line 1260
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1261
    .line 1262
    add-int/2addr v3, v5

    .line 1263
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1264
    .line 1265
    add-int/2addr v3, v5

    .line 1266
    add-int/2addr v3, v4

    .line 1267
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 1268
    .line 1269
    .line 1270
    move-result v2

    .line 1271
    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1272
    .line 1273
    :goto_25
    if-eqz v26, :cond_38

    .line 1274
    .line 1275
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 1276
    .line 1277
    .line 1278
    move-result v12

    .line 1279
    :cond_38
    :goto_26
    move/from16 v4, v22

    .line 1280
    .line 1281
    const/high16 v0, 0x40000000    # 2.0f

    .line 1282
    .line 1283
    :goto_27
    if-eq v11, v0, :cond_39

    .line 1284
    .line 1285
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1286
    .line 1287
    const/4 v2, -0x1

    .line 1288
    if-ne v0, v2, :cond_39

    .line 1289
    .line 1290
    move/from16 v5, v27

    .line 1291
    .line 1292
    move/from16 v23, v5

    .line 1293
    .line 1294
    goto :goto_28

    .line 1295
    :cond_39
    const/4 v5, 0x0

    .line 1296
    :goto_28
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1297
    .line 1298
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1299
    .line 1300
    add-int/2addr v0, v2

    .line 1301
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    add-int/2addr v2, v0

    .line 1306
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    .line 1307
    .line 1308
    .line 1309
    move-result v3

    .line 1310
    invoke-static {v15, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1311
    .line 1312
    .line 1313
    move-result v3

    .line 1314
    if-eqz v30, :cond_3b

    .line 1315
    .line 1316
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    .line 1317
    .line 1318
    .line 1319
    move-result v8

    .line 1320
    const/4 v15, -0x1

    .line 1321
    if-eq v8, v15, :cond_3b

    .line 1322
    .line 1323
    iget v15, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1324
    .line 1325
    if-gez v15, :cond_3a

    .line 1326
    .line 1327
    iget v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1328
    .line 1329
    :cond_3a
    and-int/lit8 v15, v15, 0x70

    .line 1330
    .line 1331
    const/16 v22, 0x4

    .line 1332
    .line 1333
    shr-int/lit8 v15, v15, 0x4

    .line 1334
    .line 1335
    const/16 v22, -0x2

    .line 1336
    .line 1337
    and-int/lit8 v15, v15, -0x2

    .line 1338
    .line 1339
    shr-int/lit8 v15, v15, 0x1

    .line 1340
    .line 1341
    move/from16 v22, v0

    .line 1342
    .line 1343
    aget v0, v13, v15

    .line 1344
    .line 1345
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 1346
    .line 1347
    .line 1348
    move-result v0

    .line 1349
    aput v0, v13, v15

    .line 1350
    .line 1351
    aget v0, v14, v15

    .line 1352
    .line 1353
    sub-int v8, v2, v8

    .line 1354
    .line 1355
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 1356
    .line 1357
    .line 1358
    move-result v0

    .line 1359
    aput v0, v14, v15

    .line 1360
    .line 1361
    goto :goto_29

    .line 1362
    :cond_3b
    move/from16 v22, v0

    .line 1363
    .line 1364
    :goto_29
    move/from16 v0, v32

    .line 1365
    .line 1366
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    if-eqz v20, :cond_3c

    .line 1371
    .line 1372
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1373
    .line 1374
    const/4 v15, -0x1

    .line 1375
    if-ne v8, v15, :cond_3c

    .line 1376
    .line 1377
    move/from16 v8, v27

    .line 1378
    .line 1379
    goto :goto_2a

    .line 1380
    :cond_3c
    const/4 v8, 0x0

    .line 1381
    :goto_2a
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1382
    .line 1383
    const/4 v15, 0x0

    .line 1384
    cmpl-float v1, v1, v15

    .line 1385
    .line 1386
    if-lez v1, :cond_3e

    .line 1387
    .line 1388
    if-eqz v5, :cond_3d

    .line 1389
    .line 1390
    move/from16 v2, v22

    .line 1391
    .line 1392
    :cond_3d
    move/from16 v1, v35

    .line 1393
    .line 1394
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1395
    .line 1396
    .line 1397
    move-result v2

    .line 1398
    move v1, v2

    .line 1399
    move/from16 v2, v34

    .line 1400
    .line 1401
    goto :goto_2b

    .line 1402
    :cond_3e
    move/from16 v1, v35

    .line 1403
    .line 1404
    if-eqz v5, :cond_3f

    .line 1405
    .line 1406
    move/from16 v2, v22

    .line 1407
    .line 1408
    :cond_3f
    move/from16 v5, v34

    .line 1409
    .line 1410
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    :goto_2b
    add-int/lit8 v5, v25, 0x0

    .line 1415
    .line 1416
    move/from16 v32, v0

    .line 1417
    .line 1418
    move v0, v2

    .line 1419
    move v15, v3

    .line 1420
    move/from16 v22, v4

    .line 1421
    .line 1422
    move v3, v5

    .line 1423
    move/from16 v20, v8

    .line 1424
    .line 1425
    move v2, v1

    .line 1426
    move/from16 v1, v29

    .line 1427
    .line 1428
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 1429
    .line 1430
    move/from16 v8, p2

    .line 1431
    .line 1432
    move/from16 v4, v26

    .line 1433
    .line 1434
    move/from16 v5, v30

    .line 1435
    .line 1436
    goto/16 :goto_1f

    .line 1437
    .line 1438
    :cond_40
    move/from16 v26, v4

    .line 1439
    .line 1440
    move/from16 v30, v5

    .line 1441
    .line 1442
    move v5, v0

    .line 1443
    move/from16 v0, v32

    .line 1444
    .line 1445
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1446
    .line 1447
    if-lez v3, :cond_41

    .line 1448
    .line 1449
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    if-eqz v3, :cond_41

    .line 1454
    .line 1455
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1456
    .line 1457
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 1458
    .line 1459
    add-int/2addr v3, v4

    .line 1460
    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1461
    .line 1462
    :cond_41
    aget v3, v13, v27

    .line 1463
    .line 1464
    const/4 v4, -0x1

    .line 1465
    move/from16 v25, v15

    .line 1466
    .line 1467
    if-ne v3, v4, :cond_43

    .line 1468
    .line 1469
    const/4 v8, 0x0

    .line 1470
    aget v15, v13, v8

    .line 1471
    .line 1472
    if-ne v15, v4, :cond_43

    .line 1473
    .line 1474
    aget v8, v13, v17

    .line 1475
    .line 1476
    if-ne v8, v4, :cond_43

    .line 1477
    .line 1478
    const/4 v8, 0x3

    .line 1479
    aget v15, v13, v8

    .line 1480
    .line 1481
    if-eq v15, v4, :cond_42

    .line 1482
    .line 1483
    goto :goto_2d

    .line 1484
    :cond_42
    move/from16 v32, v0

    .line 1485
    .line 1486
    move/from16 v29, v11

    .line 1487
    .line 1488
    goto :goto_2e

    .line 1489
    :cond_43
    const/4 v8, 0x3

    .line 1490
    :goto_2d
    aget v4, v13, v8

    .line 1491
    .line 1492
    const/4 v15, 0x0

    .line 1493
    aget v8, v13, v15

    .line 1494
    .line 1495
    aget v15, v13, v17

    .line 1496
    .line 1497
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 1498
    .line 1499
    .line 1500
    move-result v3

    .line 1501
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 1502
    .line 1503
    .line 1504
    move-result v3

    .line 1505
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 1506
    .line 1507
    .line 1508
    move-result v3

    .line 1509
    const/4 v4, 0x3

    .line 1510
    aget v8, v14, v4

    .line 1511
    .line 1512
    const/4 v4, 0x0

    .line 1513
    aget v15, v14, v4

    .line 1514
    .line 1515
    aget v4, v14, v27

    .line 1516
    .line 1517
    move/from16 v29, v11

    .line 1518
    .line 1519
    aget v11, v14, v17

    .line 1520
    .line 1521
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 1522
    .line 1523
    .line 1524
    move-result v4

    .line 1525
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 1526
    .line 1527
    .line 1528
    move-result v4

    .line 1529
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 1530
    .line 1531
    .line 1532
    move-result v4

    .line 1533
    add-int/2addr v4, v3

    .line 1534
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 1535
    .line 1536
    .line 1537
    move-result v32

    .line 1538
    :goto_2e
    if-eqz v26, :cond_48

    .line 1539
    .line 1540
    const/high16 v0, -0x80000000

    .line 1541
    .line 1542
    if-eq v10, v0, :cond_44

    .line 1543
    .line 1544
    if-nez v10, :cond_48

    .line 1545
    .line 1546
    :cond_44
    const/4 v0, 0x0

    .line 1547
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1548
    .line 1549
    move v3, v0

    .line 1550
    :goto_2f
    if-ge v3, v9, :cond_48

    .line 1551
    .line 1552
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v4

    .line 1556
    if-nez v4, :cond_45

    .line 1557
    .line 1558
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1559
    .line 1560
    add-int/2addr v4, v0

    .line 1561
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1562
    .line 1563
    goto :goto_30

    .line 1564
    :cond_45
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 1565
    .line 1566
    .line 1567
    move-result v0

    .line 1568
    const/16 v8, 0x8

    .line 1569
    .line 1570
    if-ne v0, v8, :cond_46

    .line 1571
    .line 1572
    add-int/lit8 v3, v3, 0x0

    .line 1573
    .line 1574
    goto :goto_30

    .line 1575
    :cond_46
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1580
    .line 1581
    if-eqz v19, :cond_47

    .line 1582
    .line 1583
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1584
    .line 1585
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1586
    .line 1587
    add-int/2addr v8, v12

    .line 1588
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1589
    .line 1590
    add-int/2addr v8, v0

    .line 1591
    const/4 v11, 0x0

    .line 1592
    add-int/2addr v8, v11

    .line 1593
    add-int/2addr v8, v4

    .line 1594
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1595
    .line 1596
    goto :goto_30

    .line 1597
    :cond_47
    const/4 v11, 0x0

    .line 1598
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1599
    .line 1600
    add-int v8, v4, v12

    .line 1601
    .line 1602
    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1603
    .line 1604
    add-int/2addr v8, v15

    .line 1605
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1606
    .line 1607
    add-int/2addr v8, v0

    .line 1608
    add-int/2addr v8, v11

    .line 1609
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1614
    .line 1615
    :goto_30
    add-int/lit8 v3, v3, 0x1

    .line 1616
    .line 1617
    const/4 v0, 0x0

    .line 1618
    goto :goto_2f

    .line 1619
    :cond_48
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1620
    .line 1621
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 1622
    .line 1623
    .line 1624
    move-result v3

    .line 1625
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 1626
    .line 1627
    .line 1628
    move-result v4

    .line 1629
    add-int/2addr v4, v3

    .line 1630
    add-int/2addr v4, v0

    .line 1631
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1632
    .line 1633
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 1638
    .line 1639
    .line 1640
    move-result v0

    .line 1641
    const/4 v3, 0x0

    .line 1642
    invoke-static {v0, v7, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1643
    .line 1644
    .line 1645
    move-result v0

    .line 1646
    const v3, 0xffffff

    .line 1647
    .line 1648
    .line 1649
    and-int/2addr v3, v0

    .line 1650
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1651
    .line 1652
    sub-int/2addr v3, v4

    .line 1653
    if-nez v22, :cond_4d

    .line 1654
    .line 1655
    if-eqz v3, :cond_49

    .line 1656
    .line 1657
    const/4 v8, 0x0

    .line 1658
    cmpl-float v11, v1, v8

    .line 1659
    .line 1660
    if-lez v11, :cond_49

    .line 1661
    .line 1662
    goto :goto_33

    .line 1663
    :cond_49
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 1664
    .line 1665
    .line 1666
    move-result v1

    .line 1667
    if-eqz v26, :cond_4c

    .line 1668
    .line 1669
    const/high16 v2, 0x40000000    # 2.0f

    .line 1670
    .line 1671
    if-eq v10, v2, :cond_4c

    .line 1672
    .line 1673
    const/4 v5, 0x0

    .line 1674
    :goto_31
    if-ge v5, v9, :cond_4c

    .line 1675
    .line 1676
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v2

    .line 1680
    if-eqz v2, :cond_4b

    .line 1681
    .line 1682
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1683
    .line 1684
    .line 1685
    move-result v3

    .line 1686
    const/16 v8, 0x8

    .line 1687
    .line 1688
    if-ne v3, v8, :cond_4a

    .line 1689
    .line 1690
    goto :goto_32

    .line 1691
    :cond_4a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v3

    .line 1695
    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1696
    .line 1697
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1698
    .line 1699
    const/4 v8, 0x0

    .line 1700
    cmpl-float v3, v3, v8

    .line 1701
    .line 1702
    if-lez v3, :cond_4b

    .line 1703
    .line 1704
    const/high16 v3, 0x40000000    # 2.0f

    .line 1705
    .line 1706
    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1707
    .line 1708
    .line 1709
    move-result v8

    .line 1710
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 1711
    .line 1712
    .line 1713
    move-result v10

    .line 1714
    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1715
    .line 1716
    .line 1717
    move-result v10

    .line 1718
    invoke-virtual {v2, v8, v10}, Landroid/view/View;->measure(II)V

    .line 1719
    .line 1720
    .line 1721
    :cond_4b
    :goto_32
    add-int/lit8 v5, v5, 0x1

    .line 1722
    .line 1723
    goto :goto_31

    .line 1724
    :cond_4c
    move/from16 v3, p2

    .line 1725
    .line 1726
    move/from16 v15, v25

    .line 1727
    .line 1728
    move/from16 v12, v29

    .line 1729
    .line 1730
    const/4 v8, 0x0

    .line 1731
    goto/16 :goto_42

    .line 1732
    .line 1733
    :cond_4d
    :goto_33
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 1734
    .line 1735
    const/4 v8, 0x0

    .line 1736
    cmpl-float v11, v2, v8

    .line 1737
    .line 1738
    if-lez v11, :cond_4e

    .line 1739
    .line 1740
    move v1, v2

    .line 1741
    :cond_4e
    const/4 v2, -0x1

    .line 1742
    const/4 v8, 0x3

    .line 1743
    aput v2, v13, v8

    .line 1744
    .line 1745
    aput v2, v13, v17

    .line 1746
    .line 1747
    aput v2, v13, v27

    .line 1748
    .line 1749
    const/4 v11, 0x0

    .line 1750
    aput v2, v13, v11

    .line 1751
    .line 1752
    aput v2, v14, v8

    .line 1753
    .line 1754
    aput v2, v14, v17

    .line 1755
    .line 1756
    aput v2, v14, v27

    .line 1757
    .line 1758
    aput v2, v14, v11

    .line 1759
    .line 1760
    iput v11, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1761
    .line 1762
    move/from16 v15, v25

    .line 1763
    .line 1764
    const/4 v2, -0x1

    .line 1765
    const/4 v8, 0x0

    .line 1766
    :goto_34
    if-ge v8, v9, :cond_5d

    .line 1767
    .line 1768
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v11

    .line 1772
    if-eqz v11, :cond_5c

    .line 1773
    .line 1774
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 1775
    .line 1776
    .line 1777
    move-result v12

    .line 1778
    const/16 v4, 0x8

    .line 1779
    .line 1780
    if-ne v12, v4, :cond_4f

    .line 1781
    .line 1782
    goto/16 :goto_3e

    .line 1783
    .line 1784
    :cond_4f
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v4

    .line 1788
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1789
    .line 1790
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1791
    .line 1792
    const/16 v18, 0x0

    .line 1793
    .line 1794
    cmpl-float v22, v12, v18

    .line 1795
    .line 1796
    if-lez v22, :cond_54

    .line 1797
    .line 1798
    int-to-float v7, v3

    .line 1799
    mul-float/2addr v7, v12

    .line 1800
    div-float/2addr v7, v1

    .line 1801
    float-to-int v7, v7

    .line 1802
    sub-float/2addr v1, v12

    .line 1803
    sub-int/2addr v3, v7

    .line 1804
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 1805
    .line 1806
    .line 1807
    move-result v12

    .line 1808
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 1809
    .line 1810
    .line 1811
    move-result v22

    .line 1812
    add-int v22, v22, v12

    .line 1813
    .line 1814
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1815
    .line 1816
    add-int v22, v22, v12

    .line 1817
    .line 1818
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1819
    .line 1820
    add-int v12, v22, v12

    .line 1821
    .line 1822
    move/from16 v22, v1

    .line 1823
    .line 1824
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1825
    .line 1826
    move/from16 v25, v3

    .line 1827
    .line 1828
    move/from16 v3, p2

    .line 1829
    .line 1830
    invoke-static {v3, v12, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1831
    .line 1832
    .line 1833
    move-result v1

    .line 1834
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1835
    .line 1836
    if-nez v12, :cond_52

    .line 1837
    .line 1838
    const/high16 v12, 0x40000000    # 2.0f

    .line 1839
    .line 1840
    if-eq v10, v12, :cond_50

    .line 1841
    .line 1842
    goto :goto_36

    .line 1843
    :cond_50
    if-lez v7, :cond_51

    .line 1844
    .line 1845
    goto :goto_35

    .line 1846
    :cond_51
    const/4 v7, 0x0

    .line 1847
    :goto_35
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1848
    .line 1849
    .line 1850
    move-result v7

    .line 1851
    invoke-virtual {v11, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1852
    .line 1853
    .line 1854
    goto :goto_37

    .line 1855
    :cond_52
    const/high16 v12, 0x40000000    # 2.0f

    .line 1856
    .line 1857
    :goto_36
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1858
    .line 1859
    .line 1860
    move-result v26

    .line 1861
    add-int v7, v26, v7

    .line 1862
    .line 1863
    if-gez v7, :cond_53

    .line 1864
    .line 1865
    const/4 v7, 0x0

    .line 1866
    :cond_53
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1867
    .line 1868
    .line 1869
    move-result v7

    .line 1870
    invoke-virtual {v11, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1871
    .line 1872
    .line 1873
    :goto_37
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 1874
    .line 1875
    .line 1876
    move-result v1

    .line 1877
    const/high16 v7, -0x1000000

    .line 1878
    .line 1879
    and-int/2addr v1, v7

    .line 1880
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1881
    .line 1882
    .line 1883
    move-result v15

    .line 1884
    move/from16 v1, v22

    .line 1885
    .line 1886
    move/from16 v7, v25

    .line 1887
    .line 1888
    goto :goto_38

    .line 1889
    :cond_54
    move v7, v3

    .line 1890
    move/from16 v3, p2

    .line 1891
    .line 1892
    :goto_38
    if-eqz v19, :cond_55

    .line 1893
    .line 1894
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1895
    .line 1896
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1897
    .line 1898
    .line 1899
    move-result v22

    .line 1900
    move/from16 v25, v1

    .line 1901
    .line 1902
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1903
    .line 1904
    add-int v22, v22, v1

    .line 1905
    .line 1906
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1907
    .line 1908
    add-int v22, v22, v1

    .line 1909
    .line 1910
    const/4 v1, 0x0

    .line 1911
    add-int/lit8 v22, v22, 0x0

    .line 1912
    .line 1913
    add-int v12, v22, v12

    .line 1914
    .line 1915
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1916
    .line 1917
    move/from16 v26, v7

    .line 1918
    .line 1919
    goto :goto_39

    .line 1920
    :cond_55
    move/from16 v25, v1

    .line 1921
    .line 1922
    const/4 v1, 0x0

    .line 1923
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1924
    .line 1925
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1926
    .line 1927
    .line 1928
    move-result v22

    .line 1929
    add-int v22, v22, v12

    .line 1930
    .line 1931
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1932
    .line 1933
    add-int v22, v22, v1

    .line 1934
    .line 1935
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1936
    .line 1937
    add-int v22, v22, v1

    .line 1938
    .line 1939
    move/from16 v26, v7

    .line 1940
    .line 1941
    const/4 v1, 0x0

    .line 1942
    add-int/lit8 v7, v22, 0x0

    .line 1943
    .line 1944
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    .line 1945
    .line 1946
    .line 1947
    move-result v1

    .line 1948
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1949
    .line 1950
    :goto_39
    move/from16 v12, v29

    .line 1951
    .line 1952
    const/high16 v1, 0x40000000    # 2.0f

    .line 1953
    .line 1954
    if-eq v12, v1, :cond_56

    .line 1955
    .line 1956
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1957
    .line 1958
    const/4 v7, -0x1

    .line 1959
    if-ne v1, v7, :cond_56

    .line 1960
    .line 1961
    move/from16 v1, v27

    .line 1962
    .line 1963
    goto :goto_3a

    .line 1964
    :cond_56
    const/4 v1, 0x0

    .line 1965
    :goto_3a
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1966
    .line 1967
    move/from16 v22, v10

    .line 1968
    .line 1969
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1970
    .line 1971
    add-int/2addr v7, v10

    .line 1972
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1973
    .line 1974
    .line 1975
    move-result v10

    .line 1976
    add-int/2addr v10, v7

    .line 1977
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    .line 1978
    .line 1979
    .line 1980
    move-result v2

    .line 1981
    if-eqz v1, :cond_57

    .line 1982
    .line 1983
    goto :goto_3b

    .line 1984
    :cond_57
    move v7, v10

    .line 1985
    :goto_3b
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 1986
    .line 1987
    .line 1988
    move-result v1

    .line 1989
    if-eqz v20, :cond_58

    .line 1990
    .line 1991
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1992
    .line 1993
    const/4 v7, -0x1

    .line 1994
    if-ne v5, v7, :cond_59

    .line 1995
    .line 1996
    move/from16 v5, v27

    .line 1997
    .line 1998
    goto :goto_3c

    .line 1999
    :cond_58
    const/4 v7, -0x1

    .line 2000
    :cond_59
    const/4 v5, 0x0

    .line 2001
    :goto_3c
    if-eqz v30, :cond_5b

    .line 2002
    .line 2003
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 2004
    .line 2005
    .line 2006
    move-result v11

    .line 2007
    if-eq v11, v7, :cond_5b

    .line 2008
    .line 2009
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2010
    .line 2011
    if-gez v4, :cond_5a

    .line 2012
    .line 2013
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 2014
    .line 2015
    :cond_5a
    and-int/lit8 v4, v4, 0x70

    .line 2016
    .line 2017
    const/16 v24, 0x4

    .line 2018
    .line 2019
    shr-int/lit8 v4, v4, 0x4

    .line 2020
    .line 2021
    const/16 v28, -0x2

    .line 2022
    .line 2023
    and-int/lit8 v4, v4, -0x2

    .line 2024
    .line 2025
    shr-int/lit8 v4, v4, 0x1

    .line 2026
    .line 2027
    aget v7, v13, v4

    .line 2028
    .line 2029
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 2030
    .line 2031
    .line 2032
    move-result v7

    .line 2033
    aput v7, v13, v4

    .line 2034
    .line 2035
    aget v7, v14, v4

    .line 2036
    .line 2037
    sub-int/2addr v10, v11

    .line 2038
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 2039
    .line 2040
    .line 2041
    move-result v7

    .line 2042
    aput v7, v14, v4

    .line 2043
    .line 2044
    goto :goto_3d

    .line 2045
    :cond_5b
    const/16 v24, 0x4

    .line 2046
    .line 2047
    const/16 v28, -0x2

    .line 2048
    .line 2049
    :goto_3d
    move/from16 v20, v5

    .line 2050
    .line 2051
    move/from16 v7, v26

    .line 2052
    .line 2053
    move v5, v1

    .line 2054
    move/from16 v1, v25

    .line 2055
    .line 2056
    goto :goto_3f

    .line 2057
    :cond_5c
    :goto_3e
    move v7, v3

    .line 2058
    move/from16 v22, v10

    .line 2059
    .line 2060
    move/from16 v12, v29

    .line 2061
    .line 2062
    const/16 v18, 0x0

    .line 2063
    .line 2064
    const/16 v24, 0x4

    .line 2065
    .line 2066
    const/16 v28, -0x2

    .line 2067
    .line 2068
    move/from16 v3, p2

    .line 2069
    .line 2070
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    .line 2071
    .line 2072
    move v3, v7

    .line 2073
    move/from16 v29, v12

    .line 2074
    .line 2075
    move/from16 v10, v22

    .line 2076
    .line 2077
    move/from16 v7, p1

    .line 2078
    .line 2079
    goto/16 :goto_34

    .line 2080
    .line 2081
    :cond_5d
    move/from16 v3, p2

    .line 2082
    .line 2083
    move/from16 v12, v29

    .line 2084
    .line 2085
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 2086
    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 2088
    .line 2089
    .line 2090
    move-result v4

    .line 2091
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 2092
    .line 2093
    .line 2094
    move-result v7

    .line 2095
    add-int/2addr v7, v4

    .line 2096
    add-int/2addr v7, v1

    .line 2097
    iput v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 2098
    .line 2099
    aget v1, v13, v27

    .line 2100
    .line 2101
    const/4 v4, -0x1

    .line 2102
    if-ne v1, v4, :cond_5f

    .line 2103
    .line 2104
    const/4 v7, 0x0

    .line 2105
    aget v8, v13, v7

    .line 2106
    .line 2107
    if-ne v8, v4, :cond_5f

    .line 2108
    .line 2109
    aget v7, v13, v17

    .line 2110
    .line 2111
    if-ne v7, v4, :cond_5f

    .line 2112
    .line 2113
    const/4 v7, 0x3

    .line 2114
    aget v8, v13, v7

    .line 2115
    .line 2116
    if-eq v8, v4, :cond_5e

    .line 2117
    .line 2118
    goto :goto_40

    .line 2119
    :cond_5e
    move/from16 v32, v2

    .line 2120
    .line 2121
    const/4 v8, 0x0

    .line 2122
    goto :goto_41

    .line 2123
    :cond_5f
    const/4 v7, 0x3

    .line 2124
    :goto_40
    aget v4, v13, v7

    .line 2125
    .line 2126
    const/4 v8, 0x0

    .line 2127
    aget v10, v13, v8

    .line 2128
    .line 2129
    aget v11, v13, v17

    .line 2130
    .line 2131
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 2132
    .line 2133
    .line 2134
    move-result v1

    .line 2135
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 2136
    .line 2137
    .line 2138
    move-result v1

    .line 2139
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 2140
    .line 2141
    .line 2142
    move-result v1

    .line 2143
    aget v4, v14, v7

    .line 2144
    .line 2145
    aget v7, v14, v8

    .line 2146
    .line 2147
    aget v10, v14, v27

    .line 2148
    .line 2149
    aget v11, v14, v17

    .line 2150
    .line 2151
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 2152
    .line 2153
    .line 2154
    move-result v10

    .line 2155
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 2156
    .line 2157
    .line 2158
    move-result v7

    .line 2159
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 2160
    .line 2161
    .line 2162
    move-result v4

    .line 2163
    add-int/2addr v4, v1

    .line 2164
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 2165
    .line 2166
    .line 2167
    move-result v1

    .line 2168
    move/from16 v32, v1

    .line 2169
    .line 2170
    :goto_41
    move v1, v5

    .line 2171
    :goto_42
    if-nez v20, :cond_60

    .line 2172
    .line 2173
    const/high16 v2, 0x40000000    # 2.0f

    .line 2174
    .line 2175
    if-eq v12, v2, :cond_60

    .line 2176
    .line 2177
    goto :goto_43

    .line 2178
    :cond_60
    move/from16 v1, v32

    .line 2179
    .line 2180
    :goto_43
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 2181
    .line 2182
    .line 2183
    move-result v2

    .line 2184
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 2185
    .line 2186
    .line 2187
    move-result v4

    .line 2188
    add-int/2addr v4, v2

    .line 2189
    add-int/2addr v4, v1

    .line 2190
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 2191
    .line 2192
    .line 2193
    move-result v1

    .line 2194
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 2195
    .line 2196
    .line 2197
    move-result v1

    .line 2198
    const/high16 v2, -0x1000000

    .line 2199
    .line 2200
    and-int/2addr v2, v15

    .line 2201
    or-int/2addr v0, v2

    .line 2202
    shl-int/lit8 v2, v15, 0x10

    .line 2203
    .line 2204
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 2205
    .line 2206
    .line 2207
    move-result v1

    .line 2208
    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2209
    .line 2210
    .line 2211
    if-eqz v23, :cond_63

    .line 2212
    .line 2213
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 2214
    .line 2215
    .line 2216
    move-result v0

    .line 2217
    const/high16 v1, 0x40000000    # 2.0f

    .line 2218
    .line 2219
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 2220
    .line 2221
    .line 2222
    move-result v7

    .line 2223
    :goto_44
    if-ge v8, v9, :cond_63

    .line 2224
    .line 2225
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v1

    .line 2229
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 2230
    .line 2231
    .line 2232
    move-result v0

    .line 2233
    const/16 v10, 0x8

    .line 2234
    .line 2235
    if-eq v0, v10, :cond_61

    .line 2236
    .line 2237
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v0

    .line 2241
    move-object v11, v0

    .line 2242
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2243
    .line 2244
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2245
    .line 2246
    const/4 v12, -0x1

    .line 2247
    if-ne v0, v12, :cond_62

    .line 2248
    .line 2249
    iget v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2250
    .line 2251
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2252
    .line 2253
    .line 2254
    move-result v0

    .line 2255
    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2256
    .line 2257
    const/4 v3, 0x0

    .line 2258
    const/4 v5, 0x0

    .line 2259
    move-object/from16 v0, p0

    .line 2260
    .line 2261
    move/from16 v2, p1

    .line 2262
    .line 2263
    move v4, v7

    .line 2264
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2265
    .line 2266
    .line 2267
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2268
    .line 2269
    goto :goto_45

    .line 2270
    :cond_61
    const/4 v12, -0x1

    .line 2271
    :cond_62
    :goto_45
    add-int/lit8 v8, v8, 0x1

    .line 2272
    .line 2273
    goto :goto_44

    .line 2274
    :cond_63
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
