.class public Lcom/android/systemui/qs/SecQuickStatusBarHeader;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

.field public mCutOutHeight:I

.field public mDateButtonContainer:Landroid/view/View;

.field public mDateView:Landroid/widget/TextView;

.field public final mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field public mExpanded:Z

.field public mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public final mLogBuilder:Ljava/lang/StringBuilder;

.field public mNavBarHeight:I

.field public final mPanelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public mPrivacyChip:Landroid/view/View;

.field public mQsDisabled:Z

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    .line 8
    .line 9
    new-instance p2, Lcom/android/systemui/log/SecTouchLogHelper;

    .line 10
    .line 11
    invoke-direct {p2}, Lcom/android/systemui/log/SecTouchLogHelper;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 32
    .line 33
    const-class p2, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mPanelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 42
    .line 43
    const-class p2, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 52
    .line 53
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    .line 54
    .line 55
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 56
    .line 57
    const v1, 0x7f140570

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, v0}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sub-int/2addr v3, v0

    .line 27
    if-gez v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 32
    .line 33
    if-ne v0, v2, :cond_2

    .line 34
    .line 35
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    .line 36
    .line 37
    if-eq v1, v0, :cond_3

    .line 38
    .line 39
    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    .line 40
    .line 41
    iput v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 11
    .line 12
    const v0, 0x7f070ef8

    .line 13
    .line 14
    .line 15
    const v1, 0x3f4ccccd    # 0.8f

    .line 16
    .line 17
    .line 18
    const v2, 0x3fa66666    # 1.3f

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0879

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x7f0a087c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 23
    .line 24
    const v0, 0x7f0a047a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 34
    .line 35
    const v0, 0x7f0a047b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a0477

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    .line 54
    .line 55
    const v0, 0x7f0a0821

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    const/high16 v1, 0x40000

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 83
    .line 84
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const v2, 0x7f060504

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 108
    .line 109
    const v1, 0x7f070ef8

    .line 110
    .line 111
    .line 112
    const v2, 0x3f4ccccd    # 0.8f

    .line 113
    .line 114
    .line 115
    const v3, 0x3fa66666    # 1.3f

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mPanelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v0, v3

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "mExpanded: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, ", beAbleToListen: "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v4, "SecQuickStatusBarHeaderView"

    .line 54
    .line 55
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnInterceptTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    return v3

    .line 61
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateContentsPadding()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET_TOP_MARGIN:Z

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const v4, 0x7f0711a0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sub-int/2addr v2, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    .line 19
    .line 20
    .line 21
    return-void
.end method
