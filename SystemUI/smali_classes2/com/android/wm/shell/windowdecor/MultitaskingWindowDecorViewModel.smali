.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/freeform/AdjustImeStateController;


# instance fields
.field public mAddedDisplayId:I

.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mAnimatedBounds:Landroid/graphics/Rect;

.field public final mContext:Landroid/content/Context;

.field public final mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mFixedRotatingDisplayIds:Landroid/util/ArraySet;

.field public final mImeAdjustedTargetBounds:Landroid/graphics/Rect;

.field public mIsPinned:Z

.field public mIsTranslucent:Z

.field public final mKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;

.field public mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

.field public mLastImmersiveTaskId:I

.field public final mMainChoreographer:Landroid/view/Choreographer;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNSController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public mPinTaskId:I

.field public final mPipOptional:Ljava/util/Optional;

.field public final mRotationController:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0;

.field public mSettingsObserver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTransitionToTaskInfo:Ljava/util/Map;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorByTaskId:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/high16 v3, 0x10000000

    .line 23
    .line 24
    and-int/2addr v2, v3

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    and-int/2addr v2, v3

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v2, 0x5

    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 49
    .line 50
    if-ne p1, v3, :cond_4

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 p2, 0x3

    .line 57
    if-ne p1, p2, :cond_4

    .line 58
    .line 59
    if-eq v1, v3, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    if-ne v1, v3, :cond_4

    .line 85
    .line 86
    :cond_3
    :goto_0
    move v0, v3

    .line 87
    :cond_4
    :goto_1
    return v0
.end method

