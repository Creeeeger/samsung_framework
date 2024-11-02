.class public abstract Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public mAnimatorsInitialiezed:Z

.field public mAssetSeq:I

.field public mDetailTriggeredExpand:Z

.field public mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

.field public mExpandedByNotiOverScroll:Z

.field public mIsDetailClosing:Z

.field public mIsDetailOpening:Z

.field public mIsDetailShowing:Z

.field public mPanelExpanded:Z

.field public mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public mQsExpanded:Z

.field public mQsFullyExpanded:Z

.field public mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mState:I

.field public mThemeSeq:I

.field public mUIMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mAnimatorsInitialiezed:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailOpening:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailShowing:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailClosing:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mDetailTriggeredExpand:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandedByNotiOverScroll:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public abstract destroyQSViews()V
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final isDetailVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailOpening:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailShowing:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsDetailClosing:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public isThereNoView()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f0a0881

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const v0, 0x7f0a086e

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :cond_1
    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPanelClosed()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 3
    .line 4
    return-void
.end method

.method public onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    .line 2
    .line 3
    return-void
.end method

.method public setExpandImmediateSupplier(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    return-void
.end method

.method public setFancyClipping(IIIIIZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    .line 3
    return-void
.end method

.method public setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    return-void
.end method

.method public abstract setQs(Lcom/android/systemui/plugins/qs/QS;)V
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 2
    .line 3
    return-void
.end method

.method public setQsExpansionPosition(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public setStackScrollerOverscrolling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mExpandedByNotiOverScroll:Z

    .line 2
    .line 3
    return-void
.end method

.method public abstract updateAnimators()V
.end method

.method public updatePanelExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 2
    .line 3
    return-void
.end method
