.class public final Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final indicatorCutoutUtilProvider:Ljavax/inject/Provider;

.field public final indicatorScaleGardenerProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->viewProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->indicatorCutoutUtilProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->userTrackerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    return-void
.end method

.method public static provideNetspeedViewController(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/statusbar/policy/NetspeedViewController;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 6
    .line 7
    const v1, 0x7f0a072f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetspeedViewController;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->viewProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->indicatorScaleGardenerProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->indicatorCutoutUtilProvider:Ljavax/inject/Provider;

    .line 18
    .line 19
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->userTrackerProvider:Ljavax/inject/Provider;

    .line 26
    .line 27
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/systemui/settings/UserTracker;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory;->provideNetspeedViewController(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
