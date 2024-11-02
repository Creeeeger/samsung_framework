.class public final Lcom/android/systemui/shade/SecQuickSettingsController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public barState:I

.field public final blurController:Lcom/android/systemui/blur/SecQpBlurController;

.field public final calculateBottomPositionFunction:Ljava/util/function/Function;

.field public final calculateTopClippingBoundFunction:Ljava/util/function/Function;

.field public canScrollDown:Z

.field public canScrollUp:Z

.field public final computeExpansionFractionSupplier:Ljava/util/function/DoubleSupplier;

.field public final edgePositionSupplier:Ljava/util/function/DoubleSupplier;

.field public final enableClippingSupplier:Ljava/util/function/BooleanSupplier;

.field public final expandImmediateSupplier:Ljava/util/function/BooleanSupplier;

.field public final expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

.field public final expansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public heightAnimatingSupplier:Ljava/util/function/BooleanSupplier;

.field public isBackGestureAllowed:Z

.field public lastDisplayTopInset:I

.field public lastNavigationBarBottomHeight:I

.field public final logBuilder:Ljava/lang/StringBuilder;

.field public final logProvider:Lcom/android/systemui/shade/SecQuickSettingsController$logProvider$1;

.field public final maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final mediaTouchHelper:Lcom/android/systemui/shade/SecQsMediaTouchHelper;

.field public final minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsController$modeChangedListener$1;

.field public naviBarGestureMode:I

.field public final navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public openedByTwoFingerDragging:Z

.field public final panelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

.field public final panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public final panelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public final panelViewControllerLazy:Ldagger/Lazy;

.field public final qSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

.field public qsContainerImpl:Lcom/android/systemui/qs/QSContainerImpl;

.field public final qsFrameLayoutSupplier:Ljava/util/function/Supplier;

.field public qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public final qsSupplier:Ljava/util/function/Supplier;

.field public quickQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public final tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

.field public final touchAboveFalsingThresholdConsumer:Ljava/util/function/Consumer;

.field public final trackingRunnable:Ljava/lang/Runnable;

.field public final updateInitialHeightOnTouchRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecQuickSettingsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/blur/SecQpBlurController;Ljava/lang/Runnable;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/DoubleSupplier;Landroid/content/Context;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/ShadeHeaderController;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/media/SecMediaHost;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/log/SecPanelLogger;Ldagger/Lazy;Ljava/util/function/IntConsumer;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Supplier;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/blur/SecQpBlurController;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/DoubleSupplier;",
            "Landroid/content/Context;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;",
            "Lcom/android/systemui/log/SecPanelLogger;",
            "Ldagger/Lazy;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->blurController:Lcom/android/systemui/blur/SecQpBlurController;

    move-object/from16 v2, p4

    .line 4
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->calculateBottomPositionFunction:Ljava/util/function/Function;

    move-object/from16 v2, p5

    .line 5
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->calculateTopClippingBoundFunction:Ljava/util/function/Function;

    move-object/from16 v2, p6

    .line 6
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->computeExpansionFractionSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v2, p9

    .line 7
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->edgePositionSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v2, p10

    .line 8
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->enableClippingSupplier:Ljava/util/function/BooleanSupplier;

    move-object/from16 v2, p12

    .line 9
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->expandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    move-object/from16 v2, p13

    .line 10
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->expansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v2, p22

    .line 11
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v2, p24

    .line 12
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v2, p25

    .line 13
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    move-object/from16 v2, p26

    .line 14
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v15, p27

    .line 15
    iput-object v15, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v2, p28

    .line 16
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    move-object/from16 v2, p29

    .line 17
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->panelLogger:Lcom/android/systemui/log/SecPanelLogger;

    move-object/from16 v14, p30

    .line 18
    iput-object v14, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->panelViewControllerLazy:Ldagger/Lazy;

    move-object/from16 v13, p33

    .line 19
    iput-object v13, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    move-object/from16 v2, p34

    .line 20
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->qSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    move-object/from16 v12, p35

    .line 21
    iput-object v12, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsSupplier:Ljava/util/function/Supplier;

    move-object/from16 v2, p36

    .line 22
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->touchAboveFalsingThresholdConsumer:Ljava/util/function/Consumer;

    move-object/from16 v2, p40

    .line 23
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->trackingRunnable:Ljava/lang/Runnable;

    move-object/from16 v2, p41

    .line 24
    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->updateInitialHeightOnTouchRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->logBuilder:Ljava/lang/StringBuilder;

    .line 26
    new-instance v2, Lcom/android/systemui/shade/SecQuickSettingsController$logProvider$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/SecQuickSettingsController$logProvider$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsController;)V

    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->logProvider:Lcom/android/systemui/shade/SecQuickSettingsController$logProvider$1;

    .line 27
    new-instance v2, Lcom/android/systemui/shade/SecQuickSettingsController$modeChangedListener$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/SecQuickSettingsController$modeChangedListener$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsController;)V

    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsController$modeChangedListener$1;

    .line 28
    const-class v2, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->panelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 29
    new-instance v2, Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    move-object/from16 v11, p32

    invoke-direct {v2, v1, v11}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;-><init>(Landroid/content/Context;Ljava/util/function/BooleanSupplier;)V

    iput-object v2, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 30
    new-instance v10, Lcom/android/systemui/shade/SecQsMediaTouchHelper;

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object v1, v10

    move-object/from16 v10, p23

    move-object/from16 v11, p27

    move-object/from16 v12, p32

    move-object/from16 v13, p35

    move-object/from16 v14, p37

    move-object/from16 v15, p38

    move-object/from16 v16, p39

    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;-><init>(Ljava/lang/Runnable;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;)V

    iput-object v1, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->mediaTouchHelper:Lcom/android/systemui/shade/SecQsMediaTouchHelper;

    .line 31
    new-instance v12, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    .line 32
    new-instance v7, Lcom/android/systemui/shade/SecQuickSettingsController$1;

    move-object/from16 v1, p7

    invoke-direct {v7, v1}, Lcom/android/systemui/shade/SecQuickSettingsController$1;-><init>(Landroid/content/Context;)V

    move-object v1, v12

    move-object/from16 v2, p11

    move-object/from16 v3, p14

    move-object/from16 v4, p20

    move-object/from16 v5, p21

    move-object/from16 v6, p27

    move-object/from16 v8, p31

    move-object/from16 v9, p33

    move-object/from16 v10, p42

    move-object/from16 v11, p30

    .line 33
    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;-><init>(Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/ShadeHeaderController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ldagger/Lazy;)V

    iput-object v12, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    return-void
.end method


# virtual methods
.method public final updateScrollableDirection(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->canScrollUp:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->canScrollDown:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v2, v1, :cond_1

    .line 19
    .line 20
    move v2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v2, v0

    .line 23
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->canScrollUp:Z

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v1, :cond_2

    .line 31
    .line 32
    move v0, v1

    .line 33
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->canScrollDown:Z

    .line 34
    .line 35
    :cond_3
    return-void
.end method
