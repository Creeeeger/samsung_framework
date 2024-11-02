.class public final Lcom/android/systemui/qs/QSContainerImplController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

.field public final mContainerTouchHandler:Lcom/android/systemui/qs/QSContainerImplController$2;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHUNListener:Lcom/android/systemui/qs/QSContainerImplController$3;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mOnLayoutChangeListener:Lcom/android/systemui/qs/QSContainerImplController$4;

.field public final mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public final mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public final mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/qs/QSContainerImplController$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSContainerImplController$1;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

    .line 10
    .line 11
    new-instance p1, Lcom/android/systemui/qs/QSContainerImplController$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSContainerImplController$2;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mContainerTouchHandler:Lcom/android/systemui/qs/QSContainerImplController$2;

    .line 17
    .line 18
    new-instance p1, Lcom/android/systemui/qs/QSContainerImplController$3;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSContainerImplController$3;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mHUNListener:Lcom/android/systemui/qs/QSContainerImplController$3;

    .line 24
    .line 25
    new-instance p1, Lcom/android/systemui/qs/QSContainerImplController$4;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSContainerImplController$4;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mOnLayoutChangeListener:Lcom/android/systemui/qs/QSContainerImplController$4;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    .line 35
    .line 36
    iput-object p6, p0, Lcom/android/systemui/qs/QSContainerImplController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 39
    .line 40
    iput-object p5, p0, Lcom/android/systemui/qs/QSContainerImplController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    .line 44
    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 49
    .line 50
    iput-object p7, p0, Lcom/android/systemui/qs/QSContainerImplController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->updateTabletResources(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v3, 0x7f070e70

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const v4, 0x7f070e72

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v4, v3

    .line 55
    const v3, 0x7f070e71

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/2addr v0, v4

    .line 63
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 64
    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 66
    .line 67
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mContainerTouchHandler:Lcom/android/systemui/qs/QSContainerImplController$2;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mHUNListener:Lcom/android/systemui/qs/QSContainerImplController$3;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 86
    .line 87
    .line 88
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_TOP_MARGIN:Z

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, v1, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mOnLayoutChangeListener:Lcom/android/systemui/qs/QSContainerImplController$4;

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mHUNListener:Lcom/android/systemui/qs/QSContainerImplController$3;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_TOP_MARGIN:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mOnLayoutChangeListener:Lcom/android/systemui/qs/QSContainerImplController$4;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
