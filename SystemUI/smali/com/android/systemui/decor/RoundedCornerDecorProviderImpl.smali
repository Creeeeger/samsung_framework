.class public final Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/CornerDecorProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final alignedBound1:I

.field public final alignedBound2:I

.field public final isTop:Z

.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

.field public final viewId:I


# direct methods
.method public constructor <init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/decor/CornerDecorProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBounds()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getAlignedBound1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAlignedBound2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    .line 2
    .line 3
    return p0
.end method

.method public final inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;II)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->initView(Landroid/widget/ImageView;II)V

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    .line 15
    .line 16
    iget-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p4, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p4, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 24
    .line 25
    :goto_0
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget v2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    .line 36
    .line 37
    invoke-static {v2, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    .line 42
    .line 43
    invoke-static {p0, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    or-int/2addr p0, v2

    .line 48
    invoke-direct {p4, v1, p1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final initView(Landroid/widget/ImageView;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const v0, 0x7f080ee1

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const v0, 0x7f080ede

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBounds()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const/high16 v2, -0x40800000    # -1.0f

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/high16 v4, 0x3f800000    # 1.0f

    .line 56
    .line 57
    if-eqz p2, :cond_b

    .line 58
    .line 59
    if-eq p2, v0, :cond_8

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    if-eq p2, v0, :cond_5

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    if-eqz v1, :cond_4

    .line 70
    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    if-nez v1, :cond_10

    .line 75
    .line 76
    if-eqz p0, :cond_10

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    if-eqz v1, :cond_6

    .line 80
    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    if-eqz v1, :cond_7

    .line 85
    .line 86
    if-nez p0, :cond_7

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_7
    if-nez v1, :cond_e

    .line 90
    .line 91
    if-nez p0, :cond_10

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_8
    if-eqz v1, :cond_9

    .line 95
    .line 96
    if-eqz p0, :cond_9

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_9
    if-eqz v1, :cond_a

    .line 100
    .line 101
    if-eqz p0, :cond_10

    .line 102
    .line 103
    :cond_a
    if-nez v1, :cond_11

    .line 104
    .line 105
    if-eqz p0, :cond_11

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_b
    if-eqz v1, :cond_c

    .line 109
    .line 110
    if-nez p0, :cond_10

    .line 111
    .line 112
    :cond_c
    if-eqz v1, :cond_d

    .line 113
    .line 114
    if-nez p0, :cond_d

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_d
    if-nez v1, :cond_f

    .line 118
    .line 119
    if-eqz p0, :cond_f

    .line 120
    .line 121
    :cond_e
    :goto_3
    move v5, v4

    .line 122
    move v4, v2

    .line 123
    move v2, v5

    .line 124
    goto :goto_5

    .line 125
    :cond_f
    :goto_4
    const/high16 v3, 0x43340000    # 180.0f

    .line 126
    .line 127
    :cond_10
    move v2, v4

    .line 128
    :cond_11
    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 135
    .line 136
    .line 137
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 6
    .line 7
    invoke-virtual {v0, p5, p2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    move-object p2, p1

    .line 11
    check-cast p2, Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->initView(Landroid/widget/ImageView;II)V

    .line 14
    .line 15
    .line 16
    iget-boolean p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    iget-object p4, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p4, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p5

    .line 35
    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 36
    .line 37
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 42
    .line 43
    iget p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    .line 44
    .line 45
    invoke-static {p4, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    .line 50
    .line 51
    invoke-static {p0, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    or-int/2addr p0, p4

    .line 56
    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
