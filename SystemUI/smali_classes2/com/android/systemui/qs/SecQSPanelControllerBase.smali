.class public abstract Lcom/android/systemui/qs/SecQSPanelControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCollapseExpandAction:Ljava/lang/Runnable;

.field public final mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

.field public mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

.field public mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

.field public mDetailTileSpec:Ljava/lang/String;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mExpandSettingsPanel:Z

.field public mExpanded:Z

.field public final mHandler:Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mListening:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field protected final mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

.field public mOrientation:I

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static $r8$lambda$X8r1Fwkz1Q6QfQQCpSy31GTu-7M(Lcom/android/systemui/qs/SecQSPanelControllerBase;Lcom/android/systemui/qs/bar/BarItemImpl;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->inflateViews(Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 17
    .line 18
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p1, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mTileLayoutContainer:Landroid/view/View;

    .line 28
    .line 29
    check-cast p1, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 35
    .line 36
    check-cast v0, Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 42
    .line 43
    check-cast p0, Landroid/view/View;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 1
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
            "Lcom/android/systemui/qs/bar/BarController;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 7
    .line 8
    filled-new-array {v0}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 20
    .line 21
    new-instance p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHandler:Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

    .line 28
    .line 29
    new-instance p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$1;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$1;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 37
    .line 38
    new-instance p1, Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Lcom/android/systemui/qs/SecDarkModeEasel;-><init>(Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 53
    .line 54
    iput-object p4, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 55
    .line 56
    iput-object p5, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 57
    .line 58
    iput-object p6, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 59
    .line 60
    iput-object p7, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 61
    .line 62
    new-instance p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p7, Lcom/android/systemui/qs/QSPanelHost;->mTileCallbackFunction:Ljava/util/function/Function;

    .line 68
    .line 69
    iput-object p8, p7, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 70
    .line 71
    iput-object p9, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 72
    .line 73
    return-void
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addBarItems()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "QSPanelHost:"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "  Tile records:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1, p1, p2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final flipPageWithTile(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/systemui/qs/SecPagedTileLayout;->tilesSupplier:Ljava/util/function/Supplier;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 40
    .line 41
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v4, -0x1

    .line 56
    :goto_1
    if-lez v4, :cond_3

    .line 57
    .line 58
    iget-object v2, v1, Lcom/android/systemui/qs/SecPagedTileLayout;->getColumnCountSupplier:Ljava/util/function/IntSupplier;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-object v1, v1, Lcom/android/systemui/qs/SecPagedTileLayout;->pagesSupplier:Ljava/util/function/Supplier;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    move v1, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    .line 85
    .line 86
    iget v1, v1, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 87
    .line 88
    :goto_2
    mul-int/2addr v2, v1

    .line 89
    div-int/2addr v4, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move v4, v3

    .line 92
    :goto_3
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;

    .line 104
    .line 105
    const/4 v2, 0x2

    .line 106
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 v1, 0x8

    .line 120
    .line 121
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTileView;

    .line 134
    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;

    .line 138
    .line 139
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v1, 0x1f4

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHandler:Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

    .line 145
    .line 146
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    :cond_4
    return-void
.end method

.method public getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    .line 19
    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const v3, 0x7f0d02d8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 39
    .line 40
    return-object p0
.end method

.method public final getTile(Lcom/android/systemui/plugins/qs/DetailAdapter;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelController;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 10
    .line 11
    instance-of v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v2, 0x7

    .line 26
    invoke-direct {v0, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda8;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v0, p1, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    move-object v1, p0

    .line 52
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 53
    .line 54
    :goto_0
    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    const-string v1, "onConfigurationChanged currentOrientation = "

    .line 20
    .line 21
    const-string v2, ",newConfig.orientation = "

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    const-string v3, "SecQSPanelControllerBase"

    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOrientation:I

    .line 43
    .line 44
    if-eq v2, v0, :cond_1

    .line 45
    .line 46
    :cond_0
    iput v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOrientation:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updateResources()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDarkModelEasel:Lcom/android/systemui/qs/SecDarkModeEasel;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecDarkModeEasel;->updateColors(Landroid/content/res/Configuration;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onInit()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 8
    .line 9
    iput-object v0, v1, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onViewAttached()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updateResources()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePanelContents()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 29
    .line 30
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onViewDetached()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    .line 43
    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 58
    .line 59
    invoke-interface {v0, v3, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 63
    .line 64
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final refreshAllTiles()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpanded:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpanded:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    instance-of v2, v1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 20
    .line 21
    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    .line 26
    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 33
    .line 34
    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 38
    .line 39
    const/16 v2, 0x6f

    .line 40
    .line 41
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 49
    .line 50
    check-cast p1, Lcom/android/systemui/qs/SecQSPanel;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 88
    .line 89
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;

    .line 93
    .line 94
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 102
    .line 103
    check-cast p1, Lcom/android/systemui/qs/SecQSPanel;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 113
    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    .line 14
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, ","

    .line 39
    .line 40
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 51
    .line 52
    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 58
    .line 59
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public final showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p2, v0

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHandler:Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

    .line 8
    .line 9
    const/16 v1, 0x63

    .line 10
    .line 11
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public updatePaddingAndMargins()V
    .locals 0

    .line 1
    return-void
.end method

.method public updatePanelContents()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->addBarItems()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateResources()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->updateResources()Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
