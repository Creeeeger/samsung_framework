.class public final Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public final mRingBellOfTowerRunnable:Ljava/lang/Runnable;

.field public final mSecondTick:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;

.field public mSecondsHandler:Landroid/os/Handler;

.field public mShouldShowSecondsClockByQuickStar:Z

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondTick:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final shouldShowSecondsClock()Z
    .locals 3

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    const-class p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p0, v1, :cond_1

    .line 21
    .line 22
    if-ne p0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move p0, v2

    .line 28
    :goto_1
    if-eqz p0, :cond_2

    .line 29
    .line 30
    move v0, v2

    .line 31
    :cond_2
    return v0
.end method

.method public final updateQuickStarStyle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "slimindicator_show_seconds"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v2, "updateQuickStarStyle() shouldShowSecondsClock("

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " >> "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ")"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "QSClockBellTower"

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    .line 67
    .line 68
    if-eq v1, v0, :cond_1

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->updateSecondsClockHandler()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final updateSecondsClockHandler()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->shouldShowSecondsClock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondTick:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
