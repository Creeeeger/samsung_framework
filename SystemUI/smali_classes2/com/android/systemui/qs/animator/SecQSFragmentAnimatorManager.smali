.class public final Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mList:Ljava/util/ArrayList;

.field public final mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

.field public mOrientation:I

.field public mQsFullyExpanded:Z

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/dagger/QSFragmentComponent;Lcom/android/systemui/shade/ShadeExpansionStateManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;-><init>(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mOrientation:I

    .line 11
    .line 12
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsExpandAnimator()Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsOpenAnimator()Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsTransitionAnimator()Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 45
    .line 46
    iput-object v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 52
    .line 53
    const-string v0, "QSFragmentAnimator"

    .line 54
    .line 55
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 59
    .line 60
    invoke-virtual {p2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final destroyQSViews()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 11
    .line 12
    const-string v1, "QSFragmentAnimator"

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v2, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0

    .line 31
    throw p0
.end method

.method public final executeConsumer(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SecQSFragmentAnimatorManager ============================================= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "  mQsExpanded = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "  mQsFullyExpanded = "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mQsFullyExpanded:Z

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "  mPanelExpanded = "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "  mIsExpanding = false  mState = "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, "  mQsExpandImmediate = false mQsCollapsingWhilePanelClosing = false"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const-string v1, "============================================================== "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda7;

    .line 96
    .line 97
    invoke-direct {v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda7;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6;

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 115
    .line 116
    const/4 v2, 0x3

    .line 117
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    .line 122
    .line 123
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mOrientation:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mThemeSeq:I

    .line 8
    .line 9
    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAssetSeq:I

    .line 14
    .line 15
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mUIMode:I

    .line 20
    .line 21
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 36
    .line 37
    iput v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mOrientation:I

    .line 38
    .line 39
    iget v0, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 40
    .line 41
    iput v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mThemeSeq:I

    .line 42
    .line 43
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 44
    .line 45
    iput v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAssetSeq:I

    .line 46
    .line 47
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    .line 49
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mUIMode:I

    .line 50
    .line 51
    return-void
.end method

.method public final onPanelClosed()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 13

    .line 1
    iget v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 4
    .line 5
    iget v2, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionFraction:F

    .line 6
    .line 7
    cmpg-float v2, v2, v0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move v2, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v4

    .line 16
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const-string v6, "]"

    .line 19
    .line 20
    const-string v7, "#.###"

    .line 21
    .line 22
    const-wide v8, 0x3fb999999999999aL    # 0.1

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    if-nez v2, :cond_6

    .line 29
    .line 30
    iget v2, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionFractionLastLoggingValue:F

    .line 31
    .line 32
    sub-float/2addr v2, v0

    .line 33
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    float-to-double v11, v2

    .line 38
    cmpl-double v2, v11, v8

    .line 39
    .line 40
    if-gtz v2, :cond_5

    .line 41
    .line 42
    iget v2, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionFraction:F

    .line 43
    .line 44
    cmpg-float v11, v2, v10

    .line 45
    .line 46
    if-nez v11, :cond_1

    .line 47
    .line 48
    move v11, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v11, v4

    .line 51
    :goto_1
    if-nez v11, :cond_5

    .line 52
    .line 53
    cmpg-float v2, v2, v5

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v2, v4

    .line 60
    :goto_2
    if-nez v2, :cond_5

    .line 61
    .line 62
    cmpg-float v2, v0, v10

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    move v2, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v2, v4

    .line 69
    :goto_3
    if-nez v2, :cond_5

    .line 70
    .line 71
    cmpg-float v2, v0, v5

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    move v2, v3

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move v2, v4

    .line 78
    :goto_4
    if-eqz v2, :cond_6

    .line 79
    .line 80
    :cond_5
    new-instance v2, Ljava/text/DecimalFormat;

    .line 81
    .line 82
    invoke-direct {v2, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v2, v11}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-instance v11, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v12, "[panelExpansionFraction:"

    .line 96
    .line 97
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput v0, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionFractionLastLoggingValue:F

    .line 114
    .line 115
    :cond_6
    iput v0, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionFraction:F

    .line 116
    .line 117
    iget v0, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionDragDownPxAmount:F

    .line 118
    .line 119
    iget v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->dragDownPxAmount:F

    .line 120
    .line 121
    cmpg-float v0, v0, v2

    .line 122
    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    move v0, v3

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    move v0, v4

    .line 128
    :goto_5
    if-nez v0, :cond_d

    .line 129
    .line 130
    iget v0, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionDragDownPxAmountLastLoggingValue:F

    .line 131
    .line 132
    sub-float/2addr v0, v2

    .line 133
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    float-to-double v11, v0

    .line 138
    cmpl-double v0, v11, v8

    .line 139
    .line 140
    if-gtz v0, :cond_c

    .line 141
    .line 142
    iget v0, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionDragDownPxAmount:F

    .line 143
    .line 144
    cmpg-float v8, v0, v10

    .line 145
    .line 146
    if-nez v8, :cond_8

    .line 147
    .line 148
    move v8, v3

    .line 149
    goto :goto_6

    .line 150
    :cond_8
    move v8, v4

    .line 151
    :goto_6
    if-nez v8, :cond_c

    .line 152
    .line 153
    cmpg-float v0, v0, v5

    .line 154
    .line 155
    if-nez v0, :cond_9

    .line 156
    .line 157
    move v0, v3

    .line 158
    goto :goto_7

    .line 159
    :cond_9
    move v0, v4

    .line 160
    :goto_7
    if-nez v0, :cond_c

    .line 161
    .line 162
    cmpg-float v0, v2, v10

    .line 163
    .line 164
    if-nez v0, :cond_a

    .line 165
    .line 166
    move v0, v3

    .line 167
    goto :goto_8

    .line 168
    :cond_a
    move v0, v4

    .line 169
    :goto_8
    if-nez v0, :cond_c

    .line 170
    .line 171
    cmpg-float v0, v2, v5

    .line 172
    .line 173
    if-nez v0, :cond_b

    .line 174
    .line 175
    move v0, v3

    .line 176
    goto :goto_9

    .line 177
    :cond_b
    move v0, v4

    .line 178
    :goto_9
    if-eqz v0, :cond_d

    .line 179
    .line 180
    :cond_c
    new-instance v0, Ljava/text/DecimalFormat;

    .line 181
    .line 182
    invoke-direct {v0, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v0, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v7, "[panelExpansionDragDownPxAmount:"

    .line 196
    .line 197
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iput v2, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionDragDownPxAmountLastLoggingValue:F

    .line 214
    .line 215
    :cond_d
    iput v2, v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpansionDragDownPxAmount:F

    .line 216
    .line 217
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 218
    .line 219
    invoke-direct {v0, p1, v4}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 223
    .line 224
    .line 225
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 226
    .line 227
    cmpl-float p1, p1, v10

    .line 228
    .line 229
    if-nez p1, :cond_e

    .line 230
    .line 231
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 232
    .line 233
    if-eqz p1, :cond_f

    .line 234
    .line 235
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updatePanelExpanded(Z)V

    .line 236
    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_e
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 240
    .line 241
    if-nez p1, :cond_f

    .line 242
    .line 243
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updatePanelExpanded(Z)V

    .line 244
    .line 245
    .line 246
    :cond_f
    :goto_a
    return-void
.end method

.method public final onRtlChanged()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->barState:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "[barState:"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "]"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput p1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->barState:I

    .line 30
    .line 31
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final setExpandImmediateSupplier(Ljava/util/function/BooleanSupplier;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda4;-><init>(IIIIIZZ)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setFullyExpanded(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mQsFullyExpanded:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsFullyExpanded:Z

    .line 9
    .line 10
    if-eq v1, p1, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "[qsFullyExpanded:"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-boolean p1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsFullyExpanded:Z

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mQsFullyExpanded:Z

    .line 46
    .line 47
    return-void
.end method

.method public final setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updateAnimators()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpanded:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "[qsExpanded:"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "]"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpanded:Z

    .line 30
    .line 31
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setQsExpansionPosition(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpansionPosition:F

    .line 4
    .line 5
    cmpg-float v1, v1, p1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    if-nez v1, :cond_6

    .line 15
    .line 16
    iget v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpansionPositionLastLoggingValue:F

    .line 17
    .line 18
    sub-float/2addr v1, p1

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    float-to-double v4, v1

    .line 24
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmpl-double v1, v4, v6

    .line 30
    .line 31
    if-gtz v1, :cond_5

    .line 32
    .line 33
    iget v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpansionPosition:F

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    cmpg-float v5, v1, v4

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    move v5, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v5, v3

    .line 43
    :goto_1
    if-nez v5, :cond_5

    .line 44
    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    .line 47
    cmpg-float v1, v1, v5

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    move v1, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v1, v3

    .line 54
    :goto_2
    if-nez v1, :cond_5

    .line 55
    .line 56
    cmpg-float v1, p1, v4

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    move v1, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v1, v3

    .line 63
    :goto_3
    if-nez v1, :cond_5

    .line 64
    .line 65
    cmpg-float v1, p1, v5

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move v2, v3

    .line 71
    :goto_4
    if-eqz v2, :cond_6

    .line 72
    .line 73
    :cond_5
    new-instance v1, Ljava/text/DecimalFormat;

    .line 74
    .line 75
    const-string v2, "#.###"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "[qsExpansionPosition:"

    .line 91
    .line 92
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "]"

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iput p1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpansionPositionLastLoggingValue:F

    .line 111
    .line 112
    :cond_6
    iput p1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->qsExpansionPosition:F

    .line 113
    .line 114
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda5;

    .line 115
    .line 116
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda5;-><init>(F)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final setStackScrollerOverscrolling(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updateAnimators()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updatePanelExpanded(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mLogger:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpanded:Z

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "[panelExpanded:"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "]"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->printLog(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorLogger;->panelExpanded:Z

    .line 32
    .line 33
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
