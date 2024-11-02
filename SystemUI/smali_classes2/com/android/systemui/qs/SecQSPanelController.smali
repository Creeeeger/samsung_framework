.class public final Lcom/android/systemui/qs/SecQSPanelController;
.super Lcom/android/systemui/qs/SecQSPanelControllerBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mGridContentVisible:Z

.field public final mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mOrientation:I

.field public mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public final mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

.field public mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

.field public final mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public final mTileLayoutTouchListener:Lcom/android/systemui/qs/SecQSPanelController$1;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/qs/QSButtonGridController;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/SecQSPanel;",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/qs/QSPanelHost;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/shade/NotificationShadeWindowView;",
            "Lcom/android/systemui/qs/QSButtonGridController;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    move-object v8, v0

    .line 7
    check-cast v8, Lcom/android/systemui/qs/bar/BarController;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    move-object/from16 v5, p5

    .line 15
    .line 16
    move-object/from16 v6, p6

    .line 17
    .line 18
    move-object/from16 v7, p7

    .line 19
    .line 20
    move-object/from16 v9, p9

    .line 21
    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/SecQSPanelControllerBase;-><init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelController$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQSPanelController$1;-><init>(Lcom/android/systemui/qs/SecQSPanelController;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mTileLayoutTouchListener:Lcom/android/systemui/qs/SecQSPanelController$1;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    .line 33
    .line 34
    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 35
    .line 36
    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 37
    .line 38
    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 39
    .line 40
    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 41
    .line 42
    filled-new-array {v1, v2, v3, v4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mGridContentVisible:Z

    .line 57
    .line 58
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    .line 62
    .line 63
    .line 64
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    .line 65
    .line 66
    move-object/from16 v0, p10

    .line 67
    .line 68
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 69
    .line 70
    move-object/from16 v0, p12

    .line 71
    .line 72
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 73
    .line 74
    move-object/from16 v0, p13

    .line 75
    .line 76
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mUiHandler:Landroid/os/Handler;

    .line 77
    .line 78
    move-object/from16 v0, p15

    .line 79
    .line 80
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 81
    .line 82
    move-object/from16 v0, p16

    .line 83
    .line 84
    iput-object v0, v10, Lcom/android/systemui/qs/SecQSPanelController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    .line 85
    .line 86
    move-object/from16 v0, p9

    .line 87
    .line 88
    iput-object v10, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    const-string v1, "onConfigurationChanged currentOrientation = "

    .line 19
    .line 20
    const-string v2, ",newConfig.orientation = "

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 27
    .line 28
    const-string v3, "SecQSPanelController"

    .line 29
    .line 30
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget v2, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    .line 42
    .line 43
    if-eq v2, v0, :cond_6

    .line 44
    .line 45
    :cond_0
    iput v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelController;->updatePanelContents()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v2, v1

    .line 73
    :goto_0
    if-eqz v2, :cond_6

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailTileSpec:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    :cond_3
    const-string v0, ""

    .line 82
    .line 83
    :cond_4
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;

    .line 90
    .line 91
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 112
    .line 113
    if-ne p1, v0, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 117
    .line 118
    :cond_6
    :goto_1
    return-void
.end method

.method public final onInit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onInit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 12
    .line 13
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v1, "onViewAttached() Settings:"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v2, "QSButtonGridController"

    .line 62
    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/systemui/qs/QSButtonGridController;->mSettingListener:Lcom/android/systemui/qs/QSButtonGridController$1;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/systemui/qs/QSButtonGridController;->mSettingsValueList:[Landroid/net/Uri;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 100
    .line 101
    const-string v1, "hide_smart_view_large_tile_on_panel"

    .line 102
    .line 103
    filled-new-array {v1}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v1, "onViewAttached() Settings:"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "QSButtonGridController"

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/systemui/qs/QSButtonGridController;->mSettingListener:Lcom/android/systemui/qs/QSButtonGridController$1;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 69
    .line 70
    .line 71
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_1
    return-void
.end method

.method public final setGridContentVisibility(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x4

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    .line 8
    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanel;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mGridContentVisible:Z

    .line 14
    .line 15
    if-ne v1, p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 19
    .line 20
    const/16 v2, 0x6f

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 23
    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mGridContentVisible:Z

    .line 26
    .line 27
    return-void
.end method

.method public final updatePaddingAndMargins()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    .line 16
    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    .line 24
    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final updatePanelContents()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->addBarItems()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 7
    .line 8
    const v1, 0x7f0a07c5

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 29
    .line 30
    instance-of v3, v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    new-instance v3, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 62
    .line 63
    instance-of v2, v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 68
    .line 69
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_2
    new-instance v2, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    :goto_3
    return-void
.end method
