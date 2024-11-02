.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# instance fields
.field public mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

.field public mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field public mBackButton:Landroid/widget/ImageView;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mDialog:Landroid/app/Presentation;

.field public mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

.field public mForceDismiss:Z

.field public final mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public final mIsCameraViewCover:Z

.field public final mIsIconOnly:Z

.field public mIsSecureConfirming:Z

.field public mLastFoldedState:Z

.field public mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

.field public mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    .line 5
    .line 6
    invoke-direct {p7, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    .line 7
    .line 8
    .line 9
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 22
    .line 23
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 24
    .line 25
    sget-object p2, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLastFoldedState:Z

    .line 31
    .line 32
    const/4 p4, 0x0

    .line 33
    iput-boolean p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsSecureConfirming:Z

    .line 34
    .line 35
    sget-object p6, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 36
    .line 37
    invoke-interface {p3, p6}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    iput-boolean p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    .line 42
    .line 43
    const-string p6, "display"

    .line 44
    .line 45
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p6

    .line 49
    check-cast p6, Landroid/hardware/display/DisplayManager;

    .line 50
    .line 51
    const/4 p7, 0x0

    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    const-string p2, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 55
    .line 56
    invoke-virtual {p6, p2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    array-length p3, p2

    .line 61
    if-lez p3, :cond_0

    .line 62
    .line 63
    aget-object p7, p2, p4

    .line 64
    .line 65
    :cond_0
    if-eqz p7, :cond_4

    .line 66
    .line 67
    new-instance p2, Landroid/app/Presentation;

    .line 68
    .line 69
    invoke-direct {p2, p1, p7}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string p3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 76
    .line 77
    invoke-virtual {p6, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    array-length p4, p3

    .line 82
    if-le p4, p2, :cond_2

    .line 83
    .line 84
    new-instance p4, Landroid/app/Presentation;

    .line 85
    .line 86
    aget-object p5, p3, p2

    .line 87
    .line 88
    invoke-direct {p4, p1, p5}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 89
    .line 90
    .line 91
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 92
    .line 93
    new-instance p1, Landroid/graphics/Point;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 96
    .line 97
    .line 98
    aget-object p3, p3, p2

    .line 99
    .line 100
    invoke-virtual {p3, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 101
    .line 102
    .line 103
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 104
    .line 105
    const/16 p3, 0x200

    .line 106
    .line 107
    if-ge p1, p3, :cond_3

    .line 108
    .line 109
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p2, "Failed to get front display. The length of array is : "

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    array-length p2, p3

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string p2, "FrontCoverContentView"

    .line 128
    .line 129
    invoke-virtual {p5, p2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    .line 138
    .line 139
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    .line 144
    .line 145
    invoke-virtual {p1, p0, p7}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hideConfirm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsSecureConfirming:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final initAnimations()V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 16
    .line 17
    move-object v0, v7

    .line 18
    move-object v6, p0

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    .line 23
    .line 24
    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 29
    .line 30
    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 35
    .line 36
    invoke-direct {v0, v7, v1, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

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
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 51
    .line 52
    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_SIDE_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 53
    .line 54
    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    move v2, v3

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 v2, 0x2

    .line 93
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    .line 97
    .line 98
    const/16 v2, 0x11

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 106
    .line 107
    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_COFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 108
    .line 109
    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/view/ViewGroup;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 122
    .line 123
    const v2, 0x7f0a0426

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/widget/ImageView;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mBackButton:Landroid/widget/ImageView;

    .line 133
    .line 134
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    .line 135
    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    .line 139
    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mBackButton:Landroid/widget/ImageView;

    .line 147
    .line 148
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    :goto_1
    const/16 v2, 0x8

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v1, -0x1

    .line 167
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    .line 169
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    .line 187
    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    const-wide/16 v2, 0x1770

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    const-wide/16 v2, 0x1388

    .line 194
    .line 195
    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 196
    .line 197
    .line 198
    const-wide/16 v2, 0x0

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    const v2, 0x10405b8

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

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
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

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
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 2
    .line 3
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 2
    .line 3
    const-string v1, "FrontCoverContentView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 8
    .line 9
    const-string/jumbo v2, "show FrontCoverContentView"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 22
    .line 23
    const-string v0, "Failed to show front display dialog - the dialog is null."

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string/jumbo v2, "power"

    .line 30
    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string/jumbo v2, "restart"

    .line 43
    .line 44
    .line 45
    if-ne v1, v2, :cond_0

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

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
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    .line 60
    .line 61
    check-cast v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
