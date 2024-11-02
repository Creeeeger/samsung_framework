.class public final Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageScrolled(FII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    int-to-float p2, p2

    .line 9
    add-float/2addr p2, p1

    .line 10
    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicatorPosition:F

    .line 11
    .line 12
    invoke-virtual {p3, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    .line 1
    return-void
.end method
