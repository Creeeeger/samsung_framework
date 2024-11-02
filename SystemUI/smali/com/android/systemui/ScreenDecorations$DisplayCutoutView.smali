.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Lcom/android/systemui/DisplayCutoutBaseView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBounds:Ljava/util/List;

.field public mColor:I

.field public final mInitialPosition:I

.field public mPosition:I

.field public mRotation:I

.field public final mTotalBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/high16 p1, -0x1000000

    .line 19
    .line 20
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 21
    .line 22
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 37
    .line 38
    iget p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 44
    .line 45
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const v0, 0x7f07016d

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    int-to-float p2, p2

    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance p2, Landroid/graphics/Point;

    .line 72
    .line 73
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 77
    .line 78
    .line 79
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    iput p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayWidth:I

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->getInitialDensity()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayDensity:I

    .line 88
    .line 89
    return-void
.end method

.method public static boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x30

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x50

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method


# virtual methods
.method public final getGravity(Landroid/view/DisplayCutout;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_3

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    if-ne p0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_3

    .line 29
    .line 30
    const/16 p0, 0x30

    .line 31
    .line 32
    return p0

    .line 33
    :cond_1
    if-ne p0, v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_3

    .line 44
    .line 45
    const/16 p0, 0x50

    .line 46
    .line 47
    return p0

    .line 48
    :cond_2
    const/4 v0, 0x2

    .line 49
    if-ne p0, v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    const/4 p0, 0x5

    .line 62
    return p0

    .line 63
    :cond_3
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 32
    .line 33
    float-to-int v3, v3

    .line 34
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 35
    .line 36
    float-to-int v4, v4

    .line 37
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 38
    .line 39
    float-to-int v5, v5

    .line 40
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 41
    .line 42
    float-to-int v2, v2

    .line 43
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public updateCutout()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_d

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    .line 14
    .line 15
    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 36
    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const v1, 0x7f050010

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    const/4 v4, 0x3

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_e

    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 97
    .line 98
    const/4 v5, 0x2

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget v6, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    .line 103
    .line 104
    if-nez v6, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    if-ne v6, v3, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    goto :goto_0

    .line 126
    :cond_4
    if-ne v6, v4, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    goto :goto_0

    .line 137
    :cond_5
    if-ne v6, v5, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    :goto_0
    xor-int/2addr v0, v3

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    :goto_1
    move v0, v2

    .line 150
    :goto_2
    if-eqz v0, :cond_e

    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 153
    .line 154
    iget-object v6, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 155
    .line 156
    iget-object v6, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 157
    .line 158
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v0, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 168
    .line 169
    iget-object v6, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 170
    .line 171
    iget-object v6, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 172
    .line 173
    invoke-virtual {p0, v6}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    invoke-static {v7, v0, v6}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const v1, 0x7f07016d

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    int-to-double v0, v0

    .line 206
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 207
    .line 208
    div-double/2addr v0, v6

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    double-to-int v0, v0

    .line 214
    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    .line 215
    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    if-eq v1, v3, :cond_9

    .line 219
    .line 220
    if-eq v1, v5, :cond_8

    .line 221
    .line 222
    if-eq v1, v4, :cond_7

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 226
    .line 227
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 228
    .line 229
    sub-int/2addr v4, v0

    .line 230
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 234
    .line 235
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 236
    .line 237
    sub-int/2addr v4, v0

    .line 238
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 242
    .line 243
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 244
    .line 245
    add-int/2addr v4, v0

    .line 246
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 250
    .line 251
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 252
    .line 253
    add-int/2addr v4, v0

    .line 254
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 255
    .line 256
    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    .line 262
    if-eqz v1, :cond_c

    .line 263
    .line 264
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    .line 266
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 267
    .line 268
    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 269
    .line 270
    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    .line 276
    if-eq v4, v1, :cond_c

    .line 277
    .line 278
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 279
    .line 280
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 284
    .line 285
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPath()Landroid/graphics/Path;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-eqz v0, :cond_d

    .line 292
    .line 293
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 294
    .line 295
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 302
    .line 303
    .line 304
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_c

    .line 308
    .line 309
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_10

    .line 316
    .line 317
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 318
    .line 319
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 320
    .line 321
    const-string v1, "fill_udc_display_cutout"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    move v0, v3

    .line 334
    goto :goto_5

    .line 335
    :cond_f
    move v0, v2

    .line 336
    :goto_5
    if-eqz v0, :cond_10

    .line 337
    .line 338
    move v0, v3

    .line 339
    goto :goto_6

    .line 340
    :cond_10
    move v0, v2

    .line 341
    :goto_6
    if-eqz v0, :cond_16

    .line 342
    .line 343
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 350
    .line 351
    iget v6, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayWidth:I

    .line 352
    .line 353
    iget v7, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayDensity:I

    .line 354
    .line 355
    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 356
    .line 357
    iget v9, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 358
    .line 359
    iget v10, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 360
    .line 361
    if-eq v10, v3, :cond_12

    .line 362
    .line 363
    if-ne v10, v4, :cond_11

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_11
    move v4, v2

    .line 367
    goto :goto_8

    .line 368
    :cond_12
    :goto_7
    move v4, v3

    .line 369
    :goto_8
    if-eqz v4, :cond_13

    .line 370
    .line 371
    move v10, v9

    .line 372
    goto :goto_9

    .line 373
    :cond_13
    move v10, v8

    .line 374
    :goto_9
    if-eqz v4, :cond_14

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_14
    move v8, v9

    .line 378
    :goto_a
    if-gtz v6, :cond_15

    .line 379
    .line 380
    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 381
    .line 382
    move v9, v4

    .line 383
    goto :goto_b

    .line 384
    :cond_15
    mul-int/2addr v7, v10

    .line 385
    div-int/2addr v7, v6

    .line 386
    move v9, v7

    .line 387
    :goto_b
    iget-object v6, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    move v7, v10

    .line 391
    move v10, v1

    .line 392
    invoke-static/range {v5 .. v10}, Landroid/view/DisplayCutout;->pathFromResourcesForUDC(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Path;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 397
    .line 398
    .line 399
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 400
    .line 401
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    .line 402
    .line 403
    new-instance v4, Landroid/graphics/RectF;

    .line 404
    .line 405
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 409
    .line 410
    .line 411
    new-instance v1, Landroid/graphics/Rect;

    .line 412
    .line 413
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 414
    .line 415
    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 420
    .line 421
    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 426
    .line 427
    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 432
    .line 433
    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    invoke-direct {v1, v5, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 444
    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_16
    const/16 v2, 0x8

    .line 448
    .line 449
    :goto_c
    instance-of v0, p0, Lcom/android/systemui/FaceScanningOverlay;

    .line 450
    .line 451
    xor-int/2addr v0, v3

    .line 452
    if-eqz v0, :cond_17

    .line 453
    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-eq v2, v0, :cond_17

    .line 459
    .line 460
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    :cond_17
    :goto_d
    return-void
.end method
