.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final centerContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

.field public final heightContainer:Landroid/view/ViewGroup;

.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

.field public final knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

.field public final leftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

.field public final netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

.field public final panelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

.field public final phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field public final privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public final progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field public final rightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final sidePaddingContainer:Landroid/view/ViewGroup;

.field public final statusIconContainerCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$statusIconContainerCallback$1;

.field public final statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

.field public final twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

.field public final viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V
    .locals 4

    move-object v0, p0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v1, p12

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    move-object/from16 v1, p21

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    .line 22
    const-class v1, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->panelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 23
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    .line 24
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$statusIconContainerCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$statusIconContainerCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$statusIconContainerCallback$1;

    .line 25
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    .line 26
    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTouchEventHandler:Lcom/android/systemui/Gefingerpoken;

    .line 27
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0c96

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const/4 v2, 0x0

    move-object v3, p7

    .line 30
    invoke-static {v1, p7, v2}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;->bind(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;)V

    .line 31
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    .line 32
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->heightContainer:Landroid/view/ViewGroup;

    .line 33
    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0ad0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sidePaddingContainer:Landroid/view/ViewGroup;

    .line 34
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0ad5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->leftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 35
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0ace

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centerContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 36
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0b92

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->rightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p21}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "IndicatorBasicGardener "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 28
    .line 29
    .line 30
    iget-object p2, v1, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v0, "IndicatorGardenModel"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 41
    .line 42
    const-string v1, "  height:"

    .line 43
    .line 44
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 48
    .line 49
    const-string v1, "  hasCameraTopMargin:"

    .line 50
    .line 51
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 52
    .line 53
    .line 54
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 55
    .line 56
    const-string v1, "  cameraTopMargin:"

    .line 57
    .line 58
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 59
    .line 60
    .line 61
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 62
    .line 63
    iget v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 64
    .line 65
    sub-int/2addr v0, v1

    .line 66
    const-string v1, "  statusBarContentsHeight="

    .line 67
    .line 68
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 69
    .line 70
    .line 71
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 72
    .line 73
    const-string v1, "  leftPadding:"

    .line 74
    .line 75
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 76
    .line 77
    .line 78
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 79
    .line 80
    const-string v1, "  rightPadding:"

    .line 81
    .line 82
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 83
    .line 84
    .line 85
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 86
    .line 87
    const-string v1, "  leftContainer:"

    .line 88
    .line 89
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 90
    .line 91
    .line 92
    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 93
    .line 94
    const-string v1, "  centerContainer:"

    .line 95
    .line 96
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 97
    .line 98
    .line 99
    iget p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "  rightContainer:"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 122
    .line 123
    check-cast p2, Landroid/view/ViewGroup;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const-string v0, "IndicatorGardenViewTreeLogHelper"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-static {p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->printDumpLog(Ljava/io/PrintWriter;Landroid/view/View;II)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-static {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->printChildWidthRecursive(Ljava/io/PrintWriter;Landroid/view/ViewGroup;I)V

    .line 141
    .line 142
    .line 143
    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 144
    .line 145
    if-eqz p2, :cond_0

    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;->dump(Ljava/io/PrintWriter;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 158
    .line 159
    .line 160
    const-string p2, "  KnoxStatusBarControlViewModel"

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 166
    .line 167
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v1, "    statusBarHidden="

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 189
    .line 190
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "    statusBarIconsEnabled="

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 212
    .line 213
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v0, "    knoxStatusBarCustomText="

    .line 220
    .line 221
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string p0, " BasicRune.STATUS_LAYOUT_MARQUEE: true"

    .line 235
    .line 236
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centerContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEssentialLeftWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getEssentialRightWidth()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4
    .line 5
    const v1, 0x7f0a0144

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 13
    .line 14
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 22
    .line 23
    const v3, 0x7f0a072f

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v1, v2

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 43
    .line 44
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    .line 45
    .line 46
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    .line 47
    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v3, v2

    .line 56
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lez v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    add-int/2addr p0, v1

    .line 79
    add-int/2addr p0, v3

    .line 80
    add-int/2addr p0, v2

    .line 81
    return p0
.end method

.method public final getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->heightContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->leftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->rightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sidePaddingContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onInit()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->panelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 15
    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 17
    .line 18
    iget v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    .line 19
    .line 20
    if-nez v2, :cond_5

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eq v2, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v2, 0x3

    .line 34
    if-ne p1, v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p1, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    move p1, v1

    .line 40
    :goto_1
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 43
    .line 44
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 45
    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    :cond_3
    move v3, v1

    .line 51
    :cond_4
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_5
    return-void
.end method

.method public final onViewAttached()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    .line 8
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 18
    .line 19
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1;

    .line 20
    .line 21
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 28
    .line 29
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 30
    .line 31
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;

    .line 32
    .line 33
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 40
    .line 41
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->updatePaddingsForPrivacyDot(Landroid/view/WindowInsets;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    .line 51
    .line 52
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    .line 53
    .line 54
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeValues()V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 63
    .line 64
    check-cast v3, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    .line 67
    .line 68
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder;->bind(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 72
    .line 73
    iput-object p0, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIndicatorGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 74
    .line 75
    const-string v4, "[QuickStar]PhoneStatusBarClockManager"

    .line 76
    .line 77
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    .line 78
    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    const v6, 0x7f0a05a9

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/view/ViewGroup;

    .line 89
    .line 90
    iput-object v6, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    .line 91
    .line 92
    const v6, 0x7f0a0695

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Landroid/view/ViewGroup;

    .line 100
    .line 101
    iput-object v6, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    .line 102
    .line 103
    const v6, 0x7f0a08d0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Landroid/view/ViewGroup;

    .line 111
    .line 112
    iput-object v5, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    .line 113
    .line 114
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 115
    .line 116
    check-cast v5, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 117
    .line 118
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const-string v3, "onAttachedToWindow(), mGrandParentView is null"

    .line 126
    .line 127
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 131
    .line 132
    const-string v4, "PhoneStatusBarViewController"

    .line 133
    .line 134
    invoke-virtual {v3, v4, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 135
    .line 136
    .line 137
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    .line 138
    .line 139
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 143
    .line 144
    iput-object v3, v4, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    .line 145
    .line 146
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayIcon:Z

    .line 147
    .line 148
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 151
    .line 152
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 153
    .line 154
    const v5, 0x7f0a0144

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lcom/android/systemui/battery/BatteryMeterView;

    .line 162
    .line 163
    iput-boolean v4, v3, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    .line 164
    .line 165
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 166
    .line 167
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 168
    .line 169
    const v4, 0x7f0a0ad7

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 177
    .line 178
    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 179
    .line 180
    const v5, 0x7f0a0ad2

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroid/view/ViewGroup;

    .line 188
    .line 189
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 190
    .line 191
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_4

    .line 196
    .line 197
    new-instance v6, Landroid/widget/ImageView;

    .line 198
    .line 199
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    .line 200
    .line 201
    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    iput-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 205
    .line 206
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    const/4 v8, -0x2

    .line 209
    const/4 v9, -0x1

    .line 210
    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 217
    .line 218
    const/4 v7, 0x0

    .line 219
    if-nez v6, :cond_1

    .line 220
    .line 221
    move-object v6, v7

    .line 222
    :cond_1
    const/16 v8, 0x8

    .line 223
    .line 224
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 228
    .line 229
    if-nez v6, :cond_2

    .line 230
    .line 231
    move-object v6, v7

    .line 232
    :cond_2
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 236
    .line 237
    if-nez v6, :cond_3

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_3
    move-object v7, v6

    .line 241
    :goto_1
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 242
    .line 243
    invoke-interface {v6, v7}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Landroid/widget/ImageView;)V

    .line 244
    .line 245
    .line 246
    const-string/jumbo v6, "two_register"

    .line 247
    .line 248
    .line 249
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const-string/jumbo v7, "two_account"

    .line 254
    .line 255
    .line 256
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    const-string/jumbo v8, "two_call_enabled"

    .line 261
    .line 262
    .line 263
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    const-string/jumbo v9, "two_sms_enabled"

    .line 268
    .line 269
    .line 270
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    filled-new-array {v6, v7, v8, v9}, [Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 279
    .line 280
    iget-object v8, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;

    .line 281
    .line 282
    invoke-virtual {v7, v8, v6}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 283
    .line 284
    .line 285
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    .line 286
    .line 287
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 288
    .line 289
    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 290
    .line 291
    iget-object v8, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 292
    .line 293
    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 294
    .line 295
    .line 296
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 297
    .line 298
    check-cast v6, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 299
    .line 300
    const-string v7, "TwoPhoneModeIconController"

    .line 301
    .line 302
    iget-object v8, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->quickStarListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

    .line 303
    .line 304
    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 305
    .line 306
    .line 307
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 308
    .line 309
    check-cast v6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 310
    .line 311
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    .line 312
    .line 313
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->updateTwoPhoneMode()V

    .line 317
    .line 318
    .line 319
    :cond_4
    sget-boolean v5, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 320
    .line 321
    if-eqz v5, :cond_5

    .line 322
    .line 323
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;

    .line 324
    .line 325
    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    .line 326
    .line 327
    .line 328
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    .line 329
    .line 330
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;->view:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 331
    .line 332
    iput-object v5, v6, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    .line 333
    .line 334
    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 335
    .line 336
    check-cast v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 337
    .line 338
    const v6, 0x7f0a0b93

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    check-cast v5, Landroid/view/ViewGroup;

    .line 346
    .line 347
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;

    .line 348
    .line 349
    invoke-direct {v6, p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;Landroid/view/ViewGroup;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 353
    .line 354
    .line 355
    :cond_5
    sget-boolean v5, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 356
    .line 357
    if-eqz v5, :cond_6

    .line 358
    .line 359
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->statusIconContainerCallbacks:Ljava/util/ArrayList;

    .line 360
    .line 361
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$statusIconContainerCallback$1;

    .line 362
    .line 363
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 367
    .line 368
    if-nez v0, :cond_7

    .line 369
    .line 370
    return-void

    .line 371
    :cond_7
    filled-new-array {v3, v4}, [Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 376
    .line 377
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 378
    .line 379
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;

    .line 384
    .line 385
    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;[Landroid/view/View;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 392
    .line 393
    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 394
    .line 395
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;

    .line 396
    .line 397
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 401
    .line 402
    .line 403
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 404
    .line 405
    if-eqz p0, :cond_8

    .line 406
    .line 407
    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 409
    .line 410
    .line 411
    :cond_8
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->transitionListener:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 18
    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->animatedViews:Ljava/util/List;

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    .line 41
    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 48
    .line 49
    const-string v1, "PhoneStatusBarViewController"

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/dump/DumpManager;->nsDumpables:Ljava/util/Map;

    .line 53
    .line 54
    check-cast v2, Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Landroid/widget/ImageView;

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object v1, v2

    .line 81
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 82
    .line 83
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Landroid/widget/ImageView;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;

    .line 87
    .line 88
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "TwoPhoneModeIconController"

    .line 94
    .line 95
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 96
    .line 97
    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    .line 103
    .line 104
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 105
    .line 106
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 114
    .line 115
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 121
    .line 122
    const-string v1, "[QuickStar]PhoneStatusBarClockManager"

    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 125
    .line 126
    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    .line 132
    .line 133
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    .line 134
    .line 135
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$statusIconContainerCallback$1;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->statusIconContainerCallbacks:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    monitor-exit v0

    .line 160
    throw p0
.end method

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updatePaddingsForPrivacyDot(Landroid/view/WindowInsets;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    .line 12
    .line 13
    .line 14
    move-result v19

    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    .line 20
    .line 21
    .line 22
    move-result v20

    .line 23
    iget-object v3, v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v4, v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 27
    .line 28
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/graphics/Insets;->left:I

    .line 37
    .line 38
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v1, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget v1, v1, Landroid/graphics/Insets;->right:I

    .line 47
    .line 48
    iget-object v5, v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v23, 0x3bff

    .line 71
    .line 72
    move/from16 v21, v0

    .line 73
    .line 74
    move/from16 v22, v1

    .line 75
    .line 76
    invoke-static/range {v4 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIII)Lcom/android/systemui/statusbar/events/ViewState;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    monitor-exit v3

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    monitor-exit v3

    .line 89
    throw v0
.end method
