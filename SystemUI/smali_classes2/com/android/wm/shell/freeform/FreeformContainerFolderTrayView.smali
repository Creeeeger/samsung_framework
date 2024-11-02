.class public Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCloseButton:Landroid/widget/ImageView;

.field public final mCloseButtonSize:I

.field public mHeight:I

.field public final mItemMargin:Landroid/graphics/Rect;

.field public mOpenAllAppsButton:Landroid/widget/ImageView;

.field public final mOpenAllAppsButtonSize:I

.field public final mOutline:Landroid/graphics/Outline;

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mStrokePath:Landroid/graphics/Path;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpRectF:Landroid/graphics/RectF;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance p2, Landroid/graphics/Outline;

    .line 20
    .line 21
    invoke-direct {p2}, Landroid/graphics/Outline;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    .line 25
    .line 26
    new-instance p2, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    new-instance p2, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpRectF:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance p2, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mItemMargin:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const v0, 0x7f060166

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const v0, 0x7f07038e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    int-to-float p2, p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const p2, 0x7f070386

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButtonSize:I

    .line 95
    .line 96
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_OPEN_ALL_APPS:Z

    .line 97
    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    .line 115
    .line 116
    :goto_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpRectF:Landroid/graphics/RectF;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpRectF:Landroid/graphics/RectF;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Outline;->getRadius()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/graphics/Outline;->getRadius()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0a041b

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButton:Landroid/widget/ImageView;

    .line 18
    .line 19
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_OPEN_ALL_APPS:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0a0419

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButton:Landroid/widget/ImageView;

    .line 41
    .line 42
    return-void
.end method
