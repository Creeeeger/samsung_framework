.class public final Lcom/android/systemui/shade/NotificationShadeWindowViewController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mBrightnessMirror:Landroid/view/View;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public mDownEvent:Landroid/view/MotionEvent;

.field public mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field public mExpandAnimationRunning:Z

.field public mExpandingBelowNotch:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public mIsOcclusionTransitionRunning:Z

.field public mIsTrackingBarGesture:Z

.field public final mIsTrackpadCommonEnabled:Z

.field public final mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

.field public final mKeyguardBouncerViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;

.field public final mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

.field public final mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

.field public mPluginLockTouchArea:Z

.field public mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

.field public final mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

.field public mSecKeyguardStatusViewTouchArea:Z

.field public final mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public mTouchActive:Z

.field public mTouchCancelled:Z

.field public mTouchedOnEmptyArea:Z

.field public final mView:Lcom/android/systemui/shade/NotificationShadeWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ljava/util/Optional;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/flags/FeatureFlags;Ljavax/inject/Provider;Lcom/android/systemui/util/time/SystemClock;Ljavax/inject/Provider;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/shade/NotificationShadeWindowView;",
            "Lcom/android/systemui/shade/NotificationPanelViewController;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/keyguard/SecLockIconViewController;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/statusbar/NotificationInsetsController;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/shade/PulsingGestureListener;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;",
            "Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move-object/from16 v3, p8

    .line 6
    .line 7
    move-object/from16 v4, p15

    .line 8
    .line 9
    move-object/from16 v5, p16

    .line 10
    .line 11
    move-object/from16 v6, p22

    .line 12
    .line 13
    move-object/from16 v7, p23

    .line 14
    .line 15
    move-object/from16 v8, p25

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 22
    .line 23
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsOcclusionTransitionRunning:Z

    .line 24
    .line 25
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchedOnEmptyArea:Z

    .line 26
    .line 27
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPluginLockTouchArea:Z

    .line 28
    .line 29
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSecKeyguardStatusViewTouchArea:Z

    .line 30
    .line 31
    new-instance v9, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v9, p0}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    .line 34
    .line 35
    .line 36
    iput-object v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    move-object/from16 v10, p3

    .line 39
    .line 40
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 41
    .line 42
    move-object/from16 v10, p4

    .line 43
    .line 44
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 45
    .line 46
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 47
    .line 48
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 49
    .line 50
    move-object/from16 v10, p9

    .line 51
    .line 52
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 53
    .line 54
    move-object/from16 v10, p10

    .line 55
    .line 56
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 57
    .line 58
    move-object/from16 v10, p7

    .line 59
    .line 60
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 61
    .line 62
    move-object/from16 v10, p11

    .line 63
    .line 64
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 65
    .line 66
    move-object/from16 v10, p12

    .line 67
    .line 68
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 69
    .line 70
    move-object/from16 v10, p13

    .line 71
    .line 72
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 73
    .line 74
    move-object/from16 v10, p14

    .line 75
    .line 76
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    .line 77
    .line 78
    invoke-virtual/range {p14 .. p14}, Lcom/android/systemui/util/ViewController;->init()V

    .line 79
    .line 80
    .line 81
    iput-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 82
    .line 83
    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 84
    .line 85
    move-object/from16 v10, p18

    .line 86
    .line 87
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 88
    .line 89
    move-object/from16 v10, p20

    .line 90
    .line 91
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 92
    .line 93
    move-object/from16 v10, p19

    .line 94
    .line 95
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 96
    .line 97
    sget-object v10, Lcom/android/systemui/flags/Flags;->TRACKPAD_GESTURE_COMMON:Lcom/android/systemui/flags/ReleasedFlag;

    .line 98
    .line 99
    move-object/from16 v11, p26

    .line 100
    .line 101
    check-cast v11, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 102
    .line 103
    invoke-virtual {v11, v10}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    iput-boolean v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackpadCommonEnabled:Z

    .line 108
    .line 109
    sget-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 110
    .line 111
    if-eqz v10, :cond_0

    .line 112
    .line 113
    move-object v10, p2

    .line 114
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 115
    .line 116
    :cond_0
    const v10, 0x7f0a01ae

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    .line 124
    .line 125
    new-instance v10, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;

    .line 126
    .line 127
    invoke-direct {v10, v3}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;-><init>(Landroid/view/ViewGroup;)V

    .line 128
    .line 129
    .line 130
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardBouncerViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 131
    .line 132
    iput-object v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    .line 133
    .line 134
    iput-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    .line 135
    .line 136
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-nez v10, :cond_3

    .line 141
    .line 142
    sget-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    .line 143
    .line 144
    if-eqz v10, :cond_1

    .line 145
    .line 146
    new-instance v11, Lcom/android/keyguard/KeyguardBouncerContainer;

    .line 147
    .line 148
    invoke-virtual/range {p8 .. p8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-direct {v11, v12, v4, v2}, Lcom/android/keyguard/KeyguardBouncerContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    const v2, 0x7f0a050e

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object v11, v2

    .line 164
    check-cast v11, Landroid/widget/FrameLayout;

    .line 165
    .line 166
    :goto_0
    if-eqz v10, :cond_2

    .line 167
    .line 168
    move-object v2, v4

    .line 169
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 170
    .line 171
    iput-object v11, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    .line 172
    .line 173
    move-object v2, v5

    .line 174
    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 177
    .line 178
    invoke-virtual {v2, v11}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->addBouncer(Landroid/view/ViewGroup;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    invoke-static {v11, v6, v8, v7}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    move-object/from16 v2, p24

    .line 185
    .line 186
    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 187
    .line 188
    invoke-static {v3, v2, v9}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;)V

    .line 189
    .line 190
    .line 191
    move-object/from16 v2, p28

    .line 192
    .line 193
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 194
    .line 195
    sget-object v2, Lcom/android/systemui/compose/ComposeFacade;->INSTANCE:Lcom/android/systemui/compose/ComposeFacade;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v4, "onRootViewAttached :: "

    .line 206
    .line 207
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p8 .. p8}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v4, "LStar|PluginLockStarManager"

    .line 222
    .line 223
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iput-object v3, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRootView:Landroid/view/ViewGroup;

    .line 227
    .line 228
    const v2, 0x7f0a05e4

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Landroid/view/ViewStub;

    .line 236
    .line 237
    iput-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    .line 238
    .line 239
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    const-string v3, "PluginLockStar"

    .line 245
    .line 246
    invoke-static {v2, v3, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    .line 250
    .line 251
    if-nez v2, :cond_4

    .line 252
    .line 253
    const-string v2, "Illegal Access. view stub is null"

    .line 254
    .line 255
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :cond_4
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 259
    .line 260
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 264
    .line 265
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 269
    .line 270
    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    .line 274
    .line 275
    if-eqz v2, :cond_5

    .line 276
    .line 277
    const-string v3, "com.samsung.systemui.action.PLUGIN_LOCK_STAR"

    .line 278
    .line 279
    const-class v4, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 280
    .line 281
    const/4 v5, 0x0

    .line 282
    const/4 v6, 0x1

    .line 283
    move-object p2, v2

    .line 284
    move-object/from16 p3, v3

    .line 285
    .line 286
    move-object/from16 p4, p1

    .line 287
    .line 288
    move-object/from16 p5, v4

    .line 289
    .line 290
    move/from16 p6, v5

    .line 291
    .line 292
    move/from16 p7, v6

    .line 293
    .line 294
    invoke-interface/range {p2 .. p7}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    .line 295
    .line 296
    .line 297
    :cond_5
    const-class v1, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 298
    .line 299
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 304
    .line 305
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 306
    .line 307
    return-void
.end method


# virtual methods
.method public final cancelCurrentTouch()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackpadCommonEnabled:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    move-wide v2, v4

    .line 44
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/16 v2, 0x1002

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 59
    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 62
    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    .line 70
    .line 71
    :cond_2
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 73
    .line 74
    return-void
.end method

.method public setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpandAnimationRunning(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 12
    .line 13
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
