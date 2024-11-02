.class public Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAppliedVIFileName:Ljava/lang/String;

.field public mBoundingRect:Landroid/graphics/Rect;

.field public mCurrentAnimation:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsAnimationPlaying:Z

.field public mIsConfigUpdateNecessary:Z

.field public mLastDisplayDeviceType:I

.field public mLastUpdatedFolderOpened:Z

.field public mLastUpdatedRotation:I

.field public mLastUpdatedScreenHeight:I

.field public mLastUpdatedScreenWidth:I

.field public mLockStarVIView:Landroid/widget/FrameLayout;

.field public mPreparedState:I

.field public mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

.field public mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

.field public mVIView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mViViewLocation:Landroid/graphics/Rect;

.field public final updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-class p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    const-string p1, "KeyguardPunchHoleVIView"

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 9
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    .line 10
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 14
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    .line 15
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 17
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onApplyWindowInsets() return - mVIDirector is null ("

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ")"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBasedOnType:Z

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "circle"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/graphics/Rect;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "BoundingRect = "

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/4 v3, 0x1

    .line 111
    if-ne v2, v3, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const/4 v3, 0x0

    .line 115
    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    :cond_4
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 26
    .line 27
    sget-object v3, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/android/keyguard/punchhole/VIDirector;

    .line 33
    .line 34
    invoke-direct {v3, v0}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v2, v3, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    move-object v1, v3

    .line 46
    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirector;

    .line 59
    .line 60
    invoke-direct {v0, v2}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    move-object v1, v0

    .line 70
    :cond_2
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v2, "onFinishInflate() return - mVIDirector is null ("

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ")"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    const/16 v0, 0x8

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a053e

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 131
    .line 132
    const v0, 0x7f0a05d8

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/FrameLayout;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 142
    .line 143
    return-void
.end method

.method public final setPrepareState(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "setPrepareState() "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 17
    .line 18
    const-string v3, " -> "

    .line 19
    .line 20
    invoke-static {v1, v2, v3, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 24
    .line 25
    return-void
.end method

.method public final updateScreenConfig()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "updateScreenConfig() return - mVIDirector is null ("

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ")"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 61
    .line 62
    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x1

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v3, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    move v3, v5

    .line 76
    :goto_1
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 77
    .line 78
    if-eqz v6, :cond_3

    .line 79
    .line 80
    iget-boolean v6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 81
    .line 82
    if-eq v6, v3, :cond_3

    .line 83
    .line 84
    move v6, v5

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v6, v4

    .line 87
    :goto_2
    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 88
    .line 89
    if-ne v7, v0, :cond_4

    .line 90
    .line 91
    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    .line 92
    .line 93
    if-ne v7, v1, :cond_4

    .line 94
    .line 95
    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    .line 96
    .line 97
    if-ne v7, v2, :cond_4

    .line 98
    .line 99
    if-eqz v6, :cond_9

    .line 100
    .line 101
    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v9, "updateScreenConfig() rotation "

    .line 106
    .line 107
    .line 108
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 112
    .line 113
    const-string v10, " -> "

    .line 114
    .line 115
    const-string v11, ", screen width "

    .line 116
    .line 117
    invoke-static {v8, v9, v10, v0, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    .line 121
    .line 122
    const-string v11, ", screen height "

    .line 123
    .line 124
    invoke-static {v8, v9, v10, v1, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    .line 128
    .line 129
    invoke-static {v8, v9, v10, v2, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 133
    .line 134
    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    .line 135
    .line 136
    iput v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    .line 137
    .line 138
    if-eqz v6, :cond_8

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string/jumbo v2, "updateScreenConfig() isFolderOpened "

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-boolean v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 151
    .line 152
    invoke-static {v1, v2, v10, v3, v0}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput-boolean v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 162
    .line 163
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 166
    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_5

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    move v5, v4

    .line 177
    :goto_3
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 178
    .line 179
    if-eq v1, v5, :cond_6

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->stopVI()V

    .line 182
    .line 183
    .line 184
    iput-boolean v5, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 185
    .line 186
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v1, Lcom/android/keyguard/punchhole/VIDirector;

    .line 196
    .line 197
    invoke-direct {v1, v0}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    iput-boolean v3, v1, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    const/4 v1, 0x0

    .line 210
    :goto_4
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 211
    .line 212
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    .line 225
    .line 226
    iput-boolean v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    .line 227
    .line 228
    :cond_9
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    .line 229
    .line 230
    if-eqz p0, :cond_a

    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->startVI()V

    .line 235
    .line 236
    .line 237
    :cond_a
    return-void
.end method

.method public final updateVILocation()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "updateVILocation() return - mVIDirector is null ("

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ")"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBasedOnType:Z

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_6

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "circle"

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ne v5, v2, :cond_2

    .line 79
    .line 80
    move v5, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v5, v3

    .line 83
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mBoundingRect:Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ne v5, v2, :cond_4

    .line 99
    .line 100
    move v5, v2

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move v5, v3

    .line 103
    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    .line 108
    .line 109
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mViViewLocation:Landroid/graphics/Rect;

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-ne v5, v2, :cond_7

    .line 119
    .line 120
    move v5, v2

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    move v5, v3

    .line 123
    :goto_3
    new-instance v6, Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v7, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 129
    .line 130
    if-ne v4, v2, :cond_8

    .line 131
    .line 132
    iget-object v8, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_8
    const/4 v8, 0x0

    .line 136
    :goto_4
    if-nez v8, :cond_9

    .line 137
    .line 138
    const-string v0, "getVIViewLocation() - return; vi size is not supported, animation = "

    .line 139
    .line 140
    const-string v5, "KeyguardPunchHoleVIView_VIDirector"

    .line 141
    .line 142
    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_9
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/keyguard/punchhole/VIDirector;->setViViewLocation(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v5, :cond_a

    .line 154
    .line 155
    iget v4, v6, Landroid/graphics/Rect;->left:I

    .line 156
    .line 157
    iget v5, v6, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    sub-int/2addr v5, v0

    .line 160
    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    sub-int/2addr v4, v0

    .line 163
    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    :cond_a
    :goto_5
    move-object v0, v6

    .line 166
    :goto_6
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iget-object v5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v7, "updateVILocation() "

    .line 177
    .line 178
    .line 179
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v7, " isBasedOnType = "

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, " rotation = "

    .line 194
    .line 195
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 199
    .line 200
    const-string v7, " -> "

    .line 201
    .line 202
    invoke-static {v6, v1, v7, v4, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iput v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 206
    .line 207
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 208
    .line 209
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 210
    .line 211
    invoke-virtual {v4}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    const/16 v5, 0x5a

    .line 216
    .line 217
    const/4 v6, 0x3

    .line 218
    const/16 v7, 0x10e

    .line 219
    .line 220
    if-eq v4, v2, :cond_c

    .line 221
    .line 222
    if-eq v4, v6, :cond_b

    .line 223
    .line 224
    move v4, v3

    .line 225
    goto :goto_7

    .line 226
    :cond_b
    move v4, v5

    .line 227
    goto :goto_7

    .line 228
    :cond_c
    move v4, v7

    .line 229
    :goto_7
    int-to-float v4, v4

    .line 230
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 234
    .line 235
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 236
    .line 237
    int-to-float v4, v4

    .line 238
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 242
    .line 243
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 244
    .line 245
    int-to-float v4, v4

    .line 246
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-gez v4, :cond_d

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    neg-int v4, v4

    .line 268
    goto :goto_8

    .line 269
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    :goto_8
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 280
    .line 281
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 282
    .line 283
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .line 285
    .line 286
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 287
    .line 288
    iget-object v8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 289
    .line 290
    invoke-virtual {v8}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-eq v8, v2, :cond_f

    .line 295
    .line 296
    if-eq v8, v6, :cond_e

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_e
    move v3, v5

    .line 300
    goto :goto_9

    .line 301
    :cond_f
    move v3, v7

    .line 302
    :goto_9
    int-to-float v2, v3

    .line 303
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 304
    .line 305
    .line 306
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 307
    .line 308
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 309
    .line 310
    int-to-float v3, v3

    .line 311
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 312
    .line 313
    .line 314
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 315
    .line 316
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 317
    .line 318
    int-to-float v0, v0

    .line 319
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 320
    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 323
    .line 324
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    return-void
.end method
