.class public final Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final indicatorCutoutUtilProvider:Ljavax/inject/Provider;

.field public final indicatorGardenPresenterProvider:Ljavax/inject/Provider;

.field public final indicatorScaleGardenerProvider:Ljavax/inject/Provider;

.field public final statusIconContainerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
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
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->statusIconContainerProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->indicatorGardenPresenterProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->indicatorCutoutUtilProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    return-void
.end method

.method public static provideStatusIconContainerController(Lcom/android/systemui/statusbar/phone/StatusIconContainer;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)Lcom/android/systemui/statusbar/phone/StatusIconContainerController;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/systemui/shade/ShadeModule;->Companion:Lcom/android/systemui/shade/ShadeModule$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    move-object v7, p5

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;-><init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->statusIconContainerProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Landroid/content/Context;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->indicatorGardenPresenterProvider:Ljavax/inject/Provider;

    .line 38
    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->indicatorCutoutUtilProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    move-object v6, p0

    .line 53
    check-cast v6, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 54
    .line 55
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shade/ShadeModule_Companion_ProvideStatusIconContainerControllerFactory;->provideStatusIconContainerController(Lcom/android/systemui/statusbar/phone/StatusIconContainer;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
