.class public final Lcom/android/systemui/qs/bar/BarController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public mAllBarItems:Ljava/util/ArrayList;

.field public final mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

.field public mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

.field public mCollapsedBarItems:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mDisplayCutoutTopInset:I

.field public mExpandedBarItems:Ljava/util/ArrayList;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

.field public mNavBarHeight:I

.field public final mOnConfigurationChangedListener:Lcom/android/systemui/qs/bar/BarController$2;

.field public mOrientation:I

.field public mQSLastExpansionInitializer:Ljava/lang/Runnable;

.field public mQsFullyExpanded:Z

.field public mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mThemeSeq:I

.field public mUiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/bar/BarFactory;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/knox/KnoxStateMonitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BarController$1;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BarController$2;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/bar/BarController$2;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOrientation:I

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 29
    .line 30
    iput-object p6, p0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 31
    .line 32
    const-string p6, "BarController"

    .line 33
    .line 34
    invoke-virtual {p3, p6}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 38
    .line 39
    .line 40
    iput-object p5, p0, Lcom/android/systemui/qs/bar/BarController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 41
    .line 42
    new-instance p3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p4, v1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItems(Z)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance p3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItems(Z)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance p3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object p4, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object p4, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    new-instance p3, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 84
    .line 85
    invoke-direct {p3, p1, p2}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    .line 86
    .line 87
    .line 88
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    .line 89
    .line 90
    return-void
.end method

.method public static logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 18

    .line 1
    const-string/jumbo v0, "open_theme_qp_bg_color"

    .line 2
    .line 3
    .line 4
    const v1, 0x7f060484

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "sec_panel_background_color"

    .line 12
    .line 13
    .line 14
    const v3, 0x7f060596

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "animated_brightness_icon_color"

    .line 22
    .line 23
    const v5, 0x7f06003c

    .line 24
    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string/jumbo v6, "tw_progress_color_control_activated"

    .line 31
    .line 32
    .line 33
    const v7, 0x7f060963

    .line 34
    .line 35
    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const-string/jumbo v8, "tw_progress_color_control_normal"

    .line 41
    .line 42
    .line 43
    const v9, 0x7f060966

    .line 44
    .line 45
    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const-string/jumbo v10, "qs_tile_round_background_off"

    .line 51
    .line 52
    .line 53
    const v11, 0x7f060514

    .line 54
    .line 55
    .line 56
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    const-string/jumbo v12, "qs_tile_round_background_on"

    .line 61
    .line 62
    .line 63
    const v13, 0x7f060515

    .line 64
    .line 65
    .line 66
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    const-string/jumbo v14, "qs_tile_icon_on_dim_tint_color"

    .line 71
    .line 72
    .line 73
    const v15, 0x7f060510

    .line 74
    .line 75
    .line 76
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    const-string/jumbo v16, "qs_tile_label"

    .line 81
    .line 82
    .line 83
    const v17, 0x7f060511

    .line 84
    .line 85
    .line 86
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v17

    .line 90
    invoke-static/range {v0 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda9;

    .line 95
    .line 96
    move-object/from16 v2, p0

    .line 97
    .line 98
    move-object/from16 v3, p1

    .line 99
    .line 100
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Dump Bar state =============================================== "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda11;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v4, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;

    .line 20
    .line 21
    invoke-direct {v4, v2, v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Appendable;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda11;

    .line 33
    .line 34
    invoke-direct {v2, p1, v0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const-string v1, "============================================================== "

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;

    .line 48
    .line 49
    invoke-direct {v1, p1, p2, v0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Appendable;Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "BarController"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v5, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;

    .line 30
    .line 31
    invoke-direct {v5, v3, v1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Appendable;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method public final getBarInCollapsed(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/bar/BarType;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 27
    .line 28
    return-object p0
.end method

.method public final getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/bar/BarType;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 27
    .line 28
    return-object p0
.end method

.method public final updateBarUnderneathQqs()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda5;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
