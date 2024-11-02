.class public Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;
.super Lcom/android/systemui/qs/QSPanel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

.field public final mContext:Landroid/content/Context;

.field public mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public mQuickSettingsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "SubroomQuickSettingsQSPanelBaseView"

    .line 5
    .line 6
    invoke-static {p2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addPagedTileLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mQuickSettingsContainer:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updatePageIndicator$1()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    check-cast p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SubroomQuickSettingsQSPanelBaseView"

    .line 5
    .line 6
    const-string v1, "onFinishInflate"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0b4a

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mQuickSettingsContainer:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const v0, 0x7f0a040e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 32
    .line 33
    const v0, 0x7f0a0b10

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 43
    .line 44
    const v1, 0x7f0a01af

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    new-instance v1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public final updatePageIndicator$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updatePageIndicator$1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f070c90

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 20
    .line 21
    instance-of v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v3, "setTilePageHeight pageHeight: "

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "SubscreenPagedTileLayout"

    .line 46
    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 51
    .line 52
    if-eq v2, v0, :cond_0

    .line 53
    .line 54
    iput v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    .line 55
    .line 56
    iput v0, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 57
    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
