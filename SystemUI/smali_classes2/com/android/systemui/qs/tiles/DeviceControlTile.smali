.class public final Lcom/android/systemui/qs/tiles/DeviceControlTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

.field public final mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mListingCallback:Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda0;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/controls/controller/CustomDeviceControlsController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/controls/dagger/ControlsComponent;)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object/from16 v5, p6

    .line 8
    .line 9
    move-object/from16 v6, p7

    .line 10
    .line 11
    move-object/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v8, p9

    .line 14
    .line 15
    move-object/from16 v9, p10

    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlTile;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mListingCallback:Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    move-object/from16 v0, p14

    .line 36
    .line 37
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 38
    .line 39
    move-object/from16 v0, p15

    .line 40
    .line 41
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 42
    .line 43
    move-object/from16 v0, p16

    .line 44
    .line 45
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 46
    .line 47
    invoke-virtual/range {p16 .. p16}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlTile;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f130d50

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DeviceControlTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlTile;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "handleUpdateState"

    .line 6
    .line 7
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isNonBGTile:Z

    .line 12
    .line 13
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const v1, 0x7f130d50

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 25
    .line 26
    const v0, 0x7f080dec

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlTile;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getCustomControlsUiController()Ljava/util/Optional;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 54
    .line 55
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customSelectedComponentRepository:Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;

    .line 58
    .line 59
    check-cast p0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->getSelectedComponent()Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;->name:Ljava/lang/String;

    .line 68
    .line 69
    if-nez p0, :cond_1

    .line 70
    .line 71
    :cond_0
    const-string p0, ""

    .line 72
    .line 73
    :cond_1
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "handleUpdateState appName = "

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const-string p0, "handleUpdateState hasControlsApps is false"

    .line 96
    .line 97
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