.method public static -$$Nest$mupdateColorThemeState(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "wallpapertheme_state"

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v4, "wallpapertheme_color"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    :cond_1
    sget-boolean v4, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    .line 37
    .line 38
    if-eq v4, v1, :cond_2

    .line 39
    .line 40
    sput-boolean v1, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    .line 41
    .line 42
    move v4, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v3

    .line 45
    :goto_1
    if-eqz v4, :cond_3

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v5, "updateColorThemeState: enabled="

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "MultitaskingWindowDecorViewModel"

    .line 63
    .line 64
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_3
    sget-object v1, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_COLOR:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    sput-object v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_COLOR:Ljava/lang/String;

    .line 76
    .line 77
    move v3, v2

    .line 78
    :cond_4
    if-eqz v3, :cond_5

    .line 79
    .line 80
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 81
    .line 82
    invoke-direct {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void
.end method

.method public static -$$Nest$mupdateFullscreenHandlerState(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "multi_window_menu_in_full_screen"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    sget-boolean v3, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    .line 21
    .line 22
    if-eq v3, v0, :cond_1

    .line 23
    .line 24
    sput-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    .line 25
    .line 26
    move v2, v1

    .line 27
    :cond_1
    if-eqz v2, :cond_5

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v3, "updateFullscreenHandlerState: enabled="

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "MultitaskingWindowDecorViewModel"

    .line 45
    .line 46
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleTaskAppearedInfos()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroid/window/TaskAppearedInfo;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-ne v8, v1, :cond_2

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_2

    .line 112
    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v9, "onFullscreenHandlerEnabled: show, t# "

    .line 116
    .line 117
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {p0, v6, v5, v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 138
    .line 139
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 144
    .line 145
    if-eqz v5, :cond_2

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda4;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 176
    .line 177
    if-ltz v1, :cond_5

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 184
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v5, "onFullscreenHandlerDisabled: remove, "

    .line 188
    .line 189
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 203
    .line 204
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/util/Optional;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellController;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;",
            "Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p5

    .line 4
    move-object v3, p6

    .line 5
    move-object/from16 v4, p8

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v5, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v5, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v5, Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    .line 30
    .line 31
    new-instance v5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;

    .line 32
    .line 33
    invoke-direct {v5, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 34
    .line 35
    .line 36
    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;

    .line 37
    .line 38
    new-instance v6, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mImeAdjustedTargetBounds:Landroid/graphics/Rect;

    .line 44
    .line 45
    new-instance v6, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTmpRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    iput-boolean v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 54
    .line 55
    const/4 v7, -0x1

    .line 56
    iput v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPinTaskId:I

    .line 57
    .line 58
    iput v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    .line 59
    .line 60
    iput-boolean v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsTranslucent:Z

    .line 61
    .line 62
    new-instance v6, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAnimatedBounds:Landroid/graphics/Rect;

    .line 68
    .line 69
    iput v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 70
    .line 71
    new-instance v6, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v6, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 74
    .line 75
    .line 76
    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mRotationController:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    move-object v7, p2

    .line 81
    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 82
    .line 83
    move-object v7, p3

    .line 84
    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    .line 85
    .line 86
    move-object v7, p4

    .line 87
    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 88
    .line 89
    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 90
    .line 91
    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 92
    .line 93
    sget-boolean v7, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 94
    .line 95
    if-nez v7, :cond_0

    .line 96
    .line 97
    new-instance v7, Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-direct {v7, v8, p1, p6, v4}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;)V

    .line 101
    .line 102
    .line 103
    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 104
    .line 105
    :cond_0
    move-object/from16 v1, p7

    .line 106
    .line 107
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 108
    .line 109
    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 110
    .line 111
    move-object/from16 v1, p9

    .line 112
    .line 113
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 114
    .line 115
    move-object/from16 v1, p10

    .line 116
    .line 117
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPipOptional:Ljava/util/Optional;

    .line 118
    .line 119
    move-object/from16 v1, p11

    .line 120
    .line 121
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mNSController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 122
    .line 123
    move-object/from16 v1, p13

    .line 124
    .line 125
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 126
    .line 127
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 128
    .line 129
    if-eqz v1, :cond_1

    .line 130
    .line 131
    invoke-virtual {p5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object v1, v2, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 135
    .line 136
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    .line 138
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 142
    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    move-object/from16 v1, p15

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 148
    .line 149
    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_2
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-instance v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2;

    .line 160
    .line 161
    invoke-direct {v2, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerDexTransientDelayListener(Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;)V

    .line 165
    .line 166
    .line 167
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 168
    .line 169
    if-eqz v1, :cond_3

    .line 170
    .line 171
    move-object/from16 v1, p14

    .line 172
    .line 173
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 174
    .line 175
    :cond_3
    return-void
.end method

.method public static canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :cond_2
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    :cond_3
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v0, v2, :cond_4

    .line 49
    .line 50
    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    move v0, v1

    .line 53
    :goto_0
    or-int/2addr p1, v0

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-ne p0, v2, :cond_5

    .line 61
    .line 62
    move v1, v2

    .line 63
    :cond_5
    return v1
.end method

.method public static isExitingPipTask(Lcom/android/wm/shell/pip/Pip;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/android/wm/shell/pip/Pip;->isExitingPipTask(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-static {p1, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    move v0, v3

    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ne p1, v2, :cond_3

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    move v0, v3

    .line 58
    :cond_3
    return v0
.end method


# virtual methods
.method public final asAdjustImeStateController()Lcom/android/wm/shell/freeform/AdjustImeStateController;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final clearImeAdjustedTask()V
    .locals 0

    .line 1
    return-void
.end method

.method public final createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    iget-object v15, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget v1, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    .line 9
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v13, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 27
    .line 28
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    .line 31
    .line 32
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 33
    .line 34
    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 35
    .line 36
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPipOptional:Ljava/util/Optional;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v12, v1

    .line 45
    check-cast v12, Lcom/android/wm/shell/pip/Pip;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object/from16 v16, v1

    .line 54
    .line 55
    check-cast v16, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 56
    .line 57
    move-object v1, v13

    .line 58
    move-object/from16 v5, p1

    .line 59
    .line 60
    move-object/from16 v6, p2

    .line 61
    .line 62
    move-object v0, v13

    .line 63
    move-object/from16 v13, v16

    .line 64
    .line 65
    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/pip/Pip;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 66
    .line 67
    .line 68
    iget v1, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 69
    .line 70
    invoke-virtual {v15, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 74
    .line 75
    const-string v8, "MultitaskingWindowDecorViewModel"

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "MultitaskingWindowDecoration created. taskId="

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", num_remains="

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    move-object v9, v0

    .line 115
    move-object/from16 v0, p0

    .line 116
    .line 117
    iget v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 118
    .line 119
    const/4 v2, -0x1

    .line 120
    if-eq v1, v2, :cond_3

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onDisplayAdded(Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    move-object v9, v0

    .line 128
    move-object/from16 v0, p0

    .line 129
    .line 130
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 131
    .line 132
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 133
    .line 134
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 135
    .line 136
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 137
    .line 138
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 139
    .line 140
    move-object v2, v1

    .line 141
    move-object v4, v9

    .line 142
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/windowdecor/TaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    .line 143
    .line 144
    .line 145
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    invoke-virtual {v9, v14}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->shouldHideHandlerByAppRequest(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    iput-object v1, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 156
    .line 157
    iput-object v1, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    const/4 v6, 0x0

    .line 161
    move-object v1, v9

    .line 162
    move-object/from16 v2, p1

    .line 163
    .line 164
    move-object/from16 v3, p3

    .line 165
    .line 166
    move-object/from16 v4, p4

    .line 167
    .line 168
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setCaptionColor$1()V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, "createWindowDecoration: forceHidden, t#"

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_4
    new-instance v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 195
    .line 196
    invoke-direct {v2, v0, v14, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/TaskPositioner;)V

    .line 197
    .line 198
    .line 199
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 200
    .line 201
    if-eqz v3, :cond_5

    .line 202
    .line 203
    iput-object v2, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 204
    .line 205
    iput-object v2, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 206
    .line 207
    :cond_5
    iput-object v1, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 208
    .line 209
    iput-object v1, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 210
    .line 211
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 212
    .line 213
    iput-object v1, v9, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 214
    .line 215
    iget-object v2, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    iput v2, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    const/4 v6, 0x0

    .line 229
    move-object v1, v9

    .line 230
    move-object/from16 v2, p1

    .line 231
    .line 232
    move-object/from16 v3, p3

    .line 233
    .line 234
    move-object/from16 v4, p4

    .line 235
    .line 236
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setCaptionColor$1()V

    .line 240
    .line 241
    .line 242
    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 243
    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 257
    .line 258
    .line 259
    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    .line 260
    .line 261
    if-eqz v1, :cond_7

    .line 262
    .line 263
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 264
    .line 265
    iget v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->isKeepScreenOn(I)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_7

    .line 272
    .line 273
    iget v1, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 274
    .line 275
    const/4 v2, 0x1

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->onKeepScreenOnChanged(IZ)V

    .line 277
    .line 278
    .line 279
    :cond_7
    invoke-virtual {v9}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateRoundedCornerForSplit()V

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public final destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->close()V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPinTaskId:I

    .line 26
    .line 27
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/window/TaskOrganizer;->togglePinTaskState(I)Z

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 38
    .line 39
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->toggleDisableAllPinButton(IZ)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 47
    .line 48
    if-ne v2, v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->resetLastImmersiveDecoration()V

    .line 51
    .line 52
    .line 53
    :cond_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "MultitaskingWindowDecoration destroyed. taskId="

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ", num_remains="

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ", callers="

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x3

    .line 87
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, "MultitaskingWindowDecorViewModel"

    .line 99
    .line 100
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public final forAllDecorations(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final getImeStartBounds(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 5
    .line 6
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 13
    .line 14
    if-eqz p1, :cond_7

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isMotionAnimating()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    move v2, v3

    .line 52
    :cond_3
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const-string v1, "ime"

    .line 55
    .line 56
    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    iput-boolean v3, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 69
    .line 70
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    cmpl-float v1, v1, v2

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    cmpl-float v0, v0, v2

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_7

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAnimatedBounds:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    :cond_7
    return-void
.end method

.method public final imePositionChanged(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->moveSurface(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    iget-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 37
    .line 38
    if-eq p2, p1, :cond_2

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "on Display Added: displayId= "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "MultitaskingWindowDecorViewModel"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 25
    .line 26
    new-instance p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "on Display removed: displayId= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MultitaskingWindowDecorViewModel"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 21
    .line 22
    if-ne v0, p1, :cond_0

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 26
    .line 27
    new-instance p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-direct {p1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onImePositionChanged(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->imePositionChanged(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onImeStartPositioning(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAnimatedBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTmpRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 34
    .line 35
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAdjustingBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    if-gez p2, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    if-eq v2, v1, :cond_4

    .line 65
    .line 66
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v1, v4

    .line 69
    :goto_2
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->setOriginBounds(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->adjustConfig(Landroid/window/WindowContainerToken;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mImeAdjustedTargetBounds:Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onInit()V
    .locals 2

    .line 1
    const-string v0, "MultitaskingWindowDecorViewModel"

    .line 2
    .line 3
    const-string v1, "onInit"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSettingsObserver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSettingsObserver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onKeepScreenOnChanged(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsKeepScreenOn:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleVisibleState:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x5

    .line 32
    if-eq p1, p2, :cond_2

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsKeepScreenOn:Z

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setHandleAutoHideEnabled(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setHandleAutoHideEnabled(Z)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayoutPositionEnd(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->imePositionChanged(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mImeAdjustedTargetBounds:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v1, v0

    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p3

    .line 34
    move-object v4, p4

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 36
    .line 37
    .line 38
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setCaptionColor$1()V

    .line 43
    .line 44
    .line 45
    :cond_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    iget-object p2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 50
    .line 51
    const/4 p3, 0x1

    .line 52
    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 53
    .line 54
    .line 55
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 60
    .line 61
    const/4 p1, -0x1

    .line 62
    if-eq p0, p1, :cond_5

    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onDisplayAdded(Z)V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_0
    return-void
.end method

.method public final onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onTaskClosing()V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPinTaskId:I

    .line 41
    .line 42
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    .line 44
    if-ne v0, v3, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/window/TaskOrganizer;->togglePinTaskState(I)Z

    .line 49
    .line 50
    .line 51
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 52
    .line 53
    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->toggleDisableAllPinButton(IZ)V

    .line 54
    .line 55
    .line 56
    :cond_3
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v2, p1

    .line 59
    move-object v3, p2

    .line 60
    move-object v4, p3

    .line 61
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 55
    .line 56
    iget v1, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 57
    .line 58
    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    .line 60
    cmpl-float v1, v1, v3

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->resetStashedFreeform(Z)V

    .line 75
    .line 76
    .line 77
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 82
    .line 83
    const/4 v3, -0x1

    .line 84
    if-eq v1, v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onDisplayAdded(Z)V

    .line 87
    .line 88
    .line 89
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 90
    .line 91
    if-eqz v1, :cond_c

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isMotionOrBoundsAnimating()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_c

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 100
    .line 101
    iget-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 102
    .line 103
    if-nez v3, :cond_c

    .line 104
    .line 105
    iget-boolean v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    .line 106
    .line 107
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    .line 109
    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    .line 110
    .line 111
    const/4 v5, 0x1

    .line 112
    if-eq v3, v4, :cond_6

    .line 113
    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 117
    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 121
    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    move v3, v5

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    move v3, v2

    .line 127
    :goto_0
    if-nez v3, :cond_6

    .line 128
    .line 129
    new-instance v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 130
    .line 131
    invoke-direct {v3, p0, p1, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/TaskPositioner;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 135
    .line 136
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 137
    .line 138
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    iput v4, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 149
    .line 150
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 151
    .line 152
    if-eqz v1, :cond_6

    .line 153
    .line 154
    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 155
    .line 156
    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 157
    .line 158
    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 159
    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->isAnimating()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_7

    .line 177
    .line 178
    move v1, v5

    .line 179
    goto :goto_1

    .line 180
    :cond_7
    move v1, v2

    .line 181
    :goto_1
    if-nez v1, :cond_a

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->isAnimating()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    move v1, v2

    .line 191
    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-ge v1, v4, :cond_a

    .line 198
    .line 199
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 204
    .line 205
    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 206
    .line 207
    if-eqz v4, :cond_9

    .line 208
    .line 209
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 214
    .line 215
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 216
    .line 217
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 218
    .line 219
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    and-int/lit16 v3, v3, 0x100

    .line 224
    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    move p0, v5

    .line 228
    goto :goto_4

    .line 229
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_a
    :goto_3
    move p0, v2

    .line 233
    :goto_4
    if-eqz p0, :cond_b

    .line 234
    .line 235
    invoke-virtual {v0, p1, v5}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 240
    .line 241
    .line 242
    :goto_5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setCaptionColor$1()V

    .line 243
    .line 244
    .line 245
    :cond_c
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateRoundedCornerForSplit()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    .line 11
    .line 12
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 17
    .line 18
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onTaskOpening()V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final onTaskToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onTaskClosing()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onTaskOpening()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    move v0, p1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    const/4 v5, 0x6

    .line 33
    const/4 v6, 0x1

    .line 34
    if-ge v0, v2, :cond_11

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_1
    iget v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 47
    .line 48
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 53
    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_2
    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 59
    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_4

    .line 67
    .line 68
    iget-boolean v8, v7, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    .line 69
    .line 70
    if-nez v8, :cond_3

    .line 71
    .line 72
    iget-boolean v8, v7, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    .line 73
    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    :cond_3
    iput-boolean p1, v7, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    .line 77
    .line 78
    iput-boolean p1, v7, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 81
    .line 82
    .line 83
    sget-boolean v8, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->SAFE_DEBUG:Z

    .line 84
    .line 85
    if-eqz v8, :cond_4

    .line 86
    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v9, "onTransitionFinished: "

    .line 90
    .line 91
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    const-string v8, "OutlineView"

    .line 102
    .line 103
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 107
    .line 108
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 109
    .line 110
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eq v7, v5, :cond_5

    .line 115
    .line 116
    if-ne v7, v6, :cond_10

    .line 117
    .line 118
    :cond_5
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    .line 119
    .line 120
    .line 121
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 122
    .line 123
    if-eqz v8, :cond_d

    .line 124
    .line 125
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 126
    .line 127
    iget v8, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    .line 128
    .line 129
    if-ne v2, v8, :cond_6

    .line 130
    .line 131
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->updateLastImmersiveDecoration(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 135
    .line 136
    if-eqz v2, :cond_d

    .line 137
    .line 138
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 139
    .line 140
    if-eqz v2, :cond_d

    .line 141
    .line 142
    if-ne v7, v6, :cond_d

    .line 143
    .line 144
    if-eqz v2, :cond_d

    .line 145
    .line 146
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 147
    .line 148
    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 149
    .line 150
    if-nez v7, :cond_7

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 154
    .line 155
    if-nez v8, :cond_9

    .line 156
    .line 157
    new-instance v8, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 158
    .line 159
    iget-object v9, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    .line 161
    iget-object v10, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 162
    .line 163
    iget v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    .line 164
    .line 165
    invoke-direct {v8, v9, v10, v7, v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/View;I)V

    .line 166
    .line 167
    .line 168
    iput-object v8, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 169
    .line 170
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 171
    .line 172
    if-eqz v2, :cond_8

    .line 173
    .line 174
    invoke-virtual {v8, v6}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    .line 175
    .line 176
    .line 177
    iput-boolean p1, v8, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    .line 178
    .line 179
    invoke-virtual {v8}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    invoke-virtual {v8}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_9
    iget-boolean v2, v8, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 188
    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    iget-object v7, v8, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    .line 194
    .line 195
    invoke-virtual {v7, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_a

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    move v2, p1

    .line 203
    goto :goto_2

    .line 204
    :cond_b
    :goto_1
    move v2, v6

    .line 205
    :goto_2
    iget-boolean v7, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 206
    .line 207
    if-eq v2, v7, :cond_d

    .line 208
    .line 209
    if-eqz v7, :cond_c

    .line 210
    .line 211
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 212
    .line 213
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    .line 214
    .line 215
    .line 216
    iput-boolean p1, v2, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_c
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    .line 225
    .line 226
    .line 227
    :cond_d
    :goto_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    .line 228
    .line 229
    if-eqz v2, :cond_10

    .line 230
    .line 231
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    .line 232
    .line 233
    if-eqz v2, :cond_10

    .line 234
    .line 235
    iget v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mWindowingMode:I

    .line 236
    .line 237
    if-ne v2, v5, :cond_e

    .line 238
    .line 239
    sget-boolean v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_e
    if-ne v2, v4, :cond_f

    .line 243
    .line 244
    sget-boolean v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_f
    move v2, p1

    .line 248
    :goto_4
    if-eqz v2, :cond_10

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    if-eqz v2, :cond_10

    .line 255
    .line 256
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-nez v2, :cond_10

    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->showHandleMenu()V

    .line 263
    .line 264
    .line 265
    :cond_10
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 270
    .line 271
    if-eqz v0, :cond_16

    .line 272
    .line 273
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 274
    .line 275
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 276
    .line 277
    .line 278
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 279
    .line 280
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleTaskAppearedInfos()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :cond_12
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-eqz v7, :cond_15

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    check-cast v7, Landroid/window/TaskAppearedInfo;

    .line 306
    .line 307
    invoke-virtual {v7}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    iget v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 312
    .line 313
    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 314
    .line 315
    if-eqz v10, :cond_12

    .line 316
    .line 317
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    if-eq v10, v5, :cond_13

    .line 322
    .line 323
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    if-ne v10, v4, :cond_12

    .line 328
    .line 329
    :cond_13
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    if-nez v10, :cond_12

    .line 334
    .line 335
    invoke-virtual {v7}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-virtual {v10}, Landroid/view/SurfaceControl;->isValid()Z

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    if-eqz v10, :cond_12

    .line 344
    .line 345
    invoke-virtual {p0, v8}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    if-eqz v10, :cond_12

    .line 350
    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v10, "ensureHandlerOnTransitionFinished: show, t# "

    .line 354
    .line 355
    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    const-string v10, "MultitaskingWindowDecorViewModel"

    .line 366
    .line 367
    invoke-static {v10, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p0, v8, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 382
    .line 383
    if-eqz p1, :cond_14

    .line 384
    .line 385
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    .line 386
    .line 387
    .line 388
    :cond_14
    move p1, v6

    .line 389
    goto :goto_6

    .line 390
    :cond_15
    if-eqz p1, :cond_16

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 396
    .line 397
    .line 398
    :cond_16
    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/util/List;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final resetLastImmersiveDecoration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setImmersiveMode(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setNewDexImmersiveCaptionBackground(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 13
    .line 14
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 29
    .line 30
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setWindowDecorViewModel(Ljava/util/Optional;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 16
    .line 17
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRootOrStageRoot(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    .line 39
    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v2, v3

    .line 46
    :goto_1
    return v2

    .line 47
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v4, 0x6

    .line 66
    if-ne v1, v4, :cond_3

    .line 67
    .line 68
    return v3

    .line 69
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-boolean v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isTranslucentTask:Z

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    return v3

    .line 78
    :cond_4
    if-eqz v1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v4, 0x2

    .line 85
    if-ne v1, v4, :cond_6

    .line 86
    .line 87
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    .line 94
    .line 95
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_6

    .line 100
    .line 101
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPipOptional:Ljava/util/Optional;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Lcom/android/wm/shell/pip/Pip;

    .line 112
    .line 113
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->isExitingPipTask(Lcom/android/wm/shell/pip/Pip;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_5

    .line 118
    .line 119
    return v2

    .line 120
    :cond_5
    return v3

    .line 121
    :cond_6
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 122
    .line 123
    if-eqz p0, :cond_7

    .line 124
    .line 125
    invoke-static {p1, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_7

    .line 130
    .line 131
    xor-int/lit8 p0, v0, 0x1

    .line 132
    .line 133
    return p0

    .line 134
    :cond_7
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    const/4 v0, 0x5

    .line 139
    if-eq p0, v0, :cond_9

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-ne p0, v2, :cond_8

    .line 146
    .line 147
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 148
    .line 149
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-ne p0, v0, :cond_8

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    move v2, v3

    .line 159
    :cond_9
    :goto_2
    return v2
.end method

.method public final taskGainFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 22
    .line 23
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->setOriginBounds(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final taskLostFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->moveSurface(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->adjustConfig(Landroid/window/WindowContainerToken;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->reset()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final toggleDisableAllPinButton(IZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x5

    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 35
    .line 36
    if-ne v2, p1, :cond_0

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->changePinButtonDisable(Z)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method public final updateLastImmersiveDecoration(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->resetLastImmersiveDecoration()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v2, v1, :cond_2

    .line 24
    .line 25
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPipOptional:Ljava/util/Optional;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/wm/shell/pip/Pip;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    .line 41
    invoke-static {v2, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->isExitingPipTask(Lcom/android/wm/shell/pip/Pip;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setImmersiveMode(Z)V

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setNewDexImmersiveCaptionBackground(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method
