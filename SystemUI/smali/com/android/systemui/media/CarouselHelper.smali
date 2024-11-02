.class public final Lcom/android/systemui/media/CarouselHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final contextSupplier:Ljava/util/function/Supplier;

.field public final getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

.field public final indicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public final isRTLSupplier:Ljava/util/function/IntSupplier;

.field public final logger:Lcom/android/systemui/log/MediaLogger;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mediaPlayerDataFunction:Ljava/util/function/Function;

.field public final onBarHeightChangedRunnable:Ljava/lang/Runnable;

.field public final onMediaVisibilityChangedConsumer:Ljava/util/function/Consumer;

.field public pageIndicatorPosition:F

.field public final playerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

.field public final playerSupplier:Ljava/util/function/Supplier;

.field public final removePlayerConsumer:Ljava/util/function/BiConsumer;

.field public final setCurrentPageConsumer:Ljava/util/function/BiConsumer;

.field public shouldSwipeBack:Z

.field public final type:Lcom/android/systemui/media/MediaType;

.field public final updatePlayersSupplier:Ljava/util/function/BooleanSupplier;

.field public final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/CarouselHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/CarouselHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/util/function/Supplier;Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Lcom/android/systemui/log/MediaLogger;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/util/function/Function;Ljava/lang/Runnable;Ljava/util/function/Consumer;Lcom/android/systemui/media/MediaPlayerBarExpandHelper;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/systemui/media/MediaType;Ljava/util/function/BooleanSupplier;Landroidx/viewpager/widget/ViewPager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Boolean;",
            "Lcom/android/systemui/media/MediaType;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Lcom/android/systemui/log/MediaLogger;",
            "Lcom/android/systemui/media/controls/pipeline/MediaDataManager;",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/media/MediaType;",
            "Lcom/android/systemui/media/SecMediaPlayerData;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/media/MediaPlayerBarExpandHelper;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaType;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/media/MediaType;",
            ">;",
            "Lcom/android/systemui/media/MediaType;",
            "Ljava/util/function/BooleanSupplier;",
            "Landroidx/viewpager/widget/ViewPager;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p17

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    move-object v2, p3

    .line 8
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    move-object v2, p4

    .line 11
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 12
    .line 13
    move-object v2, p5

    .line 14
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 15
    .line 16
    move-object v2, p6

    .line 17
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->logger:Lcom/android/systemui/log/MediaLogger;

    .line 18
    .line 19
    move-object v2, p7

    .line 20
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 21
    .line 22
    move-object v2, p8

    .line 23
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 24
    .line 25
    move-object v2, p9

    .line 26
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->onBarHeightChangedRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    move-object v2, p10

    .line 29
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->onMediaVisibilityChangedConsumer:Ljava/util/function/Consumer;

    .line 30
    .line 31
    move-object v2, p11

    .line 32
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->playerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 33
    .line 34
    move-object v2, p12

    .line 35
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->playerSupplier:Ljava/util/function/Supplier;

    .line 36
    .line 37
    move-object/from16 v2, p13

    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->removePlayerConsumer:Ljava/util/function/BiConsumer;

    .line 40
    .line 41
    move-object/from16 v2, p14

    .line 42
    .line 43
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->setCurrentPageConsumer:Ljava/util/function/BiConsumer;

    .line 44
    .line 45
    move-object/from16 v2, p15

    .line 46
    .line 47
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 48
    .line 49
    move-object/from16 v2, p16

    .line 50
    .line 51
    iput-object v2, v0, Lcom/android/systemui/media/CarouselHelper;->updatePlayersSupplier:Ljava/util/function/BooleanSupplier;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/systemui/media/CarouselHelper;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 54
    .line 55
    new-instance v2, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;-><init>(Lcom/android/systemui/media/CarouselHelper;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 61
    .line 62
    .line 63
    move v2, p2

    .line 64
    invoke-virtual {v1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 65
    .line 66
    .line 67
    const v1, 0x7f0a099f

    .line 68
    .line 69
    .line 70
    move-object v2, p1

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/android/systemui/qs/SecPageIndicator;

    .line 76
    .line 77
    iget v2, v0, Lcom/android/systemui/media/CarouselHelper;->pageIndicatorPosition:F

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/systemui/qs/SecPageIndicator;->setSecIndicatorColorResId()V

    .line 83
    .line 84
    .line 85
    iput-object v1, v0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static final addOrUpdateSentinels$addSentinel(Lcom/android/systemui/media/CarouselHelper;)Lcom/android/systemui/media/SecMediaControlPanel;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/CarouselHelper;->playerSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v2, p0, v4, v3}, Lcom/android/systemui/media/SecPlayerViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/android/systemui/media/MediaType;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static final addOrUpdateSentinels$updateSentinel(Lcom/android/systemui/media/SecMediaPlayerData;Lcom/android/systemui/media/SecMediaControlPanel;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object p0, p2

    .line 42
    :goto_1
    if-nez p0, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    const/4 p0, 0x1

    .line 49
    iput-boolean p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final removeSentinels(Lcom/android/systemui/media/SecMediaPlayerData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/systemui/media/SecMediaPlayerData;->firstPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->removePlayerConsumer:Ljava/util/function/BiConsumer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v0, "first_page"

    .line 17
    .line 18
    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/media/SecMediaPlayerData;->lastPageView:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string p1, "last_page"

    .line 33
    .line 34
    invoke-interface {p0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final updatePageIndicatorNumberPages()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final updatePageIndicatorVisibility()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-le v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x8

    .line 23
    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
