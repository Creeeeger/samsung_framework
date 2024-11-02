.class public final Lcom/android/systemui/qp/ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public mBrightnessButton:Landroid/widget/ImageView;

.field public mFlashLightButton:Landroid/widget/ImageView;

.field public subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qp/RTLViewPager;

    .line 2
    .line 3
    check-cast p3, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getCount()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq p2, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p2, 0x7f0d0263

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const p2, 0x7f0a01ac

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mBrightnessButton:Landroid/widget/ImageView;

    .line 32
    .line 33
    new-instance v0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/ViewPagerAdapter;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mBrightnessButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    new-instance v0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f0a03fc

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/widget/ImageView;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mFlashLightButton:Landroid/widget/ImageView;

    .line 61
    .line 62
    new-instance v0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/ViewPagerAdapter;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mFlashLightButton:Landroid/widget/ImageView;

    .line 71
    .line 72
    new-instance p2, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {p2, v3}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    .line 79
    .line 80
    check-cast p1, Lcom/android/systemui/qp/RTLViewPager;

    .line 81
    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const p0, 0x7f0d0262

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast p1, Lcom/android/systemui/qp/RTLViewPager;

    .line 94
    .line 95
    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object v2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method
