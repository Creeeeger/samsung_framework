.class public Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEffectSize:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRoundRectX:F

.field public mRoundRectY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->updatePath(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setDegree(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public setEffectParams(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mEffectSize:I

    .line 2
    .line 3
    int-to-float p1, p2

    .line 4
    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectX:F

    .line 5
    .line 6
    int-to-float p1, p3

    .line 7
    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectY:F

    .line 8
    .line 9
    return-void
.end method

.method public updatePath(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mEffectSize:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    sub-int/2addr p2, v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    .line 11
    .line 12
    int-to-float v2, v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/graphics/RectF;

    .line 18
    .line 19
    int-to-float p1, p1

    .line 20
    int-to-float p2, p2

    .line 21
    invoke-direct {v1, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    .line 25
    .line 26
    iget p2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectX:F

    .line 27
    .line 28
    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectY:F

    .line 29
    .line 30
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 31
    .line 32
    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    .line 36
    .line 37
    sget-object p1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
