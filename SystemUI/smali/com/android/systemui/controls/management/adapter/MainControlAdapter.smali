.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final controlViewHolders:Ljava/util/Map;


# instance fields
.field public final appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final buttonClickCallback:Landroid/view/View$OnClickListener;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final currentUserId:I

.field public final customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

.field public final itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

.field public models:Ljava/util/List;

.field public final panelUpdatedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;

.field public final positionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public final spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

.field public final spanSizeLookup:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;

.field public final spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

.field public final spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public uid:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/util/ControlsRuneWrapper;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;",
            "Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->context:Landroid/content/Context;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    move-object/from16 v2, p3

    .line 4
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v2, p4

    .line 5
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v2, p5

    .line 6
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-object/from16 v2, p6

    .line 7
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    move-object/from16 v2, p7

    .line 8
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    move-object/from16 v2, p8

    .line 9
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    move-object/from16 v2, p10

    .line 10
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    move-object/from16 v3, p11

    .line 11
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->positionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;

    move-object/from16 v3, p12

    .line 12
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->panelUpdatedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;

    move-object/from16 v3, p13

    .line 13
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    move-object/from16 v3, p14

    .line 14
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    move-object/from16 v3, p15

    .line 15
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->buttonClickCallback:Landroid/view/View$OnClickListener;

    move-object/from16 v3, p16

    .line 16
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v3, p17

    .line 17
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    move-object/from16 v3, p18

    .line 18
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object/from16 v3, p19

    .line 19
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    move/from16 v3, p20

    .line 20
    iput v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->currentUserId:I

    .line 21
    new-instance v3, Lcom/android/systemui/controls/ui/util/SpanManager;

    move-object/from16 v4, p9

    invoke-direct {v3, v4}, Lcom/android/systemui/controls/ui/util/SpanManager;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V

    .line 22
    iget-object v4, v3, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 v5, 0x0

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/ui/util/SpanInfo;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v7, v5, v5, v8, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 25
    sget-boolean v10, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    const v11, 0x7f0701f7

    const v12, 0x7f0701f6

    if-eqz v10, :cond_0

    .line 26
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :goto_0
    const/4 v14, 0x2

    .line 29
    invoke-direct {v7, v13, v5, v14, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-eqz v10, :cond_1

    .line 31
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 34
    :goto_1
    invoke-direct {v7, v1, v5, v14, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v2, v5, v5, v8, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-direct {v2, v5, v5, v8, v9}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iput-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    const/4 v1, -0x1

    .line 38
    iput v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    .line 39
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 40
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 41
    new-instance v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;-><init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;

    .line 42
    new-instance v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

    return-void
.end method


# virtual methods
.method public final attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v1, v1, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;

    .line 22
    .line 23
    iput-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;-><init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    aget p0, p1, p0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    if-eq p0, p1, :cond_3

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p0, p1, :cond_2

    .line 27
    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x4

    .line 31
    if-eq p0, p1, :cond_3

    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 38
    .line 39
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p1, v0

    .line 46
    :cond_3
    :goto_0
    return p1
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/Holder;->bindData(Lcom/android/systemui/controls/management/model/MainModel;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5

    .line 3
    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_6

    .line 6
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    if-ne v3, v4, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 9
    instance-of v0, p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    if-eqz v0, :cond_5

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/MainModel;

    .line 11
    iget-boolean v3, v3, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    .line 12
    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/management/adapter/ControlHolder;->updateDimStatus(Z)V

    .line 13
    :cond_5
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 14
    :cond_6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 15
    sget-object v3, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    if-eq v0, v3, :cond_8

    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v2

    :goto_5
    if-eqz v1, :cond_a

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_a
    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    sget-object v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 19
    .line 20
    iget-object v6, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 23
    .line 24
    iget-object v8, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    if-eq v2, v9, :cond_3

    .line 28
    .line 29
    const/4 v10, 0x3

    .line 30
    if-eq v2, v10, :cond_2

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    if-eq v2, v5, :cond_1

    .line 34
    .line 35
    const/4 v5, 0x5

    .line 36
    if-ne v2, v5, :cond_0

    .line 37
    .line 38
    new-instance v2, Lcom/android/systemui/controls/management/adapter/PanelHolder;

    .line 39
    .line 40
    const v5, 0x7f0d00a5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->panelUpdatedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;

    .line 48
    .line 49
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/controls/management/adapter/PanelHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "Wrong viewType: "

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_1
    new-instance v8, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;

    .line 67
    .line 68
    const v2, 0x7f0d00aa

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    .line 76
    .line 77
    iget-object v5, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    .line 78
    .line 79
    iget-object v6, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->buttonClickCallback:Landroid/view/View$OnClickListener;

    .line 80
    .line 81
    iget-object v7, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 82
    .line 83
    move-object v2, v8

    .line 84
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_2
    const v2, 0x7f0d00a7

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const v2, 0x7f0a0a6e

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/view/ViewStub;

    .line 104
    .line 105
    const v3, 0x7f0d00ac

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    new-instance v2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 115
    .line 116
    move-object v11, v1

    .line 117
    check-cast v11, Landroid/view/ViewGroup;

    .line 118
    .line 119
    iget-object v12, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 120
    .line 121
    iget-object v13, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 122
    .line 123
    iget-object v14, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 124
    .line 125
    iget-object v15, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 126
    .line 127
    iget-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 128
    .line 129
    iget v4, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    .line 130
    .line 131
    iget v0, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->currentUserId:I

    .line 132
    .line 133
    move-object v10, v2

    .line 134
    move-object/from16 v16, v3

    .line 135
    .line 136
    move/from16 v17, v4

    .line 137
    .line 138
    move/from16 v18, v0

    .line 139
    .line 140
    invoke-direct/range {v10 .. v18}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v8, v7, v9, v6}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->initialize(Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;ILcom/android/systemui/controls/util/ControlsRuneWrapper;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    .line 151
    .line 152
    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/controls/management/adapter/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const v2, 0x7f0d008f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 164
    .line 165
    move-object v10, v1

    .line 166
    check-cast v10, Landroid/view/ViewGroup;

    .line 167
    .line 168
    iget-object v11, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 169
    .line 170
    iget-object v12, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 171
    .line 172
    iget-object v13, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 173
    .line 174
    iget-object v14, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 175
    .line 176
    iget-object v15, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 177
    .line 178
    iget v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    .line 179
    .line 180
    iget v0, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->currentUserId:I

    .line 181
    .line 182
    move-object v9, v2

    .line 183
    move/from16 v16, v3

    .line 184
    .line 185
    move/from16 v17, v0

    .line 186
    .line 187
    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v8, v7, v4, v6}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->initialize(Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;ILcom/android/systemui/controls/util/ControlsRuneWrapper;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    .line 198
    .line 199
    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/controls/management/adapter/ControlHolder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V

    .line 200
    .line 201
    .line 202
    :goto_0
    move-object v2, v0

    .line 203
    goto :goto_1

    .line 204
    :cond_4
    new-instance v2, Lcom/android/systemui/controls/management/adapter/StructureHolder;

    .line 205
    .line 206
    const v0, 0x7f0d0092

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-direct {v2, v0}, Lcom/android/systemui/controls/management/adapter/StructureHolder;-><init>(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    return-object v2
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/adapter/Holder;

    .line 2
    .line 3
    instance-of v0, p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    check-cast p1, Lcom/android/systemui/controls/management/adapter/ControlHolder;

    .line 14
    .line 15
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v1

    .line 24
    :goto_0
    if-le v0, v3, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 31
    .line 32
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/ControlHolder;->updateDimStatus(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
