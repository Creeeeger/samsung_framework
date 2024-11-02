.class public Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final lineDuration:J

.field public repeatColorAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    .line 3
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 7
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 11
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 15
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x41200000    # 10.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x41100000    # 9.0f

    .line 12
    .line 13
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-wide/16 v2, 0xc8

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0x1388

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 26
    .line 27
    const v0, 0x3f4ccccd    # 0.8f

    .line 28
    .line 29
    .line 30
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 31
    .line 32
    return-void
.end method

.method public final setImageDrawable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f080caa

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final setMainColor(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    aget v1, p1, v0

    .line 12
    .line 13
    const/high16 v2, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr v1, v2

    .line 16
    aput v1, p1, v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 30
    .line 31
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 35
    .line 36
    aget v1, p1, v0

    .line 37
    .line 38
    sub-float/2addr v1, v2

    .line 39
    aput v1, p1, v0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 42
    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 51
    .line 52
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
