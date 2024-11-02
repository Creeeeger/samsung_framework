.class public final Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

.field public final headerController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public horizontalPanelTranslation:F

.field public final isFullyCollapsedSupplier:Ljava/util/function/BooleanSupplier;

.field public final isFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public lastOrientation:I

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final panelViewControllerLazy:Ldagger/Lazy;

.field public final positionMinSideMarginSupplier:Ljava/util/function/IntSupplier;

.field public final privacyDialogHorizontalPositionConsumer:Ljava/util/function/IntConsumer;

.field public final qsFrameLayoutSupplier:Ljava/util/function/Supplier;

.field public updateHorizontalPositionRunnable:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1;

.field public final viewSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/ShadeHeaderController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->headerController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyCollapsedSupplier:Ljava/util/function/BooleanSupplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->positionMinSideMarginSupplier:Ljava/util/function/IntSupplier;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->privacyDialogHorizontalPositionConsumer:Ljava/util/function/IntConsumer;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->panelViewControllerLazy:Ldagger/Lazy;

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->lastOrientation:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final resetHorizontalPanelPosition(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->expandedFractionSupplier:Ljava/util/function/DoubleSupplier;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    double-to-float v0, v3

    .line 13
    const v3, 0x3c23d70a    # 0.01f

    .line 14
    .line 15
    .line 16
    cmpl-float v0, v0, v3

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x2

    .line 40
    if-ne v0, v4, :cond_0

    .line 41
    .line 42
    move v0, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v1

    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    move v1, v3

    .line 50
    :cond_1
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->horizontalPanelTranslation:F

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyCollapsedSupplier:Ljava/util/function/BooleanSupplier;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->isFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-interface {v2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    double-to-float v1, v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v3, "skip resetHorizontalPanelPosition("

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, "), isFullyCollapsed():"

    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ", isFullyExpanded():"

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ", getExpandedFraction():"

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p1, "SecTabletHorizontalPanelPositionHelperImpl"

    .line 111
    .line 112
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->setHorizontalPanelTranslation(F)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final setHorizontalPanelTranslation(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->horizontalPanelTranslation:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->headerController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->panelViewControllerLazy:Ldagger/Lazy;

    .line 29
    .line 30
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->privacyDialogHorizontalPositionConsumer:Ljava/util/function/IntConsumer;

    .line 42
    .line 43
    float-to-int p1, p1

    .line 44
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final updateTabletHorizontalPanelPosition(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->viewSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    iget-object v2, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    const/high16 v3, 0x3fe00000    # 1.75f

    .line 28
    .line 29
    mul-float/2addr v3, v2

    .line 30
    cmpl-float v3, v3, v1

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-gtz v3, :cond_4

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v0, v3, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v3, v4

    .line 56
    :goto_0
    if-eqz v3, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const/4 v0, 0x2

    .line 60
    int-to-float v0, v0

    .line 61
    div-float v3, v1, v0

    .line 62
    .line 63
    div-float/2addr v2, v0

    .line 64
    iget-object v4, p0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->positionMinSideMarginSupplier:Ljava/util/function/IntSupplier;

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    int-to-float v4, v4

    .line 71
    add-float/2addr v4, v2

    .line 72
    sub-float v2, v1, v4

    .line 73
    .line 74
    const/4 v5, 0x3

    .line 75
    int-to-float v5, v5

    .line 76
    div-float/2addr v1, v5

    .line 77
    mul-float/2addr v0, v1

    .line 78
    cmpg-float v1, p1, v1

    .line 79
    .line 80
    if-gez v1, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    cmpl-float p1, p1, v0

    .line 84
    .line 85
    if-lez p1, :cond_3

    .line 86
    .line 87
    move v4, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v4, v3

    .line 90
    :goto_1
    sub-float/2addr v4, v3

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->setHorizontalPanelTranslation(F)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->resetHorizontalPanelPosition(Z)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
