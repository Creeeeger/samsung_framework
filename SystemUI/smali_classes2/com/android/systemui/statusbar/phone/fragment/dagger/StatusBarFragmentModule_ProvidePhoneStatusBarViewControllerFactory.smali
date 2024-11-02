.class public final Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final phoneStatusBarViewControllerFactoryProvider:Ljavax/inject/Provider;

.field public final phoneStatusBarViewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewControllerFactoryProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    return-void
.end method

.method public static providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->progressProvider:Ljava/util/Optional;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 26
    .line 27
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 28
    .line 29
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 30
    .line 31
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 32
    .line 33
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->userChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 34
    .line 35
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    .line 36
    .line 37
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 38
    .line 39
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 40
    .line 41
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 42
    .line 43
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    .line 44
    .line 45
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->knoxStateBarViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    .line 48
    .line 49
    move-object/from16 v16, v3

    .line 50
    .line 51
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    .line 52
    .line 53
    move-object/from16 v17, v3

    .line 54
    .line 55
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 56
    .line 57
    move-object/from16 v18, v3

    .line 58
    .line 59
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 60
    .line 61
    move-object/from16 v19, v3

    .line 62
    .line 63
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 64
    .line 65
    move-object/from16 v20, v3

    .line 66
    .line 67
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 68
    .line 69
    move-object/from16 v21, v3

    .line 70
    .line 71
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 72
    .line 73
    move-object/from16 v22, v3

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    .line 76
    .line 77
    move-object/from16 v23, v0

    .line 78
    .line 79
    const/16 v24, 0x0

    .line 80
    .line 81
    move-object/from16 v3, p1

    .line 82
    .line 83
    invoke-direct/range {v2 .. v24}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    return-object v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewControllerFactoryProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
