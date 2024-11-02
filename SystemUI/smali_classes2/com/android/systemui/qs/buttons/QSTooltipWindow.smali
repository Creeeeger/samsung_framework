.class public final Lcom/android/systemui/qs/buttons/QSTooltipWindow;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;


# instance fields
.field public final handler:Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mTipWindow:Landroid/widget/PopupWindow;

.field public mToolTipString:I

.field public final mTooltipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;-><init>(Lcom/android/systemui/qs/buttons/QSTooltipWindow;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->handler:Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Landroid/widget/PopupWindow;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

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
    iput-object v1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContentView:Landroid/view/View;

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
    iput-object v2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTooltipText:Landroid/widget/TextView;

    .line 48
    .line 49
    const/4 p0, -0x2

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const p1, 0x7f070bf9

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x3

    .line 85
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final hideToolTip()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->isTooltipShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final isTooltipShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final showToolTip(Landroid/view/View;I)V
    .locals 9

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mToolTipString:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mToolTipString:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTooltipText:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f060938

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f080f85

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    new-array v2, v1, [I

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Landroid/graphics/Rect;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aget v5, v2, v4

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    aget v7, v2, v6

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    add-int/2addr v8, v5

    .line 65
    aget v2, v2, v6

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    add-int/2addr v6, v2

    .line 72
    invoke-direct {v3, v5, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .line 74
    .line 75
    const/4 v2, -0x2

    .line 76
    iget-object v5, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContentView:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const v2, 0x7f070c46

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    div-int/2addr v2, v1

    .line 101
    sub-int/2addr v5, v2

    .line 102
    sub-int/2addr v5, p2

    .line 103
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    div-int/2addr v3, v1

    .line 110
    sub-int/2addr v2, v3

    .line 111
    div-int/2addr p2, v1

    .line 112
    add-int/2addr p2, v2

    .line 113
    invoke-virtual {v0, p1, v4, v5, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->handler:Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

    .line 117
    .line 118
    const/16 p1, 0x64

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    .line 122
    .line 123
    const-wide/16 v0, 0xfa0

    .line 124
    .line 125
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    .line 127
    .line 128
    return-void
.end method
