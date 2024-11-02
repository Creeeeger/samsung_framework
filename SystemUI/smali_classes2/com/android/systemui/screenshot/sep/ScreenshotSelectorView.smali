.class public Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBlackDashedLine:Landroid/graphics/Paint;

.field public final mPaintBackground:Landroid/graphics/Paint;

.field public final mPaintSelection:Landroid/graphics/Paint;

.field public mSelectionRect:Landroid/graphics/Rect;

.field public mStartPoint:Landroid/graphics/Point;

.field public final mWhiteDashedLine:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07026e

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07026d

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07026f

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v2, -0x1

    .line 11
    invoke-static {v2, v0, v1, p1}, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->createDashedLine(IIII)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mWhiteDashedLine:Landroid/graphics/Paint;

    .line 12
    invoke-static {p2, v0, v1, p1}, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->createDashedLine(IIII)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mBlackDashedLine:Landroid/graphics/Paint;

    return-void
.end method

.method public static createDashedLine(IIII)Landroid/graphics/Paint;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/DashPathEffect;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [F

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    int-to-float p2, p2

    .line 13
    aput p2, v2, v3

    .line 14
    .line 15
    int-to-float p2, p3

    .line 16
    const/4 p3, 0x1

    .line 17
    aput p2, v2, p3

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {v1, v2, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    .line 33
    .line 34
    int-to-float p0, p1

    .line 35
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 2
    .line 3
    int-to-float v2, v0

    .line 4
    iget v0, p0, Landroid/view/View;->mTop:I

    .line 5
    .line 6
    int-to-float v3, v0

    .line 7
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 8
    .line 9
    int-to-float v4, v0

    .line 10
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 11
    .line 12
    int-to-float v5, v0

    .line 13
    iget-object v6, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mBlackDashedLine:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mWhiteDashedLine:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
