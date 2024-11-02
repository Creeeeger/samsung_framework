.class public final Lcom/android/keyguard/KeyguardCarrierTextViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# instance fields
.field public mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

.field public mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

.field public final mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field public mEssentialLeftWidth:I

.field public mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final mGardener:Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 10
    .line 11
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

    .line 12
    .line 13
    const-class v0, Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, p0, p0, v0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardener:Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getEssentialLeftWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f070179

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    .line 17
    .line 18
    :cond_0
    iget p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    .line 19
    .line 20
    return p0
.end method

.method public final getEssentialRightWidth()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 8
    .line 9
    const v1, 0x7f0a0196

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 8
    .line 9
    const v1, 0x7f0a018d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 8
    .line 9
    const v1, 0x7f0a0193

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 8
    .line 9
    const v1, 0x7f0a0195

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

    .line 21
    .line 22
    return-object p0
.end method

.method public final onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 11
    .line 12
    const v1, 0x7f0a018c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/keyguard/CarrierText;

    .line 20
    .line 21
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 35
    .line 36
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 37
    .line 38
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "background"

    .line 47
    .line 48
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 56
    .line 57
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextView;->updateVisibility()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardener:Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 4
    .line 5
    const p2, 0x7f0a018c

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/keyguard/CarrierText;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p2, "background"

    .line 19
    .line 20
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const p2, 0x7f06099c

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const p2, 0x7f060485

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
