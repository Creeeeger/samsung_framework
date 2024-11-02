.class public final Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;
.super Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final cycleCount:I

.field public final evaluator:Landroid/animation/ArgbEvaluator;

.field public final leftCornerBounds:Landroid/graphics/RectF;

.field public final leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

.field public final numWaves:I

.field public final path:Landroid/graphics/Path;

.field public final pathPaint:Landroid/graphics/Paint;

.field public phase:F

.field public final phaseShift:F

.field public final scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

.field public final stepX:I

.field public final widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->numWaves:I

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    iput p2, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->cycleCount:I

    .line 9
    .line 10
    const p2, -0x43333333    # -0.025f

    .line 11
    .line 12
    .line 13
    iput p2, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phaseShift:F

    .line 14
    .line 15
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->stepX:I

    .line 16
    .line 17
    new-instance p1, Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->pathPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Path;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    .line 39
    .line 40
    new-instance p1, Landroid/animation/ArgbEvaluator;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->evaluator:Landroid/animation/ArgbEvaluator;

    .line 46
    .line 47
    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 53
    .line 54
    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    const-wide/16 v2, 0xc8

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/16 v6, 0xd

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v0, p1

    .line 65
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 69
    .line 70
    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 71
    .line 72
    invoke-direct {p1}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 76
    .line 77
    new-instance p1, Landroid/graphics/RectF;

    .line 78
    .line 79
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final onLayout(Landroid/graphics/RectF;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->onLayout(Landroid/graphics/RectF;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x41000000    # 8.0f

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-float/2addr v1, v0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-float/2addr v2, v0

    .line 28
    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    int-to-float v4, v4

    .line 34
    mul-float/2addr v0, v4

    .line 35
    add-float/2addr v0, p1

    .line 36
    invoke-virtual {v3, p1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 42
    .line 43
    .line 44
    const/high16 p1, 0x43340000    # 180.0f

    .line 45
    .line 46
    const/high16 v0, 0x42b40000    # 90.0f

    .line 47
    .line 48
    invoke-virtual {p0, v3, p1, v0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->updatePath()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onThumbLocationChanged(F)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->onThumbLocationChanged(F)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    const/high16 v1, 0x41000000    # 8.0f

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    float-to-int v4, v4

    .line 27
    if-ge v0, v4, :cond_0

    .line 28
    .line 29
    move v4, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v3

    .line 32
    :goto_0
    const/4 v5, 0x2

    .line 33
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .line 35
    iget-object v7, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const v0, 0x3dcccccd    # 0.1f

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    sget-object v4, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    float-to-int v4, v4

    .line 56
    iget-object v8, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    iget v10, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->cycleCount:I

    .line 63
    .line 64
    mul-int/2addr v10, v5

    .line 65
    div-int/2addr v9, v10

    .line 66
    if-ge v0, v9, :cond_2

    .line 67
    .line 68
    if-gt v4, v0, :cond_2

    .line 69
    .line 70
    move v4, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v4, v3

    .line 73
    :goto_1
    if-eqz v4, :cond_3

    .line 74
    .line 75
    const v0, 0x3e99999a    # 0.3f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    div-int/2addr v4, v10

    .line 87
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-gt v0, v8, :cond_4

    .line 92
    .line 93
    if-gt v4, v0, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    move v2, v3

    .line 97
    :goto_2
    if-eqz v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {v7, v6}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/high16 v2, 0x40000000    # 2.0f

    .line 117
    .line 118
    div-float/2addr v0, v2

    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    div-float/2addr v0, v2

    .line 128
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    int-to-float v2, v5

    .line 133
    div-float/2addr v1, v2

    .line 134
    invoke-virtual {p0, v0, v6, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {p0, v0, v6, p1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->updatePath()V

    .line 149
    .line 150
    .line 151
    return-void
.end method
