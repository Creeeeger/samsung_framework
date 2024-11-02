.class public final Lcom/android/systemui/qs/animator/QsOpenAnimator;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final mAnimContents:Ljava/util/ArrayList;

.field public final mBarController:Lcom/android/systemui/qs/bar/BarController;

.field public mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

.field public mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mCarrierIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mContext:Landroid/content/Context;

.field public mFadingSpan:F

.field public mHeader:Landroid/view/View;

.field public mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mHeaderDateSettingContainer:Landroid/view/View;

.field public mHeaderLockShadeAnimator:Landroid/animation/ValueAnimator;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mHeadsUpPinned:Z

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mLoc:[I

.field public mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mMediaPlayerBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelExpansion:F

.field public mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mQuickQsPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mYDiff:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 12
    .line 13
    const v1, 0x3ed70a3d    # 0.42f

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const v3, 0x3f147ae1    # 0.58f

    .line 18
    .line 19
    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLoc:[I

    .line 31
    .line 32
    iput v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const p2, 0x7f070c53

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mYDiff:I

    .line 53
    .line 54
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 55
    .line 56
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 57
    .line 58
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQuickQsPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 59
    .line 60
    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 61
    .line 62
    return-void
.end method

.method public static getRelativePositionInt(Landroid/view/View;[I)V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    aget v1, p1, v0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    aput v2, p1, v0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    aget v1, p1, v0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v1

    .line 26
    aput v2, p1, v0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/view/View;

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt(Landroid/view/View;[I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final destroyQSViews()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 23
    .line 24
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "QsOpenAnimator ============================================= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/view/View;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "  "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " : alpha = "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " translationY = "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " visibility = "

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const-string p0, "============================================================== "

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public final getEndDelay(Landroid/view/View;I)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLoc:[I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput v3, v2, v0

    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt(Landroid/view/View;[I)V

    .line 21
    .line 22
    .line 23
    aget p1, v2, v0

    .line 24
    .line 25
    add-int/2addr p1, p2

    .line 26
    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    int-to-float p2, p2

    .line 33
    int-to-float p1, p1

    .line 34
    sub-float p1, p2, p1

    .line 35
    .line 36
    iget p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mFadingSpan:F

    .line 37
    .line 38
    sub-float/2addr p1, p0

    .line 39
    div-float/2addr p1, p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p1, v1

    .line 42
    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final getStartDelay(Landroid/view/View;)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLoc:[I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput v3, v2, v0

    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt(Landroid/view/View;[I)V

    .line 21
    .line 22
    .line 23
    aget p1, v2, v0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    iget p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mYDiff:I

    .line 33
    .line 34
    sub-int/2addr p1, p0

    .line 35
    int-to-float p0, p1

    .line 36
    div-float/2addr p0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move p0, v1

    .line 39
    :goto_0
    const p1, 0x3dcccccd    # 0.1f

    .line 40
    .line 41
    .line 42
    sub-float/2addr p0, p1

    .line 43
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final isThereNoView()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onPanelClosed()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderLockShadeAnimator:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/view/View;

    .line 39
    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    .line 38
    .line 39
    cmpl-float v3, v0, v2

    .line 40
    .line 41
    if-lez v3, :cond_2

    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    .line 49
    .line 50
    :cond_2
    cmpl-float v0, v0, p1

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    cmpl-float v0, p1, v2

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    cmpl-float v0, p1, v1

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    .line 63
    .line 64
    .line 65
    iput p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public final onQsClipBoundChanged(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_9

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    .line 18
    .line 19
    if-nez v0, :cond_9

    .line 20
    .line 21
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_9

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_9

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderLockShadeAnimator:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    move p1, v2

    .line 53
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 54
    .line 55
    const/high16 v3, 0x3f800000    # 1.0f

    .line 56
    .line 57
    if-ne v0, v1, :cond_3

    .line 58
    .line 59
    move p1, v3

    .line 60
    :cond_3
    cmpg-float v0, p1, v2

    .line 61
    .line 62
    if-gez v0, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    move v2, p1

    .line 66
    :goto_0
    cmpl-float p1, v2, v3

    .line 67
    .line 68
    if-lez p1, :cond_5

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move v3, v2

    .line 72
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 92
    .line 93
    .line 94
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 99
    .line 100
    .line 101
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 102
    .line 103
    if-eqz p0, :cond_8

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 106
    .line 107
    .line 108
    :cond_8
    return-void

    .line 109
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    const-string v1, "isThereNoView(), "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 126
    .line 127
    if-nez v1, :cond_b

    .line 128
    .line 129
    const-string v1, "!checkIfAnimatorsInitialized(), "

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_c

    .line 139
    .line 140
    const-string p1, "Float.isNaN(expansion), "

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :cond_c
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    .line 146
    .line 147
    if-eqz p1, :cond_d

    .line 148
    .line 149
    const-string p1, "mHeadsUpPinned, "

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 155
    .line 156
    if-eqz p0, :cond_e

    .line 157
    .line 158
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 159
    .line 160
    .line 161
    :cond_e
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v2, 0x2

    .line 23
    if-ne p1, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    .line 33
    .line 34
    .line 35
    new-array p1, v2, [F

    .line 36
    .line 37
    fill-array-data p1, :array_0

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v0, 0x12c

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsOpenAnimator;Landroid/animation/ValueAnimator;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsOpenAnimator;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderLockShadeAnimator:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_2
    :goto_1
    if-ne p1, v1, :cond_3

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderLockShadeAnimator:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->destroyQSViews()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setQsExpansionPosition(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float p1, p1, v0

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    .line 15
    .line 16
    cmpl-float p1, p1, v0

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final updateAnimators()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    mul-int/lit8 v2, v2, 0x3

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    iput v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mFadingSpan:F

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 34
    .line 35
    iput-object v3, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 38
    .line 39
    invoke-interface {v3}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const v4, 0x7f0a0477

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 51
    .line 52
    const v4, 0x7f0a0879

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string/jumbo v4, "open_anim"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQuickQsPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 71
    .line 72
    check-cast v3, Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v5, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    .line 79
    .line 80
    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 81
    .line 82
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/bar/BarController;->getBarInCollapsed(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 87
    .line 88
    iput-object v5, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    iget-object v5, v5, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 94
    .line 95
    if-nez v5, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v5, v5, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 99
    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    move-object v5, v7

    .line 109
    :goto_1
    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 110
    .line 111
    if-eqz v8, :cond_6

    .line 112
    .line 113
    iget-object v8, v8, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 114
    .line 115
    if-nez v8, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    iget-object v8, v8, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 119
    .line 120
    if-nez v8, :cond_5

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    :goto_2
    move-object v8, v7

    .line 129
    :goto_3
    sget-object v9, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    .line 130
    .line 131
    invoke-virtual {v6, v9}, Lcom/android/systemui/qs/bar/BarController;->getBarInCollapsed(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 136
    .line 137
    if-nez v6, :cond_7

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    iget-object v6, v6, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 141
    .line 142
    if-nez v6, :cond_8

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    :goto_4
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    iget-object v2, v2, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 160
    .line 161
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 165
    .line 166
    const/4 v6, 0x2

    .line 167
    new-array v9, v6, [F

    .line 168
    .line 169
    fill-array-data v9, :array_0

    .line 170
    .line 171
    .line 172
    const-string v10, "alpha"

    .line 173
    .line 174
    invoke-virtual {v2, v4, v10, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 175
    .line 176
    .line 177
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 178
    .line 179
    new-array v9, v6, [F

    .line 180
    .line 181
    iget v11, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mYDiff:I

    .line 182
    .line 183
    neg-int v11, v11

    .line 184
    int-to-float v11, v11

    .line 185
    const/4 v12, 0x0

    .line 186
    aput v11, v9, v12

    .line 187
    .line 188
    const/4 v13, 0x1

    .line 189
    const/4 v14, 0x0

    .line 190
    aput v14, v9, v13

    .line 191
    .line 192
    const-string/jumbo v15, "translationY"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v4, v15, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 199
    .line 200
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    iput v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 205
    .line 206
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    invoke-virtual {v0, v4, v9}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    iput v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 217
    .line 218
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 219
    .line 220
    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 227
    .line 228
    iget-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSysteIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 234
    .line 235
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v9, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 239
    .line 240
    new-array v13, v6, [F

    .line 241
    .line 242
    fill-array-data v13, :array_1

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v9, v10, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 246
    .line 247
    .line 248
    iget-object v9, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 249
    .line 250
    new-array v13, v6, [F

    .line 251
    .line 252
    aput v11, v13, v12

    .line 253
    .line 254
    const/16 v16, 0x1

    .line 255
    .line 256
    aput v14, v13, v16

    .line 257
    .line 258
    invoke-virtual {v2, v9, v15, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 259
    .line 260
    .line 261
    iget-object v9, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    iput v9, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 268
    .line 269
    iget-object v9, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 270
    .line 271
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    invoke-virtual {v0, v9, v13}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    iput v9, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 280
    .line 281
    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 288
    .line 289
    iget-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 295
    .line 296
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 297
    .line 298
    .line 299
    new-array v9, v6, [F

    .line 300
    .line 301
    fill-array-data v9, :array_2

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3, v10, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 305
    .line 306
    .line 307
    new-array v9, v6, [F

    .line 308
    .line 309
    aput v11, v9, v12

    .line 310
    .line 311
    const/4 v13, 0x1

    .line 312
    aput v14, v9, v13

    .line 313
    .line 314
    invoke-virtual {v2, v3, v15, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    iput v9, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 322
    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    invoke-virtual {v0, v3, v9}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 332
    .line 333
    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 334
    .line 335
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 340
    .line 341
    if-eqz v5, :cond_9

    .line 342
    .line 343
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 344
    .line 345
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 346
    .line 347
    .line 348
    new-array v3, v6, [F

    .line 349
    .line 350
    fill-array-data v3, :array_3

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v5, v10, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 354
    .line 355
    .line 356
    new-array v3, v6, [F

    .line 357
    .line 358
    aput v11, v3, v12

    .line 359
    .line 360
    const/4 v9, 0x1

    .line 361
    aput v14, v3, v9

    .line 362
    .line 363
    invoke-virtual {v2, v5, v15, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 371
    .line 372
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    invoke-virtual {v0, v5, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 381
    .line 382
    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 389
    .line 390
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :cond_9
    if-eqz v8, :cond_a

    .line 394
    .line 395
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 396
    .line 397
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 398
    .line 399
    .line 400
    new-array v3, v6, [F

    .line 401
    .line 402
    fill-array-data v3, :array_4

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v8, v10, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 406
    .line 407
    .line 408
    new-array v3, v6, [F

    .line 409
    .line 410
    aput v11, v3, v12

    .line 411
    .line 412
    const/4 v5, 0x1

    .line 413
    aput v14, v3, v5

    .line 414
    .line 415
    invoke-virtual {v2, v8, v15, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 423
    .line 424
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    invoke-virtual {v0, v8, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 433
    .line 434
    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 441
    .line 442
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    :cond_a
    if-eqz v7, :cond_b

    .line 446
    .line 447
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 448
    .line 449
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 450
    .line 451
    .line 452
    new-array v3, v6, [F

    .line 453
    .line 454
    fill-array-data v3, :array_5

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v7, v10, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 458
    .line 459
    .line 460
    new-array v3, v6, [F

    .line 461
    .line 462
    aput v11, v3, v12

    .line 463
    .line 464
    const/4 v5, 0x1

    .line 465
    aput v14, v3, v5

    .line 466
    .line 467
    invoke-virtual {v2, v7, v15, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 475
    .line 476
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 485
    .line 486
    iput-object v4, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 487
    .line 488
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 493
    .line 494
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    :cond_b
    const/4 v1, 0x1

    .line 498
    iput-boolean v1, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 499
    .line 500
    iget v1, v0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    .line 501
    .line 502
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    .line 503
    .line 504
    .line 505
    return-void

    .line 506
    nop

    .line 507
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
