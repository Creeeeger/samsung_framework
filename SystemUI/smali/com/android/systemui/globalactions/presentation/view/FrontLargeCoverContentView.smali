.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# instance fields
.field public mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

.field public mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field public mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWindowContext:Landroid/content/Context;

.field public final mDialog:Landroid/app/Presentation;

.field public final mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field public mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

.field public mForceDismiss:Z

.field public final mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public final mIsCameraViewCover:Z

.field public final mIsIconOnly:Z

.field public mIsSecureConfirming:Z

.field public mIsWhiteTheme:Z

.field public mLastFoldedState:Z

.field public mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

.field public mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p8, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 5
    .line 6
    invoke-direct {p8, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    .line 7
    .line 8
    .line 9
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 10
    .line 11
    const-string p8, "display"

    .line 12
    .line 13
    invoke-virtual {p1, p8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p8

    .line 17
    check-cast p8, Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p8, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/16 v3, 0x96b

    .line 28
    .line 29
    invoke-virtual {p1, v1, v3, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mCoverWindowContext:Landroid/content/Context;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mCoverWindowContext:Landroid/content/Context;

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mCoverWindowContext:Landroid/content/Context;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 47
    .line 48
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 51
    .line 52
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 53
    .line 54
    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 55
    .line 56
    sget-object p2, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLastFoldedState:Z

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsSecureConfirming:Z

    .line 64
    .line 65
    sget-object p3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 66
    .line 67
    invoke-interface {p4, p3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iput-boolean p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    .line 72
    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    const-string p3, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 76
    .line 77
    invoke-virtual {p8, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    array-length p4, p3

    .line 82
    if-lez p4, :cond_1

    .line 83
    .line 84
    aget-object v2, p3, p2

    .line 85
    .line 86
    :cond_1
    if-eqz v2, :cond_5

    .line 87
    .line 88
    new-instance p2, Landroid/app/Presentation;

    .line 89
    .line 90
    invoke-direct {p2, p1, v2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-string p2, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 97
    .line 98
    invoke-virtual {p8, p2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    array-length p3, p2

    .line 103
    if-le p3, v0, :cond_3

    .line 104
    .line 105
    new-instance p3, Landroid/app/Presentation;

    .line 106
    .line 107
    aget-object p4, p2, v0

    .line 108
    .line 109
    invoke-direct {p3, p1, p4}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 110
    .line 111
    .line 112
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 113
    .line 114
    new-instance p1, Landroid/graphics/Point;

    .line 115
    .line 116
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 117
    .line 118
    .line 119
    aget-object p2, p2, v0

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 122
    .line 123
    .line 124
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 125
    .line 126
    const/16 p2, 0x200

    .line 127
    .line 128
    if-ge p1, p2, :cond_4

    .line 129
    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsIconOnly:Z

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p3, "Failed to get front display. The length of array is : "

    .line 136
    .line 137
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    array-length p2, p2

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string p2, "FrontLargeCoverContentView"

    .line 149
    .line 150
    invoke-virtual {p6, p2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_1
    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    .line 154
    .line 155
    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    .line 159
    .line 160
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    .line 165
    .line 166
    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final forceRequestLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hideConfirm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final hideDialogOnSecureConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsSecureConfirming:Z

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 26
    .line 27
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final initAnimations()V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 16
    .line 17
    move-object v0, v7

    .line 18
    move-object v6, p0

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 23
    .line 24
    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    .line 29
    .line 30
    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mRootView:Landroid/view/ViewGroup;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 35
    .line 36
    invoke-direct {v0, v7, v1, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 40
    .line 41
    return-void
.end method

.method public final initDimens()V
    .locals 0

    .line 1
    return-void
.end method

.method public final initLayouts()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 15
    .line 16
    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const v2, 0x7f1306a4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 52
    .line 53
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    const/16 v3, 0x11

    .line 60
    .line 61
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 84
    .line 85
    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_SIDE_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 86
    .line 87
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 103
    .line 104
    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_VERTICAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 105
    .line 106
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 121
    .line 122
    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_HORIZONTAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 123
    .line 124
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 133
    .line 134
    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    .line 135
    .line 136
    .line 137
    iput-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 140
    .line 141
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 142
    .line 143
    .line 144
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 145
    .line 146
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const/4 v5, 0x2

    .line 153
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 154
    .line 155
    .line 156
    new-instance v4, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;

    .line 157
    .line 158
    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    .line 159
    .line 160
    .line 161
    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 164
    .line 165
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 169
    .line 170
    new-instance v4, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$HorizontalSpaceItemDecoration;

    .line 171
    .line 172
    invoke-direct {v4, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$HorizontalSpaceItemDecoration;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 179
    .line 180
    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;

    .line 181
    .line 182
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 191
    .line 192
    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_COFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 193
    .line 194
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Landroid/view/ViewGroup;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 207
    .line 208
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 209
    .line 210
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsWhiteTheme:Z

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 224
    .line 225
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_SF_EFFECT:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 226
    .line 227
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 234
    .line 235
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_CAPTURED_BLUR:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 236
    .line 237
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_3

    .line 242
    .line 243
    :cond_1
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 253
    .line 254
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createViewInflateStrategy()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_2

    .line 267
    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;

    .line 273
    .line 274
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    .line 275
    .line 276
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;->onInflateView(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    .line 283
    .line 284
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    .line 286
    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1, v3}, Landroid/app/Presentation;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 295
    .line 296
    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    .line 308
    .line 309
    if-eqz v2, :cond_4

    .line 310
    .line 311
    const-wide/16 v2, 0x1770

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_4
    const-wide/16 v2, 0x1388

    .line 315
    .line 316
    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 317
    .line 318
    .line 319
    const-wide/16 v2, 0x0

    .line 320
    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 322
    .line 323
    .line 324
    const/4 v2, -0x3

    .line 325
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 326
    .line 327
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 328
    .line 329
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    const v3, 0x10405b8

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    const/4 v2, 0x3

    .line 344
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const/16 v3, 0x700

    .line 351
    .line 352
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 353
    .line 354
    .line 355
    const/4 v2, 0x0

    .line 356
    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    const-string/jumbo v0, "samsung.android.wallpaper.pause"

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->setWallpaperAction(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const-string/jumbo v0, "samsung.android.wallpaper.resume"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->setWallpaperAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-void
.end method

.method public final setWallpaperAction(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "isFolded"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x11

    .line 26
    .line 27
    invoke-virtual {p0, v1, p1, v0}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 33
    .line 34
    const-string v1, "FrontLargeCoverContentView"

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 39
    .line 40
    const-string/jumbo v2, "show FrontLargeCoverContentView"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 53
    .line 54
    const-string v0, "Failed to show front display dialog - the dialog is null."

    .line 55
    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 4
    .line 5
    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string/jumbo v2, "screen_capture_popup"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    .line 50
    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    .line 60
    .line 61
    check-cast v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
