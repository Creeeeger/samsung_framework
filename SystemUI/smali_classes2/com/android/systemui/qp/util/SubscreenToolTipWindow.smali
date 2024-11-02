.class public final Lcom/android/systemui/qp/util/SubscreenToolTipWindow;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final handler:Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mTipWindow:Landroid/widget/PopupWindow;

.field public final mToolTipString:I

.field public final mTooltipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;-><init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->handler:Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Landroid/widget/PopupWindow;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    const-string v1, "layout_inflater"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/LayoutInflater;

    .line 27
    .line 28
    const v2, 0x7f0d038d

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContentView:Landroid/view/View;

    .line 37
    .line 38
    const v2, 0x7f0a0bf6

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTooltipText:Landroid/widget/TextView;

    .line 48
    .line 49
    iput p2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mToolTipString:I

    .line 50
    .line 51
    const/4 p0, -0x2

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const p1, 0x7f070bf9

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x3

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final showToolTip(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mToolTipString:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTooltipText:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f060938

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f080f85

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    new-array v3, v2, [I

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Landroid/graphics/Rect;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    aget v6, v3, v5

    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    aget v8, v3, v7

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    add-int/2addr v9, v6

    .line 63
    aget v3, v3, v7

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    add-int/2addr v7, v3

    .line 70
    invoke-direct {v4, v6, v8, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .line 72
    .line 73
    const/4 v3, -0x2

    .line 74
    iget-object v6, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContentView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v6, v3, v3}, Landroid/view/View;->measure(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v3, 0x7f070c46

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    div-int/2addr v3, v2

    .line 99
    sub-int/2addr v6, v3

    .line 100
    sub-int/2addr v6, v0

    .line 101
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    div-int/2addr v4, v2

    .line 108
    sub-int/2addr v3, v4

    .line 109
    div-int/2addr v0, v2

    .line 110
    add-int/2addr v0, v3

    .line 111
    invoke-virtual {v1, p1, v5, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->handler:Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

    .line 115
    .line 116
    const/16 p1, 0x64

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    .line 120
    .line 121
    const-wide/16 v0, 0xfa0

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method
