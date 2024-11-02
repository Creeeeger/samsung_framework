.class public final Lcom/android/wm/shell/shortcut/ShortcutController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mIsNewDexMode:Z

.field public final mKeyEventListener:Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mShortCutPolicyMap:Landroid/util/SparseArray;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            "Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mKeyEventListener:Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 34
    .line 35
    iput-object p6, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 36
    .line 37
    iput-object p7, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 38
    .line 39
    iput-object p8, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final applyMaxOrMinHeight(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string v0, "ShortcutController"

    .line 23
    .line 24
    const-string v1, "applyMinHeightBounds: window decoration view model is not proper type."

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    move v0, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_1
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    check-cast v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 43
    .line 44
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 53
    .line 54
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object v7, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    or-int/2addr v6, v8

    .line 76
    invoke-virtual {v4, v7, v6, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 81
    .line 82
    .line 83
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 84
    .line 85
    iput v4, v7, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    iput v4, v7, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget p1, v7, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 96
    .line 97
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 104
    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    move v4, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    :goto_2
    add-int/2addr v4, p1

    .line 114
    iput v4, v7, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    iget p1, v7, Landroid/graphics/Rect;->bottom:I

    .line 117
    .line 118
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 119
    .line 120
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :goto_3
    sub-int/2addr p1, v3

    .line 136
    iput p1, v7, Landroid/graphics/Rect;->bottom:I

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_5
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    iput p1, v7, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    .line 145
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    .line 146
    .line 147
    if-gez v3, :cond_6

    .line 148
    .line 149
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 150
    .line 151
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 156
    .line 157
    int-to-float v3, v3

    .line 158
    const v4, 0x3bcccccd    # 0.00625f

    .line 159
    .line 160
    .line 161
    mul-float/2addr v3, v4

    .line 162
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    .line 163
    .line 164
    int-to-float v2, v2

    .line 165
    mul-float/2addr v2, v3

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    int-to-float v2, v3

    .line 168
    :goto_4
    float-to-int v2, v2

    .line 169
    add-int/2addr p1, v2

    .line 170
    iput p1, v7, Landroid/graphics/Rect;->bottom:I

    .line 171
    .line 172
    :goto_5
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    return-void

    .line 179
    :cond_7
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 180
    .line 181
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 185
    .line 186
    invoke-virtual {p1, v0, v7}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 187
    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final moveFreeformToSplit(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v2, v1, p1}, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Ljava/util/Optional;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p0, 0x1

    .line 32
    :goto_1
    const-string p1, "1000"

    .line 33
    .line 34
    const-string v0, "From Keyboard shortcut"

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method
