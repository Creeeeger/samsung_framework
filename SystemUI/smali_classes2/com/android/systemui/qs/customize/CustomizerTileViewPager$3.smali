.class public final Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

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
    invoke-virtual {p3, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 11
    .line 12
    .line 13
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicatorPosition:F

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    sub-int p1, v0, p1

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 43
    .line 44
    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 45
    .line 46
    if-le v2, p1, :cond_2

    .line 47
    .line 48
    const/16 v3, 0xcb

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v3, 0xcc

    .line 52
    .line 53
    :goto_0
    iput v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 56
    .line 57
    iput-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 58
    .line 59
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;I)V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 63
    .line 64
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void
.end method
