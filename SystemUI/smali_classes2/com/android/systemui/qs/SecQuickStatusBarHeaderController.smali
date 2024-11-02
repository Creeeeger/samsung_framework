.class public final Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mListening:Z

.field public final mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 5
    .line 6
    iput-object p7, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET_TOP_MARGIN:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    .line 24
    check-cast v3, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const v4, 0x7f0711a0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sub-int/2addr v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 40
    .line 41
    check-cast v2, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 48
    .line 49
    check-cast v3, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 56
    .line 57
    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
