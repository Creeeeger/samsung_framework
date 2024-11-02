.class public final Lcom/android/systemui/qs/QSPanelHost;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;


# instance fields
.field public mBarController:Lcom/android/systemui/qs/bar/BarController;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mQsHost:Lcom/android/systemui/qs/QSHost;

.field public final mRecords:Ljava/util/ArrayList;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mTargetView:Lcom/android/systemui/qs/SecQSPanel;

.field public mTileCallbackFunction:Ljava/util/function/Function;

.field public mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

.field public final mType:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mType:I

    .line 5
    .line 6
    check-cast p2, Lcom/android/systemui/qs/SecQSPanel;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/QSPanelHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p3}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p3, p0}, Lcom/android/systemui/qs/QSHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object p4, p0, Lcom/android/systemui/qs/QSPanelHost;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mCallbacks:Ljava/util/ArrayList;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final addBarTiles(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 13
    .line 14
    invoke-interface {v3, p1, v2}, Lcom/android/systemui/qs/QSHost;->getBarTilesByType(ILandroid/content/Context;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSPanelHost;I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {v3, v5, p0, v0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "addBarTiles: type="

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " tileRecords="

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " orientation="

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 77
    .line 78
    const-string v3, "QSPanelHost"

    .line 79
    .line 80
    invoke-static {v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    if-eq p1, v4, :cond_1

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    if-eq p1, v1, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;

    .line 92
    .line 93
    const-class v2, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 94
    .line 95
    invoke-direct {p1, v2, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Class;I)V

    .line 96
    .line 97
    .line 98
    const-string v1, "BottomBar"

    .line 99
    .line 100
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;

    .line 105
    .line 106
    const-class v1, Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 107
    .line 108
    invoke-direct {p1, v1, v4}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Class;I)V

    .line 109
    .line 110
    .line 111
    const-string v1, "BrightnessBar"

    .line 112
    .line 113
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;

    .line 118
    .line 119
    const-class v1, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 120
    .line 121
    invoke-direct {p1, v1, v5}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Class;I)V

    .line 122
    .line 123
    .line 124
    const-string v1, "TopBar"

    .line 125
    .line 126
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void
.end method

.method public final addCallbackAndInit(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileCallbackFunction:Ljava/util/function/Function;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 15
    .line 16
    .line 17
    iput-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    .line 18
    .line 19
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final addTilesToBar(Ljava/util/List;Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda7;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda8;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p2, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/util/List;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final getBarItems()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "QSPanelHost"

    .line 6
    .line 7
    const-string v0, "getBarItems: mBarController is null"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    .line 32
    .line 33
    :goto_0
    return-object p0
.end method

.method public final isHeader()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mType:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final onTilesChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mCallbacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setTiles()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const v3, 0x7f0b00e6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v3, 0x7f0b00e3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v1, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    int-to-long v3, v0

    .line 69
    invoke-interface {v1, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/util/List;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v1, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    .line 111
    .line 112
    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;

    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    .line 123
    .line 124
    iget v3, p0, Lcom/android/systemui/qs/QSPanelHost;->mType:I

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    if-nez v3, :cond_5

    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 142
    .line 143
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(I)V

    .line 147
    .line 148
    .line 149
    const/4 v6, 0x2

    .line 150
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 166
    .line 167
    if-eq v3, v2, :cond_4

    .line 168
    .line 169
    const-string v2, "QSPanelHost"

    .line 170
    .line 171
    const-string/jumbo v3, "setTiles : orientation value is changed during updating BarTiles, repeat addBarTiles"

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(I)V

    .line 181
    .line 182
    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;

    .line 192
    .line 193
    invoke-direct {v3, v4}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;-><init>(I)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;

    .line 201
    .line 202
    invoke-direct {v3, v0, v6}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;

    .line 213
    .line 214
    invoke-direct {v2, p0, v5}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSPanelHost;I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;

    .line 222
    .line 223
    const/4 v2, 0x3

    .line 224
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method
