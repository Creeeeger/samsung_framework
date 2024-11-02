.class public final Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DropZoneView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mContainerMargin:[F

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aget v3, v2, v3

    .line 19
    .line 20
    iget v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    .line 21
    .line 22
    mul-float/2addr v3, v0

    .line 23
    const/4 v4, 0x1

    .line 24
    aget v2, v2, v4

    .line 25
    .line 26
    mul-float/2addr v0, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 33
    .line 34
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/DropZoneView;->mContainerMargin:[F

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    aget v5, v5, v6

    .line 38
    .line 39
    iget v4, v4, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    .line 40
    .line 41
    mul-float/2addr v5, v4

    .line 42
    sub-float v4, v2, v5

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 50
    .line 51
    iget-object v6, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mContainerMargin:[F

    .line 52
    .line 53
    const/4 v7, 0x3

    .line 54
    aget v6, v6, v7

    .line 55
    .line 56
    iget v7, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    .line 57
    .line 58
    mul-float/2addr v6, v7

    .line 59
    sub-float/2addr v2, v6

    .line 60
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    sub-float v5, v2, v5

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 72
    .line 73
    iget v6, v2, Lcom/android/wm/shell/draganddrop/DropZoneView;->mCornerRadius:F

    .line 74
    .line 75
    iget v2, v2, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    .line 76
    .line 77
    mul-float v7, v6, v2

    .line 78
    .line 79
    mul-float v8, v6, v2

    .line 80
    .line 81
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 82
    .line 83
    move v2, v3

    .line 84
    move v3, v0

    .line 85
    move v6, v7

    .line 86
    move v7, v8

    .line 87
    move-object v8, v9

    .line 88
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    .line 94
    .line 95
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 108
    .line 109
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginColor:I

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
