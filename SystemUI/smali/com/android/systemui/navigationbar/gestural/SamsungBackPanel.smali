.class public final Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;
.super Lcom/android/systemui/navigationbar/gestural/BackPanel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public arrowDarkColor:I

.field public arrowLightColor:I

.field public backPanelDarkColor:I

.field public backPanelLightColor:I

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final maxArrowAlpha:I

.field public final maxBGAlpha:I

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    check-cast p3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 11
    .line 12
    invoke-virtual {p3, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 17
    .line 18
    const p2, 0x7f060432

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelDarkColor:I

    .line 26
    .line 27
    const p2, 0x7f060433

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelLightColor:I

    .line 35
    .line 36
    const p2, 0x7f060430

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowDarkColor:I

    .line 44
    .line 45
    const p2, 0x7f060431

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowLightColor:I

    .line 53
    .line 54
    const/16 p1, 0xb3

    .line 55
    .line 56
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxArrowAlpha:I

    .line 57
    .line 58
    const/16 p1, 0x80

    .line 59
    .line 60
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxBGAlpha:I

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 6
    .line 7
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 10
    .line 11
    iget v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    int-to-float v3, v3

    .line 15
    div-float/2addr v2, v3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 21
    .line 22
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 23
    .line 24
    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 25
    .line 26
    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    .line 30
    .line 31
    iget-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 32
    .line 33
    const/high16 v8, 0x3f800000    # 1.0f

    .line 34
    .line 35
    const/high16 v9, -0x40800000    # -1.0f

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    if-nez v7, :cond_0

    .line 39
    .line 40
    int-to-float v4, v4

    .line 41
    const/high16 v7, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v4, v7

    .line 44
    invoke-virtual {p1, v9, v8, v4, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 48
    .line 49
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    int-to-float v7, v7

    .line 56
    const/high16 v11, 0x3f000000    # 0.5f

    .line 57
    .line 58
    mul-float/2addr v7, v11

    .line 59
    iget-object v11, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 60
    .line 61
    iget v11, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 62
    .line 63
    add-float/2addr v7, v11

    .line 64
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 68
    .line 69
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 70
    .line 71
    invoke-virtual {p1, v4, v4, v6, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    .line 75
    .line 76
    iput v10, v4, Landroid/graphics/RectF;->left:F

    .line 77
    .line 78
    neg-float v6, v2

    .line 79
    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 80
    .line 81
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 82
    .line 83
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 84
    .line 85
    invoke-static {v4, v0, v1, v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->toPathWithRoundCorners$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/RectF;FFFF)Landroid/graphics/Path;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    .line 90
    .line 91
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxBGAlpha:I

    .line 92
    .line 93
    int-to-float v2, v2

    .line 94
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 95
    .line 96
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 97
    .line 98
    mul-float/2addr v2, v4

    .line 99
    float-to-int v2, v2

    .line 100
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    .line 102
    .line 103
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 109
    .line 110
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 113
    .line 114
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 115
    .line 116
    sub-float/2addr v5, v0

    .line 117
    div-float/2addr v5, v3

    .line 118
    invoke-virtual {p1, v5, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    .line 120
    .line 121
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 122
    .line 123
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 124
    .line 125
    xor-int/2addr v2, v3

    .line 126
    xor-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    if-eqz v2, :cond_1

    .line 129
    .line 130
    invoke-virtual {p1, v9, v8, v10, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 131
    .line 132
    .line 133
    neg-float v2, v0

    .line 134
    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->calculateArrowPath$frameworks__base__packages__SystemUI__android_common__SystemUI_core(FF)Landroid/graphics/Path;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 142
    .line 143
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxArrowAlpha:I

    .line 144
    .line 145
    int-to-float v2, v2

    .line 146
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 147
    .line 148
    iget v3, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 149
    .line 150
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 151
    .line 152
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 153
    .line 154
    invoke-static {v3, v4}, Landroid/util/MathUtils;->min(FF)F

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    mul-float/2addr v3, v2

    .line 159
    float-to-int v2, v3

    .line 160
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    .line 168
    .line 169
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    .line 170
    .line 171
    if-eqz p1, :cond_2

    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 174
    .line 175
    const/16 v0, 0xf

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 178
    .line 179
    .line 180
    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    .line 182
    .line 183
    :cond_2
    return-void
.end method

.method public final updateArrowPaint$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const v1, 0x7f07008e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-float p1, p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowDarkColor:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowLightColor:I

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelDarkColor:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelLightColor:I

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final updateBackPanelColor$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IIII)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v0, 0x7f060430

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowDarkColor:I

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const p2, 0x7f060431

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    :cond_1
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowLightColor:I

    .line 30
    .line 31
    if-nez p3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const p2, 0x7f060432

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    :cond_2
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelDarkColor:I

    .line 45
    .line 46
    if-nez p4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const p2, 0x7f060433

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    :cond_3
    iput p4, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelLightColor:I

    .line 60
    .line 61
    return-void
.end method
