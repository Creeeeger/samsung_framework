.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlsUiController;
.implements Lcom/android/systemui/controls/ui/CustomControlsUiController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activityContext:Landroid/content/Context;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public adapterNeedToUpdateDataSet:Z

.field public allComponentInfo:Ljava/util/List;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsController:Ldagger/Lazy;

.field public final controlsListingController:Ldagger/Lazy;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final controlsPanelCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;

.field public final controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

.field public final customControlsController:Ldagger/Lazy;

.field public final customSelectedComponentRepository:Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;

.field public fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public hidden:Z

.field public isChanged:Z

.field public isShowOverLockscreenWhenLocked:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public launchingPendingIntent:Landroid/app/PendingIntent;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

.field public final localeComparator:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$special$$inlined$compareBy$1;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

.field public final models:Ljava/util/List;

.field public noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

.field public noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

.field public onDismiss:Ljava/lang/Runnable;

.field public final openAppButtonClickListener:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;

.field public parent:Landroid/view/ViewGroup;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public final selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

.field public selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

.field public serviceInfos:Ljava/util/List;

.field public final sharedPreferences:Landroid/content/SharedPreferences;

.field public final spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

.field public final spinnerTouchCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

.field public taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

.field public final taskViewFactory:Ljava/util/Optional;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public verificationStructureInfos:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Ljava/util/Optional;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;Lcom/android/systemui/dump/DumpManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;",
            ">;",
            "Lcom/android/systemui/controls/settings/ControlsSettingsRepository;",
            "Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;",
            "Lcom/android/systemui/controls/panels/SelectedComponentRepository;",
            "Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v2, p5

    .line 6
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v2, p6

    .line 7
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    move-object v2, p7

    .line 8
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-object v2, p9

    .line 10
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    move-object v2, p10

    .line 11
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    move-object/from16 v2, p11

    .line 12
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    move-object/from16 v2, p12

    .line 13
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    move-object/from16 v2, p13

    .line 14
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    move-object/from16 v2, p14

    .line 15
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v2, p16

    .line 17
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    move-object/from16 v2, p17

    .line 18
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    move-object/from16 v2, p18

    .line 19
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object/from16 v2, p19

    .line 20
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    move-object/from16 v2, p20

    .line 21
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v2, p21

    .line 22
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p22

    .line 23
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p23

    .line 24
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    move-object/from16 v2, p24

    .line 25
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    move-object/from16 v2, p25

    .line 26
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    move-object/from16 v2, p26

    .line 27
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    move-object/from16 v2, p27

    .line 28
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customSelectedComponentRepository:Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;

    .line 29
    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 31
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 32
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    .line 33
    new-instance v3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$special$$inlined$compareBy$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    iput-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->localeComparator:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$special$$inlined$compareBy$1;

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hidden:Z

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 36
    new-instance v1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v4, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 38
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/controls/management/model/MainComponentModel;-><init>(Ljava/util/List;Landroid/content/ComponentName;Z)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 41
    const-class v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p28

    invoke-static {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 42
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    .line 43
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsPanelCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;

    .line 44
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->openAppButtonClickListener:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;

    .line 45
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    .line 46
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    return-void
.end method

.method public static final access$getComponent(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 41
    .line 42
    return-object v0
.end method

.method public static final access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_17

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 23
    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    check-cast v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    instance-of v7, v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    move-object v7, v6

    .line 73
    check-cast v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 74
    .line 75
    iget-object v7, v7, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v9, 0x1

    .line 98
    if-eqz v6, :cond_7

    .line 99
    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    move-object v10, v6

    .line 105
    check-cast v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 106
    .line 107
    invoke-virtual {v10}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    sget-object v11, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 112
    .line 113
    if-ne v10, v11, :cond_6

    .line 114
    .line 115
    move v10, v9

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    move v10, v8

    .line 118
    :goto_3
    if-eqz v10, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    move-object v6, v7

    .line 122
    :goto_4
    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 123
    .line 124
    new-instance v4, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    :cond_8
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_a

    .line 138
    .line 139
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    move-object v12, v11

    .line 144
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 145
    .line 146
    invoke-virtual {v12}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    sget-object v13, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 151
    .line 152
    if-ne v12, v13, :cond_9

    .line 153
    .line 154
    move v12, v9

    .line 155
    goto :goto_6

    .line 156
    :cond_9
    move v12, v8

    .line 157
    :goto_6
    if-eqz v12, :cond_8

    .line 158
    .line 159
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    :cond_b
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_d

    .line 177
    .line 178
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    move-object v12, v11

    .line 183
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 184
    .line 185
    invoke-virtual {v12}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    sget-object v13, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 190
    .line 191
    if-ne v12, v13, :cond_c

    .line 192
    .line 193
    move v12, v9

    .line 194
    goto :goto_8

    .line 195
    :cond_c
    move v12, v8

    .line 196
    :goto_8
    if-eqz v12, :cond_b

    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_d
    const-string v5, "CustomControlsUiControllerImpl"

    .line 203
    .line 204
    iget-object v11, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 205
    .line 206
    if-nez v6, :cond_15

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    xor-int/2addr v12, v9

    .line 213
    if-nez v12, :cond_e

    .line 214
    .line 215
    sget-boolean v12, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 216
    .line 217
    if-eqz v12, :cond_15

    .line 218
    .line 219
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    xor-int/2addr v12, v9

    .line 224
    if-eqz v12, :cond_15

    .line 225
    .line 226
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    xor-int/2addr v9, v12

    .line 231
    if-eqz v9, :cond_f

    .line 232
    .line 233
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    goto :goto_9

    .line 242
    :cond_f
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    :goto_9
    new-instance v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 251
    .line 252
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    const/4 v14, 0x0

    .line 257
    const/4 v15, 0x0

    .line 258
    const/16 v16, 0x4

    .line 259
    .line 260
    const/16 v17, 0x0

    .line 261
    .line 262
    move-object v12, v9

    .line 263
    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iget-object v9, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 270
    .line 271
    if-eqz v9, :cond_10

    .line 272
    .line 273
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 274
    .line 275
    .line 276
    :cond_10
    new-instance v9, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    :cond_11
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    if-eqz v13, :cond_12

    .line 290
    .line 291
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    instance-of v14, v13, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 296
    .line 297
    if-eqz v14, :cond_11

    .line 298
    .line 299
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_12
    new-instance v12, Ljava/util/ArrayList;

    .line 304
    .line 305
    const/16 v13, 0xa

    .line 306
    .line 307
    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 308
    .line 309
    .line 310
    move-result v13

    .line 311
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    if-eqz v13, :cond_14

    .line 323
    .line 324
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    check-cast v13, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 329
    .line 330
    iget-object v13, v13, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 331
    .line 332
    if-eqz v13, :cond_13

    .line 333
    .line 334
    iget-object v13, v13, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 335
    .line 336
    if-eqz v13, :cond_13

    .line 337
    .line 338
    iget-object v13, v13, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_13
    move-object v13, v7

    .line 342
    :goto_c
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v9, "listAdjustmentIfNeeded-notifyItemInserted: structureName="

    .line 349
    .line 350
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v9, ", index="

    .line 357
    .line 358
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v8, ", models="

    .line 365
    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    invoke-virtual {v11, v5, v7}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_15
    if-eqz v6, :cond_0

    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_0

    .line 386
    .line 387
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 388
    .line 389
    if-eqz v4, :cond_0

    .line 390
    .line 391
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-eqz v4, :cond_0

    .line 396
    .line 397
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 405
    .line 406
    if-eqz v3, :cond_16

    .line 407
    .line 408
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 409
    .line 410
    .line 411
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v4, "listAdjustmentIfNeeded-notifyItemRemoved: structureName="

    .line 414
    .line 415
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v11, v5, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :cond_17
    return-void
.end method

.method public static final access$reload(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectedItem;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hidden:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 8
    .line 9
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 25
    .line 26
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v0, "TaskViewTaskController"

    .line 44
    .line 45
    const-string v1, "Trying to remove a task that was never added? (no taskToken)"

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 66
    .line 67
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 72
    .line 73
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFavoritesComponent()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v2, "reload selected = "

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, ", allComponentInfo = "

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v0, "CustomControlsUiControllerImpl"

    .line 118
    .line 119
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 131
    .line 132
    .line 133
    :cond_4
    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    .line 135
    .line 136
    :cond_5
    :goto_2
    return-void
.end method

.method public static final access$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    instance-of v4, v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x1

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object v6, v3

    .line 54
    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v7, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 61
    .line 62
    if-ne v6, v7, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v4, v5

    .line 66
    :goto_2
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v6, v3

    .line 87
    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 88
    .line 89
    iget-object v6, v6, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    const/4 v3, 0x0

    .line 99
    :goto_3
    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 100
    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ne v1, v4, :cond_7

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_7
    move v4, v5

    .line 111
    :goto_4
    iget-boolean v1, v3, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    .line 112
    .line 113
    if-eq v1, v4, :cond_8

    .line 114
    .line 115
    iput-boolean v4, v3, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 118
    .line 119
    if-eqz p0, :cond_8

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 126
    .line 127
    .line 128
    :cond_8
    return-void
.end method

.method public static synthetic getAllComponentInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getFragmentManager$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getListingCallback$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "CustomControlsUiControllerImpl:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    .line 12
    .line 13
    iget-boolean p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hidden:Z

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "hidden: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v1, "selectedItem: "

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 53
    .line 54
    check-cast p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v0, "setting: "

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final getAllComponentInfo()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/MainModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPanelServiceInfos()Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_1
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public final getPreferredComponentSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customSelectedComponentRepository:Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;

    .line 16
    .line 17
    check-cast v0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->getSelectedComponent()Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->componentName:Landroid/content/ComponentName;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    :cond_1
    sget-object v2, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v2, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 35
    .line 36
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object v6, v4

    .line 52
    check-cast v6, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 53
    .line 54
    iget-object v6, v6, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move-object v4, v5

    .line 64
    :goto_0
    check-cast v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 65
    .line 66
    if-nez v4, :cond_5

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    move-object v4, p1

    .line 73
    check-cast v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 74
    .line 75
    :cond_5
    if-nez v4, :cond_6

    .line 76
    .line 77
    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_6
    if-eqz v1, :cond_7

    .line 86
    .line 87
    iget-object p1, v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->componentName:Landroid/content/ComponentName;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    move-object p1, v5

    .line 91
    :goto_1
    iget-object v2, v4, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 92
    .line 93
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_9

    .line 98
    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    iget-boolean p1, v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->isPanel:Z

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    if-ne p1, v3, :cond_8

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_8
    const/4 v3, 0x0

    .line 108
    :goto_2
    if-eqz v3, :cond_9

    .line 109
    .line 110
    new-instance p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 111
    .line 112
    iget-object p1, v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->name:Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;)V

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 127
    .line 128
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 133
    .line 134
    check-cast p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    move-object v1, p1

    .line 157
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 160
    .line 161
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_b
    move-object p1, v5

    .line 169
    :goto_3
    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 170
    .line 171
    if-eqz p1, :cond_c

    .line 172
    .line 173
    iget-object v5, p1, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 174
    .line 175
    :cond_c
    if-eqz v5, :cond_d

    .line 176
    .line 177
    new-instance p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 184
    .line 185
    .line 186
    new-instance p1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;)V

    .line 192
    .line 193
    .line 194
    return-object p0

    .line 195
    :cond_d
    new-instance p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 196
    .line 197
    if-eqz p1, :cond_e

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    goto :goto_4

    .line 204
    :cond_e
    const-string p1, ""

    .line 205
    .line 206
    :goto_4
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 210
    .line 211
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;)V

    .line 215
    .line 216
    .line 217
    return-object p0
