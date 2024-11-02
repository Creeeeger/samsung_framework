.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

.field public mInsetNavigationBarBottomHeight:I

.field public mIsFadingIn:Z

.field public mIsFadingOut:Z

.field public mLabelAlphaAnimStarted:Z

.field public mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

.field public mLastDensityDpi:I

.field public mLastOrientation:I

.field public mLastSemMobileKeyboardCovered:I

.field public final mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

.field public mPreviousVisible:Z

.field public mPreviousVisibleWithoutAnimation:Z

.field public mPrvAlpha:F

.field public final mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastDensityDpi:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastSemMobileKeyboardCovered:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisibleWithoutAnimation:Z

    .line 15
    .line 16
    const/high16 v1, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    .line 22
    .line 23
    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 24
    .line 25
    iget-object v2, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 30
    .line 31
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda15;

    .line 32
    .line 33
    invoke-direct {v4, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda17;

    .line 37
    .line 38
    invoke-direct {v5, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda18;

    .line 42
    .line 43
    invoke-direct {v6, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda19;

    .line 47
    .line 48
    invoke-direct {v7, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda17;

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    invoke-direct {v8, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 55
    .line 56
    .line 57
    new-instance v9, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda19;

    .line 58
    .line 59
    invoke-direct {v9, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 60
    .line 61
    .line 62
    move-object v3, v2

    .line 63
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 67
    .line 68
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mPanelViewSupplier:Ljava/util/function/Supplier;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelView;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 p1, 0x0

    .line 88
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    .line 96
    .line 97
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    .line 98
    .line 99
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final animateLabelAlpha(Landroid/view/View;Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    move v2, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-wide/16 v2, 0x96

    .line 27
    .line 28
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Landroid/view/animation/PathInterpolator;

    .line 42
    .line 43
    const v2, 0x3ed70a3d    # 0.42f

    .line 44
    .line 45
    .line 46
    const v3, 0x3f147ae1    # 0.58f

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_2
    return-void
.end method

.method public final onPanelConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastDensityDpi:I

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastSemMobileKeyboardCovered:I

    .line 14
    .line 15
    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 16
    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    :cond_0
    const/4 v2, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 28
    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastDensityDpi:I

    .line 30
    .line 31
    iget p1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 32
    .line 33
    iput p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastSemMobileKeyboardCovered:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1, v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelViewColor()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final updateLabelViewColor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const p0, -0x61000001

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const v2, -0x66050501

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const v1, 0x7f0605ad

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {v2, v1, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move p0, v2

    .line 50
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final updateLabelVisibility(Z)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mOnKeyguardStateSupplier:Ljava/util/function/BooleanSupplier;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMinExpansionHeightSupplier:Ljava/util/function/IntSupplier;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-double v6, v0

    .line 30
    cmpl-double v0, v4, v6

    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v3

    .line 45
    :goto_0
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    if-eq v0, v4, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 55
    .line 56
    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    .line 59
    .line 60
    iget-boolean v4, v4, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    .line 65
    .line 66
    iget v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    .line 67
    .line 68
    if-ne v0, v1, :cond_1

    .line 69
    .line 70
    move v0, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v0, v3

    .line 73
    :goto_1
    if-eqz v0, :cond_2

    .line 74
    .line 75
    move v0, v1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move v0, v3

    .line 78
    :goto_2
    if-nez v0, :cond_3

    .line 79
    .line 80
    move v0, v1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move v0, v3

    .line 83
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    .line 84
    .line 85
    if-ne v4, v0, :cond_4

    .line 86
    .line 87
    if-eqz p1, :cond_d

    .line 88
    .line 89
    :cond_4
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    if-eq v4, v0, :cond_7

    .line 94
    .line 95
    const-string/jumbo v4, "updateLabelVisibility(forceUpdate:"

    .line 96
    .line 97
    .line 98
    const-string v5, ") preV:"

    .line 99
    .line 100
    invoke-static {v4, p1, v5}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    .line 105
    .line 106
    const-string v6, " >> newV:"

    .line 107
    .line 108
    const-string v7, ", isFadingAnimationRunning()"

    .line 109
    .line 110
    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    .line 114
    .line 115
    if-nez v5, :cond_6

    .line 116
    .line 117
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    .line 118
    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move v5, v3

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    :goto_4
    move v5, v1

    .line 125
    :goto_5
    const-string v6, "DataUsageLabelManager"

    .line 126
    .line 127
    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    .line 131
    .line 132
    if-nez v4, :cond_9

    .line 133
    .line 134
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    .line 135
    .line 136
    if-eqz v4, :cond_8

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_8
    move v1, v3

    .line 140
    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 141
    .line 142
    if-eqz p1, :cond_c

    .line 143
    .line 144
    :cond_a
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz v0, :cond_b

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_b
    const/16 v3, 0x8

    .line 152
    .line 153
    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    :cond_c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    .line 157
    .line 158
    :cond_d
    return-void
.end method

.method public final updateNavBarHeight(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    .line 15
    .line 16
    if-ne v2, p1, :cond_5

    .line 17
    .line 18
    iget-object v2, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    .line 24
    .line 25
    iget-boolean v7, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    .line 26
    .line 27
    iget-boolean v8, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    .line 28
    .line 29
    sget-boolean v9, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 30
    .line 31
    if-eqz v9, :cond_2

    .line 32
    .line 33
    iget-object v9, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 34
    .line 35
    const-string v10, "game_double_swipe_enable"

    .line 36
    .line 37
    invoke-virtual {v9, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_2

    .line 46
    .line 47
    move v9, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v9, v3

    .line 50
    :goto_0
    iput-boolean v9, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    iput-boolean v9, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    .line 63
    .line 64
    iget-boolean v9, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    .line 65
    .line 66
    if-ne v9, v6, :cond_4

    .line 67
    .line 68
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    .line 69
    .line 70
    if-ne v6, v7, :cond_4

    .line 71
    .line 72
    if-eq v2, v8, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    move v2, v3

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    move v2, v4

    .line 78
    :goto_3
    if-eqz v2, :cond_6

    .line 79
    .line 80
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v6, "updateNavBarHeight("

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v6, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 89
    .line 90
    const-string v7, " >> "

    .line 91
    .line 92
    const-string v8, ") "

    .line 93
    .line 94
    invoke-static {v2, v6, v7, p1, v8}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->getDumpText()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v5, "DataUsageLabelManager"

    .line 109
    .line 110
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iput p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 114
    .line 115
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    invoke-direct {p1, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v0, p0, p1, v4}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void
.end method
