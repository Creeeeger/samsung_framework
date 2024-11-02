.class public final Lcom/android/systemui/qs/SecQuickQSPanelController;
.super Lcom/android/systemui/qs/SecQSPanelControllerBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBrightnessMediaDeviceBar:Landroid/view/View;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mMediaPlayerBar:Landroid/view/View;

.field public mOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQuickQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/SecQuickQSPanel;",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/qs/QSPanelHost;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
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
    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    .line 26
    .line 27
    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 28
    .line 29
    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 30
    .line 31
    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 32
    .line 33
    filled-new-array {v1, v2, v3}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, v10, Lcom/android/systemui/qs/SecQuickQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 45
    .line 46
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/systemui/qs/bar/BarController;

    .line 51
    .line 52
    iget-object v1, v10, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 55
    .line 56
    new-instance v2, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    move-object/from16 v3, p9

    .line 59
    .line 60
    invoke-direct {v2, p0, v3, v0}, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/bar/BarController;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v1, Lcom/android/systemui/qs/SecQuickQSPanel;->mMeasuredHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/SecHeaderTileLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 21
    .line 22
    const-string v1, "onConfigurationChanged currentOrientation = "

    .line 23
    .line 24
    const-string v2, ",newConfig.orientation = "

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 31
    .line 32
    const-string v3, "SecQuickQSPanelController"

    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    iget v2, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    .line 46
    .line 47
    if-eq v2, v0, :cond_1

    .line 48
    .line 49
    :cond_0
    iput v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 7
    .line 8
    const v1, 0x7f0a01ad

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mBrightnessMediaDeviceBar:Landroid/view/View;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 20
    .line 21
    const v1, 0x7f0a0659

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mMediaPlayerBar:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickQSPanelController;->updatePaddingAndMargins()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setExpanded(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast p0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final updatePaddingAndMargins()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    .line 21
    check-cast v2, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelStartEndPadding(Landroid/content/Context;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    add-int/lit8 v3, v1, 0x0

    .line 40
    .line 41
    check-cast v2, Lcom/android/systemui/qs/SecHeaderTileLayout;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v2, v3, v5, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mBrightnessMediaDeviceBar:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v5, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mBrightnessMediaDeviceBar:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual {v2, v1, v3, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mMediaPlayerBar:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v1, 0x7f070e27

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    if-ne v1, v2, :cond_4

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move v1, v4

    .line 103
    :goto_0
    if-eqz v1, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNotificationSidePadding(Landroid/content/Context;)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    :goto_1
    move v0, v4

    .line 111
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mMediaPlayerBar:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mMediaPlayerBar:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    .line 125
    .line 126
    :cond_6
    return-void
.end method

.method public final updatePanelContents()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "qqs_expand_anim"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 21
    .line 22
    check-cast v1, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 28
    .line 29
    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->addBarItems()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
