.class public final Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mAnimationUtils:Lcom/android/systemui/qp/util/AnimationUtils;

.field public final mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

.field public mBrightnessDetailIcon:Landroid/widget/ImageView;

.field public mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBrightnessMirror:Landroid/widget/FrameLayout;

.field public mBrightnessMirrorHeight:I

.field public final mBrightnessMirrorListeners:Landroid/util/ArraySet;

.field public mBrightnessMirrorWidth:I

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public mExpanded:Z

.field public mIconAnimationValue:F

.field public final mInt2Cache:[I

.field public final mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSliderContainer:Landroid/widget/RelativeLayout;

.field public final mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public mTileLayout:Landroid/widget/LinearLayout;

.field public mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mVisibilityCallback:Ljava/util/function/Consumer;

.field public final tilesOnMirror:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ljava/util/function/Consumer;Lcom/android/systemui/blur/SecQpBlurController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/NotificationShadeWindowView;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/blur/SecQpBlurController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->tilesOnMirror:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 26
    .line 27
    const v0, 0x7f0a01ae

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {p4, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 49
    .line 50
    .line 51
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    invoke-virtual {p4, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 64
    .line 65
    new-instance p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 68
    .line 69
    .line 70
    check-cast p2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 71
    .line 72
    iput-object p1, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    .line 73
    .line 74
    const-class p1, Lcom/android/systemui/qp/util/AnimationUtils;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/android/systemui/qp/util/AnimationUtils;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mAnimationUtils:Lcom/android/systemui/qp/util/AnimationUtils;

    .line 83
    .line 84
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 93
    .line 94
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->initResources()V

    .line 105
    .line 106
    .line 107
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 108
    .line 109
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 110
    .line 111
    if-eqz p1, :cond_0

    .line 112
    .line 113
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    .line 114
    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateLayout()V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final hideMirror()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 11
    .line 12
    const/16 v1, 0xff

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAlpha(IZ)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 21
    .line 22
    iget v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v3, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 31
    .line 32
    int-to-float v1, v3

    .line 33
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 34
    .line 35
    .line 36
    :goto_0
    move v0, v3

    .line 37
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v0, v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 63
    .line 64
    iput-boolean v3, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsMirror:Z

    .line 65
    .line 66
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 69
    .line 70
    xor-int/2addr v1, v2

    .line 71
    iget-boolean v2, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 72
    .line 73
    if-eq v2, v1, :cond_2

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Lcom/android/systemui/blur/SecQpBlurController;->setBrightnessMirrorVisible(Z)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public final initResources()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    const v1, 0x7f0a01aa

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mAnimationUtils:Lcom/android/systemui/qp/util/AnimationUtils;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v3, "brightness_icon_85.json"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled$1()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    :cond_1
    const v2, 0x7f06003c

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 72
    .line 73
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 74
    .line 75
    const-string v4, "normal"

    .line 76
    .line 77
    const-string v5, "**"

    .line 78
    .line 79
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 87
    .line 88
    new-instance v5, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 89
    .line 90
    new-instance v6, Lcom/airbnb/lottie/SimpleColorFilter;

    .line 91
    .line 92
    invoke-direct {v6, v1}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    const v1, 0x7f0a01b2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/widget/LinearLayout;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    const v1, 0x7f0a0a51

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 122
    .line 123
    const v1, 0x7f0a01a8

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 133
    .line 134
    return-void
.end method

.method public final reinflate()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x7f0d032f

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iget-object v5, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 52
    .line 53
    const/4 v6, -0x1

    .line 54
    invoke-virtual {v3, v5, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateLayout()V

    .line 65
    .line 66
    .line 67
    move v0, v4

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ge v0, v2, :cond_0

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v2, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->initResources()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    if-nez v1, :cond_1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const v2, 0x7f0a01a9

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-nez v1, :cond_2

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    if-eqz v0, :cond_3

    .line 120
    .line 121
    const/16 v4, 0x8

    .line 122
    .line 123
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateLayout()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setLocationAndSize(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorWidth:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorHeight:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateLayout()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    div-int/lit8 v3, v3, 0x2

    .line 29
    .line 30
    add-int/2addr v3, v2

    .line 31
    const/4 v2, 0x1

    .line 32
    aget v4, v0, v2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    div-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    add-int/2addr p1, v4

    .line 41
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 55
    .line 56
    .line 57
    aget v1, v0, v1

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    div-int/lit8 v4, v4, 0x2

    .line 66
    .line 67
    add-int/2addr v4, v1

    .line 68
    aget v0, v0, v2

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    div-int/lit8 v1, v1, 0x2

    .line 77
    .line 78
    add-int/2addr v1, v0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    sub-int/2addr v3, v4

    .line 82
    int-to-float v2, v3

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    sub-int/2addr p1, v1

    .line 89
    int-to-float p1, p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final showMirror()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsMirror:Z

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 14
    .line 15
    xor-int/2addr v1, v2

    .line 16
    iget-boolean v3, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v3, v1, :cond_0

    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const v3, 0x7f06095a

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const v3, 0x7f06095b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 76
    .line 77
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 83
    .line 84
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 85
    .line 86
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAlpha(IZ)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 90
    .line 91
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 92
    .line 93
    const/high16 v3, 0x3f800000    # 1.0f

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    float-to-int v1, v1

    .line 100
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 101
    .line 102
    iget v3, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 103
    .line 104
    if-ne v3, v1, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iput v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 110
    .line 111
    int-to-float v1, v1

    .line 112
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 113
    .line 114
    .line 115
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->tilesOnMirror:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 134
    .line 135
    .line 136
    :goto_2
    if-ge v4, v1, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 143
    .line 144
    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 145
    .line 146
    new-instance v5, Landroid/widget/TextView;

    .line 147
    .line 148
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    const-string v6, "Dummy text"

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    .line 179
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v4, v4, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    const/16 v1, 0x8

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    :cond_4
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 195
    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Lcom/android/systemui/blur/SecQpBlurController;->setBrightnessMirrorVisible(Z)V

    .line 201
    .line 202
    .line 203
    :cond_5
    return-void
.end method

.method public final updateIconSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    .line 16
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17
    .line 18
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    const v0, 0x7f0a01a8

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 41
    .line 42
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 43
    .line 44
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateLayout()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f070be7

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const v5, 0x7f0a01a6

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 46
    .line 47
    const/4 v8, 0x2

    .line 48
    if-ne v7, v8, :cond_1

    .line 49
    .line 50
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 51
    .line 52
    iget-object v7, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    .line 62
    .line 63
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 64
    .line 65
    if-eqz v7, :cond_0

    .line 66
    .line 67
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 68
    .line 69
    iget-object v7, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    const/16 v7, 0x10

    .line 78
    .line 79
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-virtual {v5, v2, v7, v2, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-virtual {v2, v6, v5, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    invoke-virtual {v7, v2, v8, v2, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-virtual {v2, v6, v7, v6, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 147
    .line 148
    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    .line 161
    .line 162
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorWidth:I

    .line 163
    .line 164
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    .line 166
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorHeight:I

    .line 167
    .line 168
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .line 184
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 194
    .line 195
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    const/4 v8, -0x1

    .line 200
    if-nez v3, :cond_4

    .line 201
    .line 202
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_3

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    const v2, 0x7f0700fd

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    goto :goto_3

    .line 217
    :cond_4
    :goto_2
    move v2, v8

    .line 218
    :goto_3
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 219
    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 221
    .line 222
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 226
    .line 227
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .line 242
    if-nez v3, :cond_6

    .line 243
    .line 244
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-eqz v7, :cond_5

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_5
    const/4 v8, -0x2

    .line 252
    :cond_6
    :goto_4
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    .line 254
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutHeight(Landroid/content/Context;)I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 259
    .line 260
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutRightMargin(Landroid/content/Context;)I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    if-eqz v3, :cond_7

    .line 272
    .line 273
    const v3, 0x7f070110

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    goto :goto_5

    .line 281
    :cond_7
    const v3, 0x7f07010f

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    :goto_5
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 289
    .line 290
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 291
    .line 292
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    .line 294
    .line 295
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 296
    .line 297
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-le v3, v4, :cond_8

    .line 302
    .line 303
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mTileLayout:Landroid/widget/LinearLayout;

    .line 304
    .line 305
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    .line 315
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    .line 324
    .line 325
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 326
    .line 327
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessIconSize(Landroid/content/Context;)I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateIconSize(I)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessIconSize(Landroid/content/Context;)I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessIconSize(Landroid/content/Context;)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 346
    .line 347
    if-nez v2, :cond_9

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_9
    const v3, 0x7f0a01a9

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 358
    .line 359
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .line 365
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 366
    .line 367
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .line 371
    .line 372
    :cond_a
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 373
    .line 374
    if-eqz p0, :cond_b

    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->updateSliderHeight()V

    .line 377
    .line 378
    .line 379
    :cond_b
    return-void
.end method
