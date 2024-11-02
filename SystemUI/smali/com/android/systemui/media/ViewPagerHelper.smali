.class public final Lcom/android/systemui/media/ViewPagerHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

.field public final isRTLSupplier:Ljava/util/function/IntSupplier;

.field public final mediaFramesSupplier:Ljava/util/function/Supplier;

.field public final mediaPlayerDataFunction:Ljava/util/function/Function;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/ViewPagerHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/ViewPagerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Boolean;",
            "Lcom/android/systemui/media/MediaType;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/media/MediaType;",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/media/MediaType;",
            "Lcom/android/systemui/media/SecMediaPlayerData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/ViewPagerHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/ViewPagerHelper;->mediaFramesSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getCurrentPage(Lcom/android/systemui/media/MediaType;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v2, v1, :cond_0

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sub-int/2addr p0, v1

    .line 26
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sub-int/2addr p0, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :goto_1
    move v1, p0

    .line 37
    :cond_2
    return v1
.end method

.method public final getPlayersCount(Lcom/android/systemui/media/MediaType;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {p0, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper;->mediaFramesSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/view/View;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const p1, 0x7f0a099c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    move-object v1, p0

    .line 33
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 34
    .line 35
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final setCurrentPage(IZLcom/android/systemui/media/MediaType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, v3

    .line 21
    sub-int p1, v1, p1

    .line 22
    .line 23
    :cond_1
    if-lt p1, v3, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v1, v3

    .line 30
    if-lt p1, v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_6

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne p1, v3, :cond_4

    .line 48
    .line 49
    move v2, v3

    .line 50
    :cond_4
    if-eqz v2, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/lit8 p0, p0, -0x2

    .line 63
    .line 64
    invoke-virtual {p1, p0, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0, v3, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 75
    .line 76
    .line 77
    :cond_6
    :goto_2
    return-void
.end method
