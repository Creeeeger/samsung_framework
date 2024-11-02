.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDetailAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

.field public mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$5;

.field public mDetailCollapseAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mDetailContents:Ljava/util/ArrayList;

.field public mDetailHideAnimSet:Landroid/animation/AnimatorSet;

.field public final mDetailHideAnimators:Ljava/util/ArrayList;

.field public mDetailShowAnimSet:Landroid/animation/AnimatorSet;

.field public final mDetailShowAnimators:Ljava/util/ArrayList;

.field public mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

.field public mDetailView:Landroid/view/View;

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderDateButtonContainer:Landroid/view/View;

.field public final mLazyExpandAnimator:Ldagger/Lazy;

.field public mPagedTileLayout:Landroid/view/View;

.field public final mPanelAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

.field public final mPanelContents:Ljava/util/ArrayList;

.field public mPanelExpanded:Z

.field public mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

.field public final mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

.field public mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

.field public final mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

.field public final mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public mQsFullyExpanded:Z

.field public mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public final mUpdateAnimators:Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3e0f5c29    # 0.14f

    .line 4
    .line 5
    .line 6
    const v2, 0x3fab851f    # 1.34f

    .line 7
    .line 8
    .line 9
    const v3, 0x3ebd70a4    # 0.37f

    .line 10
    .line 11
    .line 12
    const v4, 0x3e99999a    # 0.3f

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/qs/bar/BarController;",
            "Lcom/android/systemui/qs/SecQSPanelController;",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance p3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance p3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    .line 45
    .line 46
    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    .line 47
    .line 48
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    check-cast p5, Lcom/android/systemui/util/SettingsHelper;

    .line 53
    .line 54
    invoke-virtual {p5}, Lcom/android/systemui/util/SettingsHelper;->isAnimationRemoved()Z

    .line 55
    .line 56
    .line 57
    new-instance p5, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/4 p6, 0x0

    .line 60
    invoke-direct {p5, p0, p6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;I)V

    .line 61
    .line 62
    .line 63
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    new-instance p5, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    .line 66
    .line 67
    invoke-direct {p5, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    .line 68
    .line 69
    .line 70
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    .line 71
    .line 72
    new-instance p5, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    .line 73
    .line 74
    invoke-direct {p5, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    .line 75
    .line 76
    .line 77
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLazyExpandAnimator:Ldagger/Lazy;

    .line 82
    .line 83
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 84
    .line 85
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 90
    .line 91
    const-string p2, "animator_duration_scale"

    .line 92
    .line 93
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    filled-new-array {p2}, [Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public static makeTransitionAnimator(Landroid/view/View;IFZLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 3
    .line 4
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [F

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aput p2, v3, v4

    .line 11
    .line 12
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    aput-object p2, v0, v4

    .line 17
    .line 18
    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 19
    .line 20
    new-array v1, v2, [F

    .line 21
    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    .line 24
    const v5, 0x3f6e147b    # 0.93f

    .line 25
    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    move v6, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v6, v5

    .line 32
    :goto_0
    aput v6, v1, v4

    .line 33
    .line 34
    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    aput-object p2, v0, v2

    .line 39
    .line 40
    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 41
    .line 42
    new-array v1, v2, [F

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v3, v5

    .line 48
    :goto_1
    aput v3, v1, v4

    .line 49
    .line 50
    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/4 p3, 0x2

    .line 55
    aput-object p2, v0, p3

    .line 56
    .line 57
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    int-to-long p1, p1

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    .line 65
    int-to-long p1, v4

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method


# virtual methods
.method public final clearDetailView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$5;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$5;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    const/4 v2, 0x7

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v1, v3, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailOpening(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailShowing(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailClosing(Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final destroyQSViews()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderDateButtonContainer:Landroid/view/View;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 24
    .line 25
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SecQSsTransitionAnimator ============================================= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, " mPanelContents "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, " visibility = "

    .line 27
    .line 28
    const-string v4, " : alpha = "

    .line 29
    .line 30
    const-string v5, "  "

    .line 31
    .line 32
    if-eqz v2, :cond_0

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
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string v1, " mDetailContents "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroid/view/View;

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    const-string p0, "============================================================== "

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    return-object v0
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 1
    const-string p0, "animator_duration_scale"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAnimationRemoved()Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mThemeSeq:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAssetSeq:I

    .line 8
    .line 9
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mUIMode:I

    .line 14
    .line 15
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 16
    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onPanelClosed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

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
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailShowing:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailClosing:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCollapseAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    cmpl-float v0, p1, v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailOpening(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailShowing(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailClosing(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    .line 59
    cmpl-float p1, p1, v0

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final restorePanelView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

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
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/view/View;

    .line 25
    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPagedTileLayout:Landroid/view/View;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setFullyExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsFullyExpanded:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->updateAnimators()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->destroyQSViews()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateAnimators()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

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
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->destroyQSViews()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v4, 0x7f0a0477

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 46
    .line 47
    const v4, 0x7f0a087c

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 59
    .line 60
    const v4, 0x7f0a0879

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderDateButtonContainer:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v4, 0x7f0a0881

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 93
    .line 94
    move v0, v3

    .line 95
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ge v0, v4, :cond_2

    .line 102
    .line 103
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 116
    .line 117
    const v4, 0x7f0a086e

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPagedTileLayout:Landroid/view/View;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 127
    .line 128
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const v4, 0x7f0a0851

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :goto_1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 145
    .line 146
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    sget-object v6, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 165
    .line 166
    const/4 v7, 0x0

    .line 167
    const/16 v8, 0x15e

    .line 168
    .line 169
    const/4 v9, 0x1

    .line 170
    if-eqz v5, :cond_4

    .line 171
    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    check-cast v5, Landroid/view/View;

    .line 177
    .line 178
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 179
    .line 180
    if-ne v5, v10, :cond_3

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    move v9, v3

    .line 184
    :goto_3
    invoke-static {v5, v8, v7, v9, v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 193
    .line 194
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 198
    .line 199
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    const/high16 v5, 0x3f800000    # 1.0f

    .line 218
    .line 219
    if-eqz v4, :cond_6

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Landroid/view/View;

    .line 226
    .line 227
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 228
    .line 229
    if-eqz v10, :cond_5

    .line 230
    .line 231
    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 232
    .line 233
    iget-boolean v10, v10, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 234
    .line 235
    if-nez v10, :cond_5

    .line 236
    .line 237
    iget-boolean v10, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mDetailTriggeredExpand:Z

    .line 238
    .line 239
    if-eqz v10, :cond_5

    .line 240
    .line 241
    instance-of v10, v4, Lcom/android/systemui/qs/PagedTileLayout;

    .line 242
    .line 243
    if-eqz v10, :cond_5

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_5
    invoke-static {v4, v8, v5, v9, v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 255
    .line 256
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 260
    .line 261
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 267
    .line 268
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 269
    .line 270
    .line 271
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    .line 272
    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_7

    .line 287
    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Landroid/view/View;

    .line 293
    .line 294
    const/16 v8, 0x1e0

    .line 295
    .line 296
    invoke-static {v4, v8, v5, v9, v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    .line 305
    .line 306
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    .line 310
    .line 311
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailAnimListener:Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    .line 312
    .line 313
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 317
    .line 318
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 319
    .line 320
    .line 321
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    .line 322
    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v2, :cond_8

    .line 337
    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Landroid/view/View;

    .line 343
    .line 344
    const/16 v4, 0x12c

    .line 345
    .line 346
    invoke-static {v2, v4, v7, v3, v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IFZLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    .line 355
    .line 356
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 357
    .line 358
    .line 359
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 360
    .line 361
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 365
    .line 366
    const/4 v2, 0x2

    .line 367
    new-array v2, v2, [F

    .line 368
    .line 369
    fill-array-data v2, :array_0

    .line 370
    .line 371
    .line 372
    const-string v3, "alpha"

    .line 373
    .line 374
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 375
    .line 376
    .line 377
    const v1, 0x3e99999a    # 0.3f

    .line 378
    .line 379
    .line 380
    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCollapseAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 387
    .line 388
    iput-boolean v9, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 389
    .line 390
    return-void

    .line 391
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updatePanelExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    .line 2
    .line 3
    return-void
.end method
