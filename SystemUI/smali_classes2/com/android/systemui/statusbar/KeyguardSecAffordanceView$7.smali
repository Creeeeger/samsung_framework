.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 7
    .line 8
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    iput-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 25
    .line 26
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 27
    .line 28
    .line 29
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 30
    .line 31
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    div-float/2addr v6, v5

    .line 39
    float-to-int v5, v6

    .line 40
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const/16 v8, 0xbe

    .line 53
    .line 54
    invoke-virtual {v7, v8, v6, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastCameraLaunchSource:I

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    if-ne v9, v8, :cond_1

    .line 62
    .line 63
    const/16 v8, 0xbd

    .line 64
    .line 65
    invoke-virtual {v7, v8, v6, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->launchAffordance(Z)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iput v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    .line 76
    .line 77
    const-class v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 86
    .line 87
    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    .line 88
    .line 89
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    iget-object p1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 96
    .line 97
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 100
    .line 101
    check-cast p1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 102
    .line 103
    const/16 v5, 0x3eb

    .line 104
    .line 105
    const-wide/16 v6, 0x1388

    .line 106
    .line 107
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->sendMessageDelayed(IJ)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object p1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 111
    .line 112
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 113
    .line 114
    if-nez p1, :cond_4

    .line 115
    .line 116
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 121
    .line 122
    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    .line 123
    .line 124
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNoUnlockNeeded(I)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    iget-object p1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset()V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 136
    .line 137
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 138
    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 142
    .line 143
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 149
    .line 150
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 153
    .line 154
    iput-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    .line 155
    .line 156
    iput-boolean v3, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 157
    .line 158
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 159
    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 163
    .line 164
    .line 165
    iput-object v4, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 166
    .line 167
    :cond_6
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 168
    .line 169
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    .line 170
    .line 171
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 172
    .line 173
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    .line 178
    .line 179
    .line 180
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 185
    .line 186
    iget v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    xor-int/2addr v0, v3

    .line 193
    iput-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 196
    .line 197
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    .line 198
    .line 199
    return-void
.end method