.end method

.method public final getSpinnerItemSelectionChangedCallback()Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getPanelServiceInfos()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    new-instance p0, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 46
    .line 47
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/controls/controller/StructureInfo;->customStructureInfo:Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;

    .line 55
    .line 56
    iput-boolean v0, p1, Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;->active:Z

    .line 57
    .line 58
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 59
    .line 60
    filled-new-array {p0}, [Lcom/android/systemui/controls/controller/StructureInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 70
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    instance-of v3, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v3, v2

    .line 118
    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    sget-object v5, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 125
    .line 126
    if-eq v4, v5, :cond_7

    .line 127
    .line 128
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 129
    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 137
    .line 138
    if-ne v3, v4, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    const/4 v3, 0x0

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    :goto_3
    move v3, v0

    .line 144
    :goto_4
    if-eqz v3, :cond_5

    .line 145
    .line 146
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_a

    .line 164
    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    move-object v3, v2

    .line 170
    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 173
    .line 174
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-nez v4, :cond_9

    .line 179
    .line 180
    new-instance v4, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_9
    check-cast v4, Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    new-instance p0, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_c

    .line 212
    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    .line 219
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Ljava/util/List;

    .line 230
    .line 231
    new-instance v4, Ljava/util/ArrayList;

    .line 232
    .line 233
    const/16 v5, 0xa

    .line 234
    .line 235
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_b

    .line 251
    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 257
    .line 258
    iget-object v5, v5, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 259
    .line 260
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 264
    .line 265
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .line 273
    .line 274
    new-instance v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 275
    .line 276
    invoke-direct {v4, p1, v3, v2}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v4, Lcom/android/systemui/controls/controller/StructureInfo;->customStructureInfo:Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;

    .line 280
    .line 281
    iput-boolean v0, v2, Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;->active:Z

    .line 282
    .line 283
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_c
    return-object p0
.end method

.method public final hide(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_10

    .line 8
    .line 9
    const-string p1, "CustomControlsUiControllerImpl"

    .line 10
    .line 11
    const-string v0, "hide()"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hidden:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 25
    .line 26
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 53
    .line 54
    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 59
    .line 60
    .line 61
    :cond_0
    iput-object v1, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 62
    .line 63
    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 68
    .line 69
    .line 70
    :cond_1
    iput-object v1, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 74
    .line 75
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    sget-object v2, Lcom/android/systemui/flags/Flags;->USE_APP_PANELS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 81
    .line 82
    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 83
    .line 84
    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsSettingsDialogManager:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManager;

    .line 93
    .line 94
    check-cast v2, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->closeDialog()V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    .line 100
    .line 101
    instance-of v3, v2, Landroid/app/Activity;

    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    check-cast v2, Landroid/app/Activity;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    move-object v2, v1

    .line 109
    :goto_1
    const/4 v3, 0x0

    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_6

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move v2, v3

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    move v2, p1

    .line 128
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    goto :goto_4

    .line 133
    :cond_7
    move-object v2, v1

    .line 134
    :goto_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_8
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 146
    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-ne v2, p1, :cond_9

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_9
    move p1, v3

    .line 157
    :goto_5
    if-eqz p1, :cond_b

    .line 158
    .line 159
    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 160
    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 164
    .line 165
    .line 166
    :cond_a
    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 167
    .line 168
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 169
    .line 170
    if-eqz p1, :cond_d

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 175
    .line 176
    iget-object v0, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 177
    .line 178
    if-nez v0, :cond_c

    .line 179
    .line 180
    const-string p1, "TaskViewTaskController"

    .line 181
    .line 182
    const-string v0, "Trying to remove a task that was never added? (no taskToken)"

    .line 183
    .line 184
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_c
    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;

    .line 189
    .line 190
    const/4 v2, 0x4

    .line 191
    invoke-direct {v0, p1, v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    .line 195
    .line 196
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    :cond_d
    :goto_7
    iput-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saveFavorites(Landroid/content/ComponentName;)Z

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 211
    .line 212
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 217
    .line 218
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_e

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_e
    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 228
    .line 229
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 232
    .line 233
    .line 234
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 235
    .line 236
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 243
    .line 244
    if-eqz p0, :cond_f

    .line 245
    .line 246
    move-object v1, p0

    .line 247
    :cond_f
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_10
    return-void
.end method

.method public final isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getPanelServiceInfos()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 25
    .line 26
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 45
    .line 46
    return-object v0
.end method

.method public final loadComponentInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFavoritesComponent()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getPreferredComponentSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "loadComponentInfo() selectedItem = "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", allComponentInfo = "

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "CustomControlsUiControllerImpl"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final needToShowNonMainView()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 8
    .line 9
    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 26
    .line 27
    instance-of v3, v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectedItem;->getHasControls()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 38
    .line 39
    instance-of v1, v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFlag(Landroid/content/ComponentName;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 67
    :goto_1
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 72
    .line 73
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 86
    .line 87
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFlag(Landroid/content/ComponentName;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const-string/jumbo v4, "needToShowNonMainView "

    .line 112
    .line 113
    .line 114
    const-string v5, ", service.size = "

    .line 115
    .line 116
    const-string v6, ", selectedItem = "

    .line 117
    .line 118
    invoke-static {v4, v1, v5, v0, v6}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, ", activeFlag = "

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, ", componentName = "

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string v0, "CustomControlsUiControllerImpl"

    .line 146
    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    return v1
.end method

.method public final notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->inProgress:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 p1, 0xc8

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 18
    .line 19
    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo v0, "notifyItemChanged: "

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 31
    .line 32
    const-string v2, "CustomControlsUiControllerImpl"

    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public final resolveActivity()Ljava/lang/Class;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->loadComponentInfo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 5
    .line 6
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v1, "CustomControlsUiControllerImpl"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->needToShowNonMainView()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v0, "ControlsOOBEManageAppsCompleted"

    .line 43
    .line 44
    invoke-static {v2, v0, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iput-boolean v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    .line 51
    .line 52
    const-string/jumbo p0, "resolveActivity CustomControlsProviderSelectorActivity"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-class p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSecureLocked()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "lockscreen_show_controls"

    .line 72
    .line 73
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v2, 0x1

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    move v0, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v0, v3

    .line 83
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    .line 85
    move v3, v2

    .line 86
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    .line 87
    .line 88
    const-string/jumbo p0, "resolveActivity CustomControlsActivity isShowOverLockscreenWhenLocked = "

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v3, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-class p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;

    .line 95
    .line 96
    return-object p0
.end method

.method public final saveFavorites(Landroid/content/ComponentName;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 8
    .line 9
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFlag(Landroid/content/ComponentName;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "CustomControlsUiControllerImpl"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v0, "Skip saveFavorites component: "

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-boolean v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v4, "saveFavorites component "

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, ", structureInfos:"

    .line 66
    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 85
    .line 86
    new-instance v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 87
    .line 88
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 92
    .line 93
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    :cond_1
    return v3
.end method

.method public final unsubscribeAndUnbindIfNecessary()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "com.samsung.android.oneconnect"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "CustomControlsUiControllerImpl"

    .line 25
    .line 26
    const-string/jumbo v1, "unsubscribeAndUnbindIfNecessary"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 33
    .line 34
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 39
    .line 40
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->customBindingController:Lcom/android/systemui/controls/controller/CustomControlsBindingController;

    .line 50
    .line 51
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public final update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/ui/SelectedItem;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;",
            "Lcom/android/systemui/controls/ui/SelectedItem;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v4, :cond_4

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    move-object v7, v4

    .line 27
    check-cast v7, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 28
    .line 29
    iget-object v7, v7, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    .line 30
    .line 31
    instance-of v8, v7, Ljava/util/Collection;

    .line 32
    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_3

    .line 51
    .line 52
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 57
    .line 58
    iget-object v8, v8, Lcom/android/systemui/controls/controller/StructureInfo;->customStructureInfo:Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;

    .line 59
    .line 60
    iget-boolean v8, v8, Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;->active:Z

    .line 61
    .line 62
    if-eqz v8, :cond_2

    .line 63
    .line 64
    move v5, v6

    .line 65
    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    .line 73
    const/16 v4, 0xa

    .line 74
    .line 75
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 97
    .line 98
    iget-object v7, v7, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 99
    .line 100
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_7

    .line 118
    .line 119
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    move-object v9, v8

    .line 124
    check-cast v9, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 125
    .line 126
    iget-object v9, v9, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 127
    .line 128
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_8

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 162
    .line 163
    new-instance v13, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v4}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    iget-object v10, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 174
    .line 175
    iget-object v7, v4, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 176
    .line 177
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    .line 179
    iget v11, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 180
    .line 181
    iget-object v12, v4, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 182
    .line 183
    move-object v7, v13

    .line 184
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;ILandroid/content/ComponentName;)V

    .line 185
    .line 186
    .line 187
    sget-object v4, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object v4, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    .line 193
    .line 194
    iget-object v7, v13, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 195
    .line 196
    iget-object v8, v13, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const-string v4, "CustomControlsUiControllerImpl"

    .line 210
    .line 211
    if-eqz v2, :cond_9

    .line 212
    .line 213
    const-string v0, "filteredList is Empty"

    .line 214
    .line 215
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    const/4 v8, 0x0

    .line 228
    if-eqz v7, :cond_b

    .line 229
    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    move-object v9, v7

    .line 235
    check-cast v9, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 236
    .line 237
    iget-object v9, v9, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 238
    .line 239
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_a

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_b
    move-object v7, v8

    .line 251
    :goto_5
    check-cast v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 252
    .line 253
    if-nez v7, :cond_c

    .line 254
    .line 255
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    move-object v7, v2

    .line 260
    check-cast v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 261
    .line 262
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 263
    .line 264
    iput-object v3, v2, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    .line 265
    .line 266
    iget-object v3, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 267
    .line 268
    iput-object v3, v2, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    .line 269
    .line 270
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 271
    .line 272
    if-eqz v3, :cond_d

    .line 273
    .line 274
    iget v9, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->uid:I

    .line 275
    .line 276
    iput v9, v3, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uid:I

    .line 277
    .line 278
    iget-object v9, v3, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 279
    .line 280
    invoke-interface {v9, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 285
    .line 286
    .line 287
    :cond_d
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_21

    .line 296
    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    check-cast v9, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 302
    .line 303
    iget-object v10, v9, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 304
    .line 305
    iget-object v11, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 306
    .line 307
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    if-eqz v10, :cond_e

    .line 312
    .line 313
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 314
    .line 315
    new-instance v7, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .line 319
    .line 320
    new-instance v10, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    iget-object v11, v9, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v12

    .line 331
    :cond_f
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-eqz v13, :cond_10

    .line 336
    .line 337
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    move-object v14, v13

    .line 342
    check-cast v14, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 343
    .line 344
    iget-object v14, v14, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 345
    .line 346
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    xor-int/2addr v14, v6

    .line 351
    if-eqz v14, :cond_f

    .line 352
    .line 353
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v12

    .line 365
    if-eqz v12, :cond_14

    .line 366
    .line 367
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v12

    .line 371
    check-cast v12, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 372
    .line 373
    iget-object v13, v12, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 374
    .line 375
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v13

    .line 379
    new-instance v14, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 380
    .line 381
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 382
    .line 383
    .line 384
    move-result v15

    .line 385
    if-ne v15, v6, :cond_12

    .line 386
    .line 387
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v15

    .line 391
    goto :goto_7

    .line 392
    :cond_12
    move-object v15, v8

    .line 393
    :goto_7
    check-cast v15, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 394
    .line 395
    if-eqz v15, :cond_13

    .line 396
    .line 397
    iget-object v15, v15, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 398
    .line 399
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v15

    .line 403
    goto :goto_8

    .line 404
    :cond_13
    move v15, v5

    .line 405
    :goto_8
    invoke-direct {v14, v13, v8, v15}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    iget-object v14, v12, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 412
    .line 413
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v20

    .line 417
    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v14

    .line 421
    if-eqz v14, :cond_11

    .line 422
    .line 423
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v14

    .line 427
    check-cast v14, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 428
    .line 429
    new-instance v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 430
    .line 431
    new-instance v5, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 432
    .line 433
    iget-object v6, v12, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 434
    .line 435
    invoke-direct {v5, v6, v14, v8}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 436
    .line 437
    .line 438
    const/16 v17, 0x0

    .line 439
    .line 440
    const/16 v18, 0x4

    .line 441
    .line 442
    const/16 v19, 0x0

    .line 443
    .line 444
    move-object v14, v15

    .line 445
    move-object v6, v15

    .line 446
    move-object v15, v13

    .line 447
    move-object/from16 v16, v5

    .line 448
    .line 449
    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    const/4 v5, 0x0

    .line 456
    const/4 v6, 0x1

    .line 457
    goto :goto_9

    .line 458
    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    check-cast v3, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    :cond_15
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v10

    .line 473
    if-eqz v10, :cond_16

    .line 474
    .line 475
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    instance-of v11, v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 480
    .line 481
    if-eqz v11, :cond_15

    .line 482
    .line 483
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_16
    new-instance v6, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    :cond_17
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v10

    .line 500
    if-eqz v10, :cond_19

    .line 501
    .line 502
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    check-cast v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 507
    .line 508
    iget-object v10, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 509
    .line 510
    if-eqz v10, :cond_18

    .line 511
    .line 512
    iget-object v10, v10, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 513
    .line 514
    if-eqz v10, :cond_18

    .line 515
    .line 516
    iget-object v10, v10, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 517
    .line 518
    goto :goto_c

    .line 519
    :cond_18
    move-object v10, v8

    .line 520
    :goto_c
    if-eqz v10, :cond_17

    .line 521
    .line 522
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    goto :goto_b

    .line 526
    :cond_19
    new-instance v5, Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    :cond_1a
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 536
    .line 537
    .line 538
    move-result v11

    .line 539
    if-eqz v11, :cond_1c

    .line 540
    .line 541
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 546
    .line 547
    iget-object v11, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 548
    .line 549
    if-eqz v11, :cond_1b

    .line 550
    .line 551
    iget-object v11, v11, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 552
    .line 553
    if-eqz v11, :cond_1b

    .line 554
    .line 555
    iget-object v11, v11, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 556
    .line 557
    goto :goto_e

    .line 558
    :cond_1b
    move-object v11, v8

    .line 559
    :goto_e
    if-eqz v11, :cond_1a

    .line 560
    .line 561
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    goto :goto_d

    .line 565
    :cond_1c
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    const/4 v6, 0x1

    .line 570
    xor-int/2addr v5, v6

    .line 571
    iget-object v6, v9, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 572
    .line 573
    if-nez v5, :cond_1d

    .line 574
    .line 575
    iget-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 576
    .line 577
    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-eqz v5, :cond_1d

    .line 586
    .line 587
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    if-eqz v5, :cond_1f

    .line 592
    .line 593
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 594
    .line 595
    .line 596
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v9}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    if-eqz v2, :cond_1e

    .line 604
    .line 605
    iget-object v5, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 606
    .line 607
    if-eqz v5, :cond_1e

    .line 608
    .line 609
    iget-object v5, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 610
    .line 611
    check-cast v5, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 612
    .line 613
    iget-object v5, v5, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 614
    .line 615
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    check-cast v5, Ljava/lang/Boolean;

    .line 620
    .line 621
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    iget-object v10, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 626
    .line 627
    const/4 v11, 0x0

    .line 628
    new-instance v7, Landroid/content/Intent;

    .line 629
    .line 630
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 631
    .line 632
    .line 633
    iget-object v8, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 634
    .line 635
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    const-string v8, "android.service.controls.extra.LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS"

    .line 640
    .line 641
    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    .line 643
    .line 644
    move-result-object v12

    .line 645
    const/high16 v13, 0xc000000

    .line 646
    .line 647
    const/4 v14, 0x0

    .line 648
    iget-object v7, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 649
    .line 650
    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 651
    .line 652
    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 653
    .line 654
    .line 655
    move-result-object v15

    .line 656
    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    new-instance v8, Lcom/android/systemui/controls/management/model/MainPanelModel;

    .line 661
    .line 662
    iget-object v2, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 663
    .line 664
    invoke-direct {v8, v7, v2, v5}, Lcom/android/systemui/controls/management/model/MainPanelModel;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Z)V

    .line 665
    .line 666
    .line 667
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_1e
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 672
    .line 673
    .line 674
    :goto_f
    invoke-virtual {v0, v6}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 679
    .line 680
    const/4 v2, 0x1

    .line 681
    iput-boolean v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    .line 682
    .line 683
    :cond_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 684
    .line 685
    .line 686
    instance-of v2, v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 687
    .line 688
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 689
    .line 690
    if-eqz v2, :cond_20

    .line 691
    .line 692
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    check-cast v2, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 697
    .line 698
    move-object v3, v1

    .line 699
    check-cast v3, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 700
    .line 701
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 702
    .line 703
    iget-object v3, v3, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 704
    .line 705
    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->subscribeToFavorites(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 706
    .line 707
    .line 708
    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 709
    .line 710
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getName()Ljava/lang/CharSequence;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-direct {v2, v1, v9}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 715
    .line 716
    .line 717
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 718
    .line 719
    goto :goto_10

    .line 720
    :cond_20
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    check-cast v2, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 725
    .line 726
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    new-instance v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 731
    .line 732
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 737
    .line 738
    const-string v9, ""

    .line 739
    .line 740
    invoke-direct {v5, v7, v9, v8}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 741
    .line 742
    .line 743
    iget-object v7, v5, Lcom/android/systemui/controls/controller/StructureInfo;->customStructureInfo:Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;

    .line 744
    .line 745
    const/4 v8, 0x1

    .line 746
    iput-boolean v8, v7, Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;->active:Z

    .line 747
    .line 748
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 749
    .line 750
    filled-new-array {v5}, [Lcom/android/systemui/controls/controller/StructureInfo;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    new-instance v7, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 759
    .line 760
    invoke-direct {v7, v3, v5}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 761
    .line 762
    .line 763
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 764
    .line 765
    invoke-virtual {v2, v7}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->subscribeToFavorites(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 766
    .line 767
    .line 768
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 769
    .line 770
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsController;

    .line 775
    .line 776
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 781
    .line 782
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 783
    .line 784
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 785
    .line 786
    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    const/4 v5, 0x1

    .line 791
    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindService(ZZ)V

    .line 792
    .line 793
    .line 794
    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 795
    .line 796
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getName()Ljava/lang/CharSequence;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-direct {v2, v1, v6}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 801
    .line 802
    .line 803
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 804
    .line 805
    :goto_10
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 806
    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    const-string/jumbo v2, "update selectedItem = "

    .line 810
    .line 811
    .line 812
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .line 824
    .line 825
    return-void

    .line 826
    :cond_21
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 827
    .line 828
    const-string v1, "Collection contains no element matching the predicate."

    .line 829
    .line 830
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    throw v0
.end method
