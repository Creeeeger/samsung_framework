.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$2:F

    .line 9
    .line 10
    iput p4, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$3:F

    .line 11
    .line 12
    iput p5, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$4:F

    .line 13
    .line 14
    iput p6, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$1:F

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$2:F

    .line 6
    .line 7
    iget v3, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$3:F

    .line 8
    .line 9
    iget v4, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$4:F

    .line 10
    .line 11
    iget v5, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$5:I

    .line 12
    .line 13
    iget p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$6:I

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 16
    .line 17
    iget-boolean v6, v0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iget-object v6, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 24
    .line 25
    iget-boolean v7, v6, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x1

    .line 29
    if-eqz v7, :cond_3

    .line 30
    .line 31
    iget v7, v6, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    .line 32
    .line 33
    cmpl-float v10, v1, v7

    .line 34
    .line 35
    if-lez v10, :cond_1

    .line 36
    .line 37
    iget v10, v6, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 38
    .line 39
    if-eqz v10, :cond_2

    .line 40
    .line 41
    :cond_1
    cmpg-float v7, v1, v7

    .line 42
    .line 43
    if-gez v7, :cond_3

    .line 44
    .line 45
    iget v7, v6, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 46
    .line 47
    if-ne v7, v9, :cond_3

    .line 48
    .line 49
    :cond_2
    iput-boolean v8, v6, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    .line 50
    .line 51
    iput v1, v6, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    .line 52
    .line 53
    :cond_3
    iput v1, v6, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    .line 54
    .line 55
    iput v2, v6, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchY:F

    .line 56
    .line 57
    iput v3, v6, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityX:F

    .line 58
    .line 59
    iput v4, v6, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityY:F

    .line 60
    .line 61
    if-nez v5, :cond_4

    .line 62
    .line 63
    iget-boolean p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 64
    .line 65
    if-nez p0, :cond_10

    .line 66
    .line 67
    iput-boolean v9, v0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_4
    const/4 v3, 0x2

    .line 72
    const/4 v4, 0x3

    .line 73
    if-ne v5, v3, :cond_c

    .line 74
    .line 75
    iget-boolean v3, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 76
    .line 77
    const-string v5, "ShellBackPreview"

    .line 78
    .line 79
    if-nez v3, :cond_9

    .line 80
    .line 81
    iget-boolean v7, v0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    .line 82
    .line 83
    if-eqz v7, :cond_9

    .line 84
    .line 85
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 86
    .line 87
    if-eqz v7, :cond_5

    .line 88
    .line 89
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const v10, 0x46dd5950

    .line 100
    .line 101
    .line 102
    const-string v11, "initAnimation mMotionStarted=%b"

    .line 103
    .line 104
    invoke-static {v7, v10, v4, v11, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-boolean v3, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 108
    .line 109
    if-nez v3, :cond_6

    .line 110
    .line 111
    iget-object v3, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    :cond_6
    const-string v3, "Animation is being initialized but is already started."

    .line 116
    .line 117
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    .line 121
    .line 122
    .line 123
    :cond_7
    iput v1, v6, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    .line 124
    .line 125
    iput v2, v6, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchY:F

    .line 126
    .line 127
    iput p0, v6, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 128
    .line 129
    iput v1, v6, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    .line 130
    .line 131
    iput-boolean v9, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 132
    .line 133
    :try_start_0
    iget-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 134
    .line 135
    iget-object v1, v0, Lcom/android/wm/shell/back/BackAnimationController;->mNavigationObserver:Landroid/os/RemoteCallback;

    .line 136
    .line 137
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_8

    .line 144
    .line 145
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_8
    const/4 v2, 0x0

    .line 149
    :goto_0
    invoke-interface {p0, v1, v2}, Landroid/app/IActivityTaskManager;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    iput-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController;->onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_0
    move-exception p0

    .line 160
    const-string v1, "Failed to initAnimation"

    .line 161
    .line 162
    invoke-static {v5, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    .line 166
    .line 167
    .line 168
    :goto_1
    iput-boolean v8, v0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    .line 169
    .line 170
    :cond_9
    iget-boolean p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 171
    .line 172
    if-eqz p0, :cond_10

    .line 173
    .line 174
    iget-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 175
    .line 176
    if-eqz p0, :cond_10

    .line 177
    .line 178
    iget-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 179
    .line 180
    if-nez p0, :cond_a

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_a
    invoke-virtual {v6}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 188
    .line 189
    if-nez v0, :cond_b

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_b
    :try_start_1
    invoke-interface {v0, p0}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catch_1
    move-exception p0

    .line 197
    const-string v0, "dispatchOnBackProgressed error: "

    .line 198
    .line 199
    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_c
    if-eq v5, v9, :cond_d

    .line 204
    .line 205
    if-ne v5, v4, :cond_10

    .line 206
    .line 207
    :cond_d
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 208
    .line 209
    if-eqz p0, :cond_e

    .line 210
    .line 211
    int-to-long v1, v5

    .line 212
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 213
    .line 214
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const v2, -0x2363b9cd

    .line 223
    .line 224
    .line 225
    const-string v3, "Finishing gesture with event action: %d"

    .line 226
    .line 227
    invoke-static {p0, v2, v9, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_e
    if-ne v5, v4, :cond_f

    .line 231
    .line 232
    iput-boolean v8, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    .line 233
    .line 234
    :cond_f
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/back/BackAnimationController;->onGestureFinished(Z)V

    .line 235
    .line 236
    .line 237
    :cond_10
    :goto_2
    return-void
.end method
