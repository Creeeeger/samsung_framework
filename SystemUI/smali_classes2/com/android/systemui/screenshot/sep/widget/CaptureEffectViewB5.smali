.class public Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;
.super Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final MODE_ADD:Landroid/graphics/PorterDuffXfermode;

.field public final MODE_DST_IN:Landroid/graphics/PorterDuffXfermode;

.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public mCoverShape:Landroid/graphics/Bitmap;

.field public mCoverShapeBackground:Landroid/graphics/Bitmap;

.field public mEffectSize:I

.field public mMaskBgBitmap:Landroid/graphics/Bitmap;

.field public mMaskBitmap:Landroid/graphics/Bitmap;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRoundRectX:F

.field public mRoundRectY:F

.field public final mScreenMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f080693

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    const p1, 0x7f080694

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    .line 5
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_DST_IN:Landroid/graphics/PorterDuffXfermode;

    .line 6
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_ADD:Landroid/graphics/PorterDuffXfermode;

    .line 7
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Landroid/graphics/Canvas;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

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
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->updatePath(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_DST_IN:Landroid/graphics/PorterDuffXfermode;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    .line 29
    .line 30
    int-to-float v2, v1

    .line 31
    int-to-float v1, v1

    .line 32
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_ADD:Landroid/graphics/PorterDuffXfermode;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBgBitmap:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    .line 47
    .line 48
    int-to-float v2, v1

    .line 49
    int-to-float v1, v1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final setDegree(F)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget-object v6, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget-object v7, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    move v4, p1

    .line 46
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    return-void
.end method

.method public final setEffectParams(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    .line 2
    .line 3
    int-to-float p1, p2

    .line 4
    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectX:F

    .line 5
    .line 6
    int-to-float p1, p3

    .line 7
    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectY:F

    .line 8
    .line 9
    return-void
.end method

.method public final updatePath(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    .line 2
    .line 3
    sub-int v1, p1, v0

    .line 4
    .line 5
    sub-int v2, p2, v0

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    .line 13
    .line 14
    int-to-float v4, v0

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/graphics/RectF;

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    int-to-float v2, v2

    .line 23
    invoke-direct {v3, v4, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectX:F

    .line 29
    .line 30
    iget v2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectY:F

    .line 31
    .line 32
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 33
    .line 34
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    .line 38
    .line 39
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    .line 45
    .line 46
    mul-int/lit8 v1, v0, 0x2

    .line 47
    .line 48
    sub-int/2addr p1, v1

    .line 49
    mul-int/lit8 v0, v0, 0x2

    .line 50
    .line 51
    sub-int/2addr p2, v0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBgBitmap:Landroid/graphics/Bitmap;

    .line 68
    .line 69
    return-void
.end method
