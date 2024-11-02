.class public final Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

.field public final mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

.field public final mSubscreenRecords:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;",
            "Lcom/android/systemui/qs/QSTileHost;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 19
    .line 20
    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mDisplayListener:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;

    .line 33
    .line 34
    new-instance v0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f0d0475

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setSquishinessFraction()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updatePageIndicator$1()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 45
    .line 46
    check-cast v1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 47
    .line 48
    const v2, 0x7f0a0b10

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setTiles()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->addPagedTileLayout()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updateResources()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setListening(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->removeAllTileViews()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final removeAllTileViews()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    check-cast v3, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 26
    .line 27
    invoke-interface {v3, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/qs/QSPanel$1;

    .line 33
    .line 34
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setListening(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setListening"

    .line 2
    .line 3
    .line 4
    const-string v1, "SubscreenQsPanelControllerBase"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 13
    .line 14
    iget-boolean v2, v2, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 15
    .line 16
    if-ne v2, p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    move-object v2, v0

    .line 20
    check-cast v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 21
    .line 22
    iput-boolean p1, v2, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 23
    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 36
    .line 37
    invoke-interface {v0, p1, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 41
    .line 42
    check-cast p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const-string/jumbo p1, "refreshAllTiles"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->isListening()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-void
.end method

.method public final setTiles()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "setTiles "

    .line 12
    .line 13
    .line 14
    const-string v2, "SubscreenQsPanelControllerBase"

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->removeAllTileViews()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "adding Tilespec : "

    .line 43
    .line 44
    invoke-static {v4, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move v4, v3

    .line 49
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 50
    .line 51
    iget-object v5, v5, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ge v4, v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/systemui/plugins/qs/QSFactory;

    .line 64
    .line 65
    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-interface {v5, v6, v1, v3}, Lcom/android/systemui/plugins/qs/QSFactory;->createCoverScreenTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    new-instance v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 74
    .line 75
    invoke-direct {v3, v1, v5}, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 79
    .line 80
    check-cast v1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v4, Lcom/android/systemui/qs/QSPanel$1;

    .line 86
    .line 87
    invoke-direct {v4, v1, v3}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 88
    .line 89
    .line 90
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 91
    .line 92
    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 93
    .line 94
    .line 95
    iput-object v4, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/qs/QSPanel$1;

    .line 96
    .line 97
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 103
    .line 104
    .line 105
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 106
    .line 107
    if-eqz v1, :cond_0

    .line 108
    .line 109
    invoke-interface {v1, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v5, "addTile tile.getTileSpec():  record: "

    .line 120
    .line 121
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, " mSubscreenRecords.size(): "

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v2, "Default factory didn\'t create view for "

    .line 155
    .line 156
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_3
    return-void
.end method
